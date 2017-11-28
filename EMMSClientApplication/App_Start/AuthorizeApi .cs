using EMMSClientApplication.EMMSDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Http.Controllers;
using System.Web.Http.Filters;
using System.IO;
using System.Security.Cryptography;
using EMMS.Encryption;
namespace EMMSClientApplication.App_Start
{
    public class AuthorizeApi : AuthorizationFilterAttribute
    {
        public override void OnAuthorization(HttpActionContext actionContext)
        {
            byte[] encryptedMacID = Convert.FromBase64String(actionContext.Request.Headers.GetValues("EncryptedMacID").FirstOrDefault());
            byte[] key = Convert.FromBase64String(actionContext.Request.Headers.GetValues("Key").FirstOrDefault());
            byte[] IV = Convert.FromBase64String(actionContext.Request.Headers.GetValues("IV").FirstOrDefault());
            string macID = EncryptMac.DecryptStringFromBytes_Aes(encryptedMacID, key, IV);
            if (new PlantInfo().IsDeviceAvailable(macID))
            {
                base.OnAuthorization(actionContext);
            }
            else
            {
                actionContext.Response = new HttpResponseMessage(System.Net.HttpStatusCode.Unauthorized);
                return;
            }
                  
        }

    }
}