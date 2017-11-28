using EMMSClientApplication.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EMMSClientApplication.Controllers
{
    public class HomePageController : Controller
    {
        // GET: HomePage
        [CheckUserSession]
        public ActionResult HomePage()
        {
            int plantId = Convert.ToInt32(Session["PlantId"]);
            if (plantId != 0)
            {
                return View();
            }
            else
            {
                return RedirectToAction("PlantList", "Auth");
            }

        }
    }
}