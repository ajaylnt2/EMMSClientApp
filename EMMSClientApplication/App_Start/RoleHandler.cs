using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http.Filters;
using System.Web.Mvc;

namespace EMMSClientApplication.App_Start
{ /// <summary>
  /// Attribute for User Sessions
  /// </summary>
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method, Inherited = true, AllowMultiple = false)]
    public class CheckUserSessionAttribute : System.Web.Mvc.ActionFilterAttribute
    {
        public static String LoginUrl { get; set; }
        public delegate bool CheckSessionDelegate(HttpSessionStateBase session);
        public static CheckSessionDelegate CheckSessionAlive;
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            HttpSessionStateBase session = filterContext.HttpContext.Session;
            if ((CheckSessionAlive == null) || (CheckSessionAlive(session)))
                return;
            var url = new UrlHelper(filterContext.RequestContext);
            var loginUrl = url.Content(LoginUrl);
            if (session != null)
            {
                session.RemoveAll();
                session.Clear();
                session.Abandon();
            }

            filterContext.HttpContext.Response.StatusCode = 403;
            filterContext.HttpContext.Response.Redirect(loginUrl, true);
            filterContext.Result = new EmptyResult();
        }
    }


}