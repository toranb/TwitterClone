using System.Linq;
using NHibernate;
using NHibernate.Linq;
using TwitterClone.HttpSession;
using TwitterClone.Repository.Interfaces;

namespace TwitterClone.Repository
{
    public class HibernateRepository<T> : IHibernateRepository<T> where T : class
    {
        public ISession CurrentSession { get; set; }
        public ITransaction CurrentTransaction { get; set; }

        public T Retrieve(int id)
        {
            if (CurrentSession == null)
            {
                var session = GetSession();

                return session.Get<T>(id);
            }

            return CurrentSession.Get<T>(id);
        }

        public void Save(T entity)
        {
            if (CurrentSession == null)
            {
                var session = GetSession();

                session.SaveOrUpdate(entity);
            }
            else
            {
                CurrentSession.SaveOrUpdate(entity);
            }
        }

        public void Delete(T entity)
        {
            if (CurrentSession == null)
            {
                var session = GetSession();

                session.Delete(entity);
            }
            else
            {
                CurrentSession.Delete(entity);
            }
        }

        public IQueryable<T> RetrieveAll()
        {
            if (CurrentSession == null)
            {
                var session = GetSession();

                var query = from item in session.Linq<T>() select item;

                return query;
            }
            else
            {
                var query = from item in CurrentSession.Linq<T>() select item;

                return query;
            }
        }

        protected virtual ISession GetSession()
        {
            return CommonSessionManager.SessionFactory.GetCurrentSession();
        }
    }
}
