using System.Collections.Generic;
using NUnit.Framework;
using TwitterClone.Entity;

namespace TwitterClone.Test.Entity
{
    [TestFixture]
    public class UserFilterPostCollectionTest
    {
        private User user;
        private Post firstPost;

        [SetUp]
        public void Setup()
        {
            user = new User();
            var userToFollow = new User();
            firstPost = new Post { Body = "done!" };
            userToFollow.AddPost(firstPost);
            user.ToggleFollowing(userToFollow); 
        }

        [Test]
        public void ReturnsPostAddedBySomoneUserFollows()
        {
            var unfilteredPosts = new List<Post> {firstPost};

            var posts = user.FilterPostCollectionToDisplayFollowersOnly(unfilteredPosts);

            Assert.That(posts, Has.Member(firstPost));
        }

        [Test]
        public void ReturnsOnlyPostCollectionForFollowers()
        {
            var nextPost = new Post { Body = "wtf" };

            var unfilteredPosts = new List<Post> { firstPost, nextPost };

            var posts = user.FilterPostCollectionToDisplayFollowersOnly(unfilteredPosts);

            Assert.That(posts, Has.Member(firstPost));
            Assert.That(posts, Has.No.Member(nextPost));
        }
    }
}
