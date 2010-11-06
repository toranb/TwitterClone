using System.Collections.Generic;
using TwitterClone.Entity;
using TwitterClone.Repository.Interfaces;

namespace TwitterClone.Repository
{
    public class PostRepository : HibernateRepository<Post>, IPostRepository
    {
        public void SavePost(Post post)
        {
            Save(post);
        }

        public void DeletePost(Post post)
        {
            Delete(post);
        }

        public Post GetPostById(int id)
        {
            return Retrieve(id);
        }

        public IEnumerable<Post> GetPostCollection()
        {
            return RetrieveAll();
        }
    }
}