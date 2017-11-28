using EMMS.Business.Interface;
using EMMS.DTO;
using EMMSClientApplication.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace EMMSClientApplication.Controllers
{

    public class DailyProductionController : Controller
    {
        private IPlantSetUpManager plantSetup;
   
        // GET: DailyProduction
        public DailyProductionController(IPlantSetUpManager plantSetup)
        {
            this.plantSetup = plantSetup;
        }
        /// <summary>
        /// Daily Production 
        /// </summary>
        /// <returns></returns>
        [CheckUserSession]
        public ActionResult DailyProduction()
        {
            return View();
        }
        /// <summary>
        /// Get Daily Production
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [HttpPost]
        [CheckUserSession]
        public JsonResult GetDailyProduction(string date)
        {
            List<ProductionDaily> prodlist = plantSetup.GetDailyProduction(date);
            return Json(prodlist, JsonRequestBehavior.AllowGet);
        }
        /// <summary>
        /// Get Solid Waste Daily
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [CheckUserSession]
        public JsonResult GetSolidwasteDaily(string date)
        {
            List<ProductionDaily> solidaily = plantSetup.GetSolidWasteDaily(date);
            return Json(solidaily, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        [CheckUserSession]
        public int AddProductonDailydata(List<ProductionDaily> production, string date, double solidWaste)
        {
            //foreach(var item in production)
            //{
            //   var uom = item.UOMId;
            //}

            if (production != null)
            {
                if ((plantSetup.AddProductonDaily(production, date)) && plantSetup.AddSolidwasteDaily(production,solidWaste, date))
                    return 1;
                else
                    return 0;
            }
            return 0;
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