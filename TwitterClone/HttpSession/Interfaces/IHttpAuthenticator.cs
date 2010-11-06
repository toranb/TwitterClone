using System.Web;

namespace TwitterClone.HttpSession.Interfaces
{
    public interface IHttpAuthenticator
    {
        void SetAuthenticationToken(HttpResponseBase response, int userid);
        void ClearAuthenticationToken(HttpResponseBase response);
        int GetIdentityForAuthenticatedUser(HttpRequestBase request);
    }
}