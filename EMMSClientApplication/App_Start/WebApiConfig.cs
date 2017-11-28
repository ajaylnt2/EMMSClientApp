using EMMSClientApplication.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace EMMS.WebApplication
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            config.SuppressDefaultHostAuthentication();
            config.Filters.Add(new HostAuthenticationAttribute("bearer"));
            config.Filters.Add(new AuthorizeApi());
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}