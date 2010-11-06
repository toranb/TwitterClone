using System;
using System.Reflection;
using System.Web;
using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using NHibernate;
using NHibernate.Context;

namespace TwitterClone.HttpSession
{
    public class CommonSessionManager : IHttpModule
    {
        public static ISessionFactory SessionFactory = CreateSessionFactory();

        public void Init(HttpApplication context)
        {
            context.BeginRequest += Application_BeginRequest;
            context.EndRequest += Application_EndRequest;
        }

        private static ISessionFactory CreateSessionFactory()
        {
            var cfg = Fluently.Configure()
                .Database(MsSqlConfiguration.MsSql2005.ConnectionString(c => c.FromConnectionStringWithKey("TwitterClone")))
                .Mappings(m => m.FluentMappings.AddFromAssembly(Assembly.GetExecutingAssembly()))
                .ExposeConfiguration(x => x.SetProperty("current_session_context_class", "web"));

            return cfg.BuildSessionFactory();
        }

        private static void Application_BeginRequest(object sender, EventArgs e)
        {
            var session = SessionFactory.OpenSession();

            session.BeginTransaction();

            CurrentSessionContext.Bind(session);
        }

        private static void Application_EndRequest(object sender, EventArgs e)
        {
            var session = CurrentSessionContext.Unbind(SessionFactory);

            if (session == null) return;

            if (session.Transaction.IsActive)
            {
                try
                {
                    session.Transaction.Commit();
                }
                catch (Exception)
                {
                    session.Transaction.Rollback();
                }
                finally
                {
                    session.Close();
                    session.Dispose();
                }
            }
        }

        public void Dispose() {}
    }
}