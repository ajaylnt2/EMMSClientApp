using EMMS.Business.Interface;
using EMMSClientApplication.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace EMMSClientApplication.Controllers
{
    public class DashboardSettingsController : Controller
    {
        private IPlantSetUpManager plantSetup;
        public DashboardSettingsController(IPlantSetUpManager plantSetup)
        {
            this.plantSetup = plantSetup;
          
        }
        // GET: DashboardSettings
        [CheckUserSession]
        public ActionResult DashBoardSettings()
        {
            ViewBag.Years = new SelectList(plantSetup.GetYearsLists());
            return View();
        }
        protected override void Initialize(RequestContext requestContext)
        {
            if (plantSetup != null)
            {
                if (requestContext.HttpContext.Session["PlantId"] != null && requestContext.HttpContext.Session["UserName"] != null)
                {
                    plantSetup.PlantId = Convert.ToInt32(requestContext.HttpContext.Session["PlantId"]);
                    plantSetup.UserName = requestContext.HttpContext.Session["UserName"].ToString();
                }
                else
                {
                    RedirectToAction("Initiate", "IdPInitiated");
                }

            }
            base.Initialize(requestContext);
        }
    }
}