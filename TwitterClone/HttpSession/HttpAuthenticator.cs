using System;
using System.Web;
using TwitterClone.HttpSession.Interfaces;

namespace TwitterClone.HttpSession
{
    public class HttpAuthenticator : IHttpAuthenticator
    {
        public int GetIdentityForAuthenticatedUser(HttpRequestBase request)
        {
            var cookie = request.Cookies["token"];
            if (cookie != null && !string.IsNullOrEmpty(cookie.Value))
                return Convert.ToInt32(cookie.Value);

            return 0;
        }

        public void SetAuthenticationToken(HttpResponseBase response, int userid)
        {
            ClearAuthenticationToken(response);
            response.Cookies.Set(new HttpCookie("token", userid.ToString()));
        }

        public void ClearAuthenticationToken(HttpResponseBase response)
        {
            var cookie = response.Cookies["token"];
            if (cookie != null)
                cookie.Expires = DateTime.Now.AddDays(-1d);
        }
    }
}
