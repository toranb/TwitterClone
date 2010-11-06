using System.Collections.Generic;
using System.Linq;
using TwitterClone.Entity;

namespace TwitterClone.Repository.Interfaces
{
    public interface IPostRepository
    {
        void SavePost(Post post);
        void DeletePost(Post post);
        Post GetPostById(int id);
        IEnumerable<Post> GetPostCollection();
    }
}