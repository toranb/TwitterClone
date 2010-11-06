using System;
using System.Linq;
using NUnit.Framework;
using System.Collections.Generic;
using TwitterClone.Entity;

namespace TwitterClone.Test.Entity
{
    [TestFixture]
    public class UserTest
    {
        [Test]
        public void UserHasId()
        {
            var id = 1;
            var user = new User {Id = id};

            Assert.That(user.Id, Is.EqualTo(id));
        }

        [Test]
        public void UserHasHandle()
        {
            var handle = "toranb";
            var user = new User {Handle = handle};

            Assert.That(user.Handle, Is.EqualTo(handle));
        }

        [Test]
        public void UserHasFirstName()
        {
            var firstName = "Toran";
            var user = new User {FirstName = firstName};

            Assert.That(user.FirstName, Is.EqualTo(firstName));
        }

        [Test]
        public void UserHasLastName()
        {
            var lastName = "Billups";
            var user = new User {LastName = lastName};

            Assert.That(user.LastName, Is.EqualTo(lastName));
        }

        [Test]
        public void UserHasFullName()
        {
            var firstName = "Toran";
            var lastName = "Billups";
            var user = new User { FirstName = firstName, LastName = lastName };

            Assert.That(user.FullName, Is.EqualTo("Toran Billups"));
        }

        [Test]
        public void UserHasBio()
        {
            var bio = "Software Professional";
            var user = new User { Bio = bio };

            Assert.That(user.Bio, Is.EqualTo(bio));
        }

        [Test]
        public void UserHasUrl()
        {
            var url = "http://www.google.com";
            var user = new User { Url = url };

            Assert.That(user.Url, Is.EqualTo(url));
        }

        [Test]
        public void UserHasManyPosts()
        {
            var post = new Post {PublishDate = DateTime.Now, Body = "body"};
            var posts = new List<Post> {post};
            var user = new User();
            user.AddPost(post);

            Assert.That(user.Posts, Is.EqualTo(posts));
        }

        [Test]
        public void AddingNullPostDoesNothing()
        {
            var user = new User();
            user.AddPost(null);

            Assert.That(user.Posts.ToList().Count, Is.EqualTo(0));
        }

        [Test]
        public void PostWithValidLengthIsAdded()
        {
            var user = new User();
            var post = new Post { Body = "doh!" };

            user.AddPost(post);

            Assert.That(user.Posts.Count(), Is.EqualTo(1));
        }

        [Test]
        public void WhenPostWithValidLengthIsAddedPostedByIsSetToUser()
        {
            var user = new User { Handle = "toranb" };
            var post = new Post { Body = "doh!" };

            user.AddPost(post);

            Assert.That(user.Posts.FirstOrDefault().PostedBy, Is.EqualTo(user));
        }

        [Test]
        public void PostWithInvalidLengthIsNotAdded()
        {
            var user = new User();
            var post = new Post { Body = "doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh!" };

            user.AddPost(post);

            Assert.That(user.Posts.Count(), Is.EqualTo(0));
        }
    }
}
