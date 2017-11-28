using EMMSClientApplication.App_Start;
using EMMS.Business.Interface;
using EMMS.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.IO;

namespace EMMSClientApplication.Controllers
{
    public class AdminController : Controller
    {
        private IPlantSetUpManager plantSetup;

        public AdminController(IPlantSetUpManager plantSetupdal)
        {

            this.plantSetup = plantSetupdal;

        }
        // GET: Admin
        [CheckUserSession]
        public ActionResult MacIDReg()
        {
            return View();
        }
        [CheckUserSession]
        public ActionResult wagesUOMMapping()
        {
            return View();
        }
        [CheckUserSession]
        public ActionResult adminConfiguration()
        {
            return View();
        }
        [CheckUserSession]
        public ActionResult userRegistration()
        {
            return View();
        }
        [CheckUserSession]
        public ActionResult userPlantMapping()
        {
            return View();
        }
        [HttpGet]
        [CheckUserSession]
        public JsonResult GetEmailAddress()
        {
            List<EmailLst> emailList = plantSetup.GetEmailAddress(Session["EmailiID"].ToString());
            return Json(emailList, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        [CheckUserSession]
        public int SaveEmailAddress(string emailId, int roleId, int Id)
        {

            if (checkForDuplicateMail(Id, emailId))
                return 2;
            if (!string.IsNullOrEmpty(emailId) && plantSetup.AddEmailAddress(emailId, roleId, Id))
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }
        [CheckUserSession]
        public int DeleteEmailAddress(int id)
        {
            if (id != 0)
            {
                plantSetup.DeleteEmailAddress(id);
                return 1;
            }
            else
            {
                return 0;
            }
        }
        [CheckUserSession]
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
        [HttpGet]
        [CheckUserSession]
        public JsonResult GetUserMappingList()
        {
            List<UserMapping> details = plantSetup.GetUserMappingList();
            return Json(details, JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        [CheckUserSession]
        public JsonResult GetEmailListAdmin()
        {
            List<Details> emaildetails = plantSetup.GetEmailListAdmin();
            return Json(emaildetails, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        [CheckUserSession]
        public int DeleteUSerMapping(int userid, int plantId, string emailId)
        {
            try
            {
                int PlantId = Convert.ToInt32(Session["PlantId"]);
                string EmailId = Session["EmailiID"].ToString();
                List<UserMapping> details = plantSetup.GetUserMappingList();
                int recordId = Convert.ToInt32(details.Where(e => e.PlantId == PlantId && e.EmailId== EmailId).Select(e => e.RecordId).FirstOrDefault());

                if (recordId != userid )
                {

                    if (plantSetup.DeleteUserMapping(userid))
                        return 1;
                    else return 0;

                }
                else
                {
                    return 2;
                }
            }
            catch(Exception ex)
            {
                return 0;
            }
        }
     
        [HttpPost]
        [CheckUserSession]
        public int AddUserMapping(int userId, int[] plantid)
        {

            string result = string.Join(",", plantid.Select(item => item));
            if (plantSetup.AddUserMapping(userId, result))
                return 1;
            else return 0;
        }
        [NonAction]
        private bool checkForDuplicateMail(int id, string emailId)
        {
            if (string.IsNullOrEmpty(emailId))
                return true;
            if (id == 0)
            {
                if (plantSetup.GetEmailAddress(Session["EmailiID"].ToString()).Any(s => s.EmailId.ToLower() == emailId.ToLower()))
                    return true;
                else
                    return false;
            }

            else
            {
                string email = plantSetup.GetEmailAddress(Session["EmailiID"].ToString()).Where(s => s.UserId == id).Select(s => s.EmailId).FirstOrDefault().ToString();
                if (emailId.ToLower() != email.ToLower() && plantSetup.GetEmailAddress(Session["EmailiID"].ToString()).Any(s => s.EmailId.ToLower() == emailId.ToLower()))
                    return true;
                else
                    return false;

            }
        }
        public ActionResult DownloadGateway()
        {
            string emailId = Session["EmailiID"].ToString();
            string pId = Session["PlantId"].ToString();
            if (emailId != null && pId != null)
            {
                var FileVirtualPath = "~/Help/GatewayClientUserManual.pdf";
                return File(FileVirtualPath, "application/force-download", Path.GetFileName(FileVirtualPath));
            }
            else
            {
                return RedirectToAction("Initiate", "IdPInitiated");
            }
        }
        public ActionResult DownloadPowerBIMannual()
        {
            string emailId = Session["EmailiID"].ToString();
            string pId = Session["PlantId"].ToString();
            if (emailId != null && pId != null)
            {
                var FileVirtualPath = "~/Help/DashboardUserManual.pdf";
                return File(FileVirtualPath, "application/force-download", Path.GetFileName(FileVirtualPath));
            }
            else
            {
                return RedirectToAction("Initiate", "IdPInitiated");
            }
        }
        public ActionResult DownloadEMMSmannual()
        {
            string emailId = Session["EmailiID"].ToString();
            string pId = Session["PlantId"].ToString();
            if (emailId != null && pId != null)
            {
                var FileVirtualPath = "~/Help/EMMSConfigurationUserManual.pdf";
                return File(FileVirtualPath, "application/force-download", Path.GetFileName(FileVirtualPath));
            }
            else
            {
                return RedirectToAction("Initiate", "IdPInitiated");
            }
        }
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (Session["PlantId"] != null && Session["UserName"] != null)
                base.OnActionExecuting(filterContext);
            else
                filterContext.Result = new RedirectResult("~/IdPInitiated/Initiate");
        }
    }
}