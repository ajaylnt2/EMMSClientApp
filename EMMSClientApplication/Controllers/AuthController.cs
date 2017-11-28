using EMMS.Business.Interface;
using EMMS.DTO;
using EMMS.Log;
using EMMS.WebApplication;
using EMMSClientApplication.Models;
using LnT.SSO.Saml2;
using LnT.SSO.Saml2.Mvc;
using LnT.SSO.Saml2.Schemas;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.IdentityModel.Services;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.Mvc;

namespace EMMSClientApplication.Controllers
{
    [AllowAnonymous]
    public class AuthController : Controller
    {

        private IPlantSetUpManager plantSetup;
        const string relayStateReturnUrl = "returnUrl";
        private readonly Saml2Configuration config;
        private string emaialID = string.Empty;
        private string certificate = ConfigurationManager.AppSettings["certificate"];
        public object SecurityAlgorithms { get; private set; }

        public AuthController(IPlantSetUpManager plantSetup)
        {
            config = IdentityConfig.Saml2Configuration;
            this.plantSetup = plantSetup;
        }
        [Route("EmmsACS")]
        public ActionResult EmmsACS()
        {

            User user = new User();
            try
            {
                string cer = certificate;

                Saml.Response samlResponse = new Saml.Response(cer);

                samlResponse.LoadXmlFromBase64(Request.Form["SAMLResponse"]);

                if (samlResponse.IsValid())
                {
                    try
                    {
                        user.UserName = samlResponse.GetNameID();
                        user.email = samlResponse.GetEmail();
                        user.firstname = samlResponse.GetFirstName();
                        user.lastname = samlResponse.GetLastName();
                        user.country = samlResponse.GetCountry();


                        //    user.UserName = "YP";
                        //user.email = "Prashanth.YP@KraftHeinz.com";
                        //user.firstname = "YP";
                        //user.lastname = "YP";
                        //user.country = "in";
                        //emaialID = "Prashanth.YP@KraftHeinz.com";

                        emaialID = user.email;
                        Session["EmailiID"] = emaialID;
                        Session["UserName"] = user.UserName;
                        Session["EmailiID"] = emaialID;
                        List<Assets> asetsList = plantSetup.GetUserDetails((emaialID).Trim());
                        if (asetsList == null) { return RedirectToAction("ErrorMsg", "Auth"); }
                        if (asetsList.Count > 1)
                        {
                            int roleId = 0;
                            foreach (var item in asetsList)
                            {
                                roleId = asetsList.Max(r => r.RoleId);
                            }
                            Session["RoleId"] = roleId;
                            return RedirectToAction("PlantList", "Auth");
                        }
                        else if (asetsList.Count > 0)
                        {
                            int roleId = 0;
                            foreach (var item in asetsList)
                            {
                                roleId = asetsList.Max(r => r.RoleId);
                                Session["PlantId"] = item.PlantID;
                                Session["PlantName"] = item.PlantName;
                            }
                            Session["RoleId"] = roleId;
                            if (Session["PlantId"].ToString() == "0" && Session["RoleId"].ToString() == "2")
                            {
                                return RedirectToAction("adminConfiguration", "Admin");
                            }
                            else
                            {
                                if ((Session["PlantId"].ToString() == "0" && Session["RoleId"].ToString() == "1"))
                                {
                                    return RedirectToAction("PlantErrorMsg", "Auth");
                                }
                                else
                                {
                                    return RedirectToAction("HomePage", "HomePage");
                                }
                            }
                        }
                        else
                        {
                            return RedirectToAction("ErrorMsg", "Auth");
                        }
                    }
                    catch (Exception ex)
                    {
                        Logger.Log("error in AddAcutalInputConsumption" + ex.ToString());
                        //insert error handling code
                        //no, really, please do
                        user.Error = ex.Message;
                    }
                }
                else
                {
                    user.Error = "Valid Failed....";
                }
            }
            catch (Exception ex)
            {
                user.Error = "Initial Fail";
                return RedirectToAction("ErrorMsg", "Auth");
            }

            return RedirectToAction("ErrorMsg", "Auth");
        }
        [Route("Logout")]
        //[ValidateAntiForgeryToken]
        public ActionResult Logout()
        {
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetCacheability(System.Web.HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Session["UserName"] = string.Empty;
            Session["PlantId"] = string.Empty;
            Session["RoleId"] = string.Empty;
            Session["EmailiID"] = string.Empty;
            Session.Clear();
            Response.Cookies.Clear();
            Session.Clear();
            Response.Cookies.Clear();
            Session.RemoveAll();
            Session.Abandon();
            FederatedAuthentication.SessionAuthenticationModule.DeleteSessionTokenCookie();
            FederatedAuthentication.SessionAuthenticationModule.SignOut();
            return RedirectToAction("Initiate", "IdPInitiated");
        }
        [Route("LoggedOut")]
        public ActionResult LoggedOut()
        {
            var binding = new Saml2PostBinding();
            binding.Unbind(Request.ToGenericHttpRequest(), new Saml2LogoutResponse(config));

            FederatedAuthentication.SessionAuthenticationModule.DeleteSessionTokenCookie();
            FederatedAuthentication.SessionAuthenticationModule.SignOut();

            return Redirect(Url.Content("~/"));
        }
        [Route("SingleLogout")]
        public ActionResult SingleLogout()
        {
            Saml2StatusCodes status;
            var requestBinding = new Saml2PostBinding();
            var logoutRequest = new Saml2LogoutRequest(config, ClaimsPrincipal.Current);
            try
            {
                requestBinding.Unbind(Request.ToGenericHttpRequest(), logoutRequest);
                status = Saml2StatusCodes.Success;
                logoutRequest.DeleteSession();
            }
            catch (Exception exc)
            {
                // log exception
                Debug.WriteLine("SingleLogout error: " + exc.ToString());
                status = Saml2StatusCodes.RequestDenied;
            }

            var responsebinding = new Saml2PostBinding();
            responsebinding.RelayState = requestBinding.RelayState;
            var saml2LogoutResponse = new Saml2LogoutResponse(config)
            {
                InResponseToAsString = logoutRequest.IdAsString,
                Status = status,
            };
            return responsebinding.Bind(saml2LogoutResponse).ToActionResult();
        }
        [HttpGet]
        public ActionResult PlantList()
        {
            return View();
        }
        public JsonResult GetPlantListNames()
        {
            List<Assets> asetsList = plantSetup.GetUserDetails(Session["EmailiID"].ToString());
            return Json(asetsList, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult UpdateSelectedPalnt(int plantID, string plantName)
        {
            Session["PlantId"] = plantID;
            Session["PlantName"] = plantName;
            return RedirectToAction("HomePage", "HomePage");

        }
        public ActionResult ErrorMsg()
        {
            return View();
        }
        public ActionResult PlantErrorMsg()
        {
            return View();
        }
    }
}