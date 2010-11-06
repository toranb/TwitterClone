using System.Web.Mvc;
using System.Web.UI;
using TwitterClone.ActionFilters;
using TwitterClone.Entity;
using TwitterClone.Repository;
using TwitterClone.Repository.Interfaces;

namespace TwitterClone.Controllers
{
    public class PostController : Controller
    {
        private readonly IPostRepository postRepository;

        public PostController() : this(new PostRepository()) {}

        public PostController(IPostRepository postRepository)
        {
            this.postRepository = postRepository;
        }

        [VerifyAuthentication]
        public ViewResult Index(User user)
        {
            var posts = user.FilterPostCollectionToDisplayFollowersOnly(postRepository.GetPostCollection());

            return View(posts);
        }

        [HttpPost]
        [VerifyAuthentication]
        [OutputCache(Location = OutputCacheLocation.None)]
        public ActionResult AddPost(Post post, User user)
        {
            user.AddPost(post);

            return PartialView("FormattedTweet", post);
        }
    }
}
