using System.Web.Mvc;
using TwitterClone.HttpSession;
using TwitterClone.HttpSession.Interfaces;
using TwitterClone.Repository;
using TwitterClone.Repository.Interfaces;

namespace TwitterClone.ActionFilters
{
    public class VerifyAuthentication: ActionFilterAttribute
    {
        private readonly IUserRepository userRepository;
        private readonly IHttpAuthenticator httpAuthenticator;

        public VerifyAuthentication() : this(new UserRepository(), new HttpAuthenticator()) {}

        public VerifyAuthentication(IUserRepository userRepository, IHttpAuthenticator httpAuthenticator)
        {
            this.userRepository = userRepository;
            this.httpAuthenticator = httpAuthenticator;
        }

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            var userid = httpAuthenticator.GetIdentityForAuthenticatedUser(filterContext.HttpContext.Request);

            if (userid > 0) {
                AddAuthenticatedUserInfoToControllerParameters(filterContext, userid);
                base.OnActionExecuting(filterContext);
            }else{
                filterContext.HttpContext.Response.Redirect("~/Login");
            }
        }

        private void AddAuthenticatedUserInfoToControllerParameters(ActionExecutingContext filterContext, int userid)
        {
            var user = userRepository.GetUserById(userid);
            filterContext.ActionParameters["user"] = user;
            filterContext.Controller.ViewData.Add("handle", user.Handle);
        }
    }
}
