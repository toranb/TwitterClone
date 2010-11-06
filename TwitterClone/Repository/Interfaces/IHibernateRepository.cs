using System.Linq;

namespace TwitterClone.Repository.Interfaces
{
    interface IHibernateRepository<T> where T : class
    {
        void Delete(T entity);
        T Retrieve(int id);
        IQueryable<T> RetrieveAll();
        void Save(T entity);
    }
}
