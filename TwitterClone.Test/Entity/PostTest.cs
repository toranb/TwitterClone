using System;
using System.Linq;
using NUnit.Framework;
using TwitterClone.Entity;

namespace TwitterClone.Test.Entity
{
    [TestFixture]
    public class PostTest
    {
        [Test]
        public void PostHasId()
        {
            var id = 1;
            var post = new Post { Id = id };

            Assert.That(post.Id, Is.EqualTo(id));
        }

        [Test]
        public void PostHasPublishDate()
        {
            var now = DateTime.Now;
            var post = new Post {PublishDate = now};

            Assert.That(post.PublishDate, Is.EqualTo(now));
        }

        [Test]
        public void PostHasBody()
        {
            var body = "body";
            var post = new Post {Body = body};

            Assert.That(post.Body, Is.EqualTo(body));
        }

        [Test]
        public void PostHasPostedBy()
        {
            var postedBy = new User {FirstName = "foo"};
            var post = new Post {PostedBy = postedBy};

            Assert.That(post.PostedBy, Is.EqualTo(postedBy));
        }

        [Test]
        public void PostWillAllowForBodyWithLessThan140Characters()
        {
            var body = "doh!";
            var post = new Post { Body = body };

            var valid = post.HasValidLength();

            Assert.That(valid, Is.True);
            Assert.That(post.Errors.ToList().Count, Is.EqualTo(0));
        }

        [Test]
        public void PostWillNotAllowForBodyWithGreaterThan140Characters()
        {
            var body = "doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh! doh!";
            var post = new Post { Body = body };

            var valid = post.HasValidLength();

            Assert.That(valid, Is.False);
            Assert.That(post.Errors.ToList().Count, Is.EqualTo(1));
            Assert.That(post.Errors, Has.Member("Body must be 140 characters or less."));
        }
    }
}
