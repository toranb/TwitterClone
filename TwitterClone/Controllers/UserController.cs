using System;
using System.Linq;
using System.Web.Mvc;
using TwitterClone.ActionFilters;
using TwitterClone.Entity;
using TwitterClone.Repository;
using TwitterClone.Repository.Interfaces;

namespace TwitterClone.Controllers
{
    public class UserController : Controller
    {
        private readonly IUserRepository userRepository;

        public UserController() : this(new UserRepository()) {}

        public UserController(IUserRepository userRepository)
        {
            this.userRepository = userRepository;
        }

        [VerifyAuthentication]
        public ActionResult Details(string id, User user)
        {
            var handle = GetUserHandleFromUri(Request.Url);
            var userToDisplay = userRepository.GetUserByHandle(handle);

            SetIsFollowingFlagForTheView(userToDisplay, user);

            return View(userToDisplay);
        }

        [VerifyAuthentication]
        public ActionResult ToggleFollowing(User user)
        {
            var handle = GetUserHandleFromUri(Request.UrlReferrer);
            var userToFollow = userRepository.GetUserByHandle(handle);

            user.ToggleFollowing(userToFollow);

            return Content("<div></div>", "text/html");
        }

        //these aren't the methods you are looking for :P ** please forgive my technical debt below
        private string GetUserHandleFromUri(Uri uri)
        {
            var z = uri.ToString().Split('/');

            var y = z[z.Count() - 1];
            return y;
        }

        private void SetIsFollowingFlagForTheView(User user, User userz)
        {
            TempData["isFollowing"] = userz.IsFollowing(user);
        }
    }
}
