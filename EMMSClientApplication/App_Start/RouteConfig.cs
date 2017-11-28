﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace EMMS.WebApplication
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
            "Root",
            "{action}",
            new { controller = "IdPInitiated", action = "Initiate", id = UrlParameter.Optional },
            new { isMethodInHomeController = new RootRouteConstraint<IdPInitiatedController>() }
            );


            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "IdPInitiated", action = "Initiate", id = UrlParameter.Optional }
            );
        }
        public class RootRouteConstraint<T> : IRouteConstraint
        {
            public bool Match(HttpContextBase httpContext, Route route, string parameterName, RouteValueDictionary values, RouteDirection routeDirection)
            {
                var rootMethodNames = typeof(T).GetMethods().Select(x => x.Name.ToLower());
                return rootMethodNames.Contains(values["action"].ToString().ToLower());
            }
        }

    }
}
