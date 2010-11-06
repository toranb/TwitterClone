using NUnit.Framework;
using TwitterClone.Entity;

namespace TwitterClone.Test.Entity
{
    [TestFixture]
    public class UserToggleFollowingTest
    {
        [Test]
        public void AddFollowingWhenUserSelectedIsNotAlreadyInTheCollection()
        {
            var user = new User {Handle = "foo"};
            var userToFollow = new User {Handle = "bar"};

            user.ToggleFollowing(userToFollow);

            Assert.That(user.Following, Has.Member(userToFollow));
        }

        [Test]
        public void RemoveFollowingWhenUserSelectedIsAlreadyInTheCollection()
        {
            var user = new ShuntedUser { Handle = "foo" };
            var userToFollow = new User { Handle = "bar" };
            user.AddUserToFollowingCollection(userToFollow);

            user.ToggleFollowing(userToFollow);

            Assert.That(user.Following, Has.No.Member(userToFollow));
        }

        [Test]
        public void RemoveFollowerAfterUserStopsFollowing()
        {
            var user = new ShuntedUser { Handle = "foo" };
            var userToFollow = new User { Handle = "bar" };
            user.AddUserToFollowingCollection(userToFollow);

            user.ToggleFollowing(userToFollow);

            Assert.That(userToFollow.Followers, Has.No.Member(user));
        }
    }

    public class ShuntedUser : User
    {
        public void AddUserToFollowingCollection(User user)
        {
            AddFollowing(user);
        }

        public void AddUserToFollowerCollection(User user)
        {
            AddFollower();
        }
    }
}
