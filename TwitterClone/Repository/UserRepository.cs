using System;
using System.Collections.Generic;
using System.Linq;
using TwitterClone.Entity;
using TwitterClone.Repository.Interfaces;

namespace TwitterClone.Repository
{
    public class UserRepository : HibernateRepository<User>, IUserRepository
    {
        public void SaveUser(User user)
        {
            Save(user);
        }

        public void DeleteUser(User user)
        {
            Delete(user);
        }

        public User GetUserById(int id)
        {
            return Retrieve(id);
        }

        public IEnumerable<User> GetUserCollection()
        {
            return RetrieveAll();
        }

        public User GetUserByHandle(string handle)
        {
            return GetUserCollection().ToList().Where(x => x.Handle == handle).FirstOrDefault();
        }
    }
}