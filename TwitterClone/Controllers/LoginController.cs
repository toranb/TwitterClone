using System.Linq;
using System.Web.Mvc;
using TwitterClone.HttpSession;
using TwitterClone.HttpSession.Interfaces;
using TwitterClone.Repository;
using TwitterClone.Repository.Interfaces;

namespace TwitterClone.Controllers
{
    public class LoginController : Controller
    {
        private readonly IUserRepository userRepository;
        private readonly IHttpAuthenticator httpAuthenticator;

        public LoginController() : this(new UserRepository(), new HttpAuthenticator()) { }

        public LoginController(IUserRepository userRepository, IHttpAuthenticator httpAuthenticator)
        {
            this.userRepository = userRepository;
            this.httpAuthenticator = httpAuthenticator;
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Logout()
        {
            httpAuthenticator.ClearAuthenticationToken(Response);

            return RedirectToAction("Index");
        }

        public ActionResult AuthenticateUser(FormCollection collection)
        {
            var handle = collection["handle"];
            var user = userRepository.GetUserByHandle(handle);

            if (user != null && user.Id > 0)
            {
                httpAuthenticator.SetAuthenticationToken(Response, user.Id);

                return RedirectToAction("Index", "Post");
            }

            return View("Index");
        }
    }
}
