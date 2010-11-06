using System.Collections.Generic;
using System.Linq;
using TwitterClone.Entity;

namespace TwitterClone.Repository.Interfaces
{
    public interface IUserRepository
    {
        void SaveUser(User user);
        void DeleteUser(User user);
        User GetUserById(int id);
        IEnumerable<User> GetUserCollection();
        User GetUserByHandle(string handle);
    }
}