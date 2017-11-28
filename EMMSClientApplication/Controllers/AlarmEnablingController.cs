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
    public class AlarmEnablingController : Controller
    {
        private IPlantSetUpManager plantSetup;
        public AlarmEnablingController(IPlantSetUpManager plantSetup)
        {
            this.plantSetup = plantSetup;
        }
        // GET: AlarmEnabling
        [CheckUserSession]
        public ActionResult AlarmEnabling()
        {
            return View();
        }
        [CheckUserSession]
        public int UpdateAlaramInfo(List<AlarmEnble> alaramInfo)
        {
            if (alaramInfo != null)
            {
                if (plantSetup.UpdateAlarmInfo(alaramInfo))

                    return 1;

                else return 0;
            }
            return 0;
        }
        [CheckUserSession]
        public JsonResult GetAlarmData()
        {
            List<AlarmEnble> alramData = plantSetup.GetAlaramData();
            return Json(alramData, JsonRequestBehavior.AllowGet);
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