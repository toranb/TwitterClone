using System.Collections.Generic;
using System.Linq;

namespace TwitterClone.Entity
{
    public class User
    {
        public virtual int Id { get; set; }
        public virtual string Handle { get; set; }
        public virtual string FirstName { get; set; }
        public virtual string LastName { get; set; }
        public virtual string Bio { get; set; }
        public virtual string Url { get; set; }
        public virtual string FullName { get { return FirstName + " " + LastName; } }

        private readonly IList<User> followers = new List<User>();
        public virtual IEnumerable<User> Followers { get { return followers; } }

        private readonly IList<User> following = new List<User>();
        public virtual IEnumerable<User> Following { get { return following; } }

        private readonly IList<Post> posts = new List<Post>();
        public virtual IEnumerable<Post> Posts { get { return posts; } }

        public virtual IEnumerable<Post> FilterPostCollectionToDisplayFollowersOnly(IEnumerable<Post> PostCollection)
        {
            return PostCollection.Where(x => Following.Contains(x.PostedBy))
                                 .OrderByDescending(x => x.Id)
                                 .Take(10);
        }

        public virtual void AddPost(Post post)
        {
            if (post == null) return;

            if (!post.HasValidLength()) return;

            post.PostedBy = this;
            posts.Add(post);
        }

        public virtual bool IsFollowing(User user)
        {
            return Following.ToList().Contains(user);
        }

        public virtual void ToggleFollowing(User user)
        {
            if (IsFollowing(user))
            {
                RemoveFollowing(user);
            }
            else
            {
                AddFollowing(user);
            }
        }

        protected virtual void AddFollowing(User user)
        {
            following.Add(user);
            user.AddFollower();
        }

        protected virtual void RemoveFollowing(User user)
        {
            following.Remove(user);
            user.RemoveFollower();
        }

        protected virtual void AddFollower()
        {
            followers.Add(this);
        }

        protected virtual void RemoveFollower()
        {
            followers.Remove(this);
        }
    }
}