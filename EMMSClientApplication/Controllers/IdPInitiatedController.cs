
using System.Web.Mvc;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens;
using System.Linq;
using System.Security.Claims;
using EMMSClientApplication.Models;
using System.Configuration;
using LnT.SSO.Saml2;
using LnT.SSO.Saml2.Schemas;
using LnT.SSO.Saml2.Mvc;
using LnT.SSO.Saml2.Schemas.Metadata;

namespace EMMS.WebApplication
{
    [AllowAnonymous]
    public class IdPInitiatedController : Controller
    {
        public ActionResult Initiate()
        {

            return View();
        }
        public ActionResult InitiateLogin(User user)
        {


            var serviceProviderRealm = ConfigurationManager.AppSettings["serviceProviderRealm"];

            var binding = new Saml2PostBinding();
            binding.RelayState = $"RPID={Uri.EscapeDataString(serviceProviderRealm)}";

            var config = new Saml2Configuration();

            config.Issuer = new Uri(ConfigurationManager.AppSettings["issuer"]);
            config.SingleSignOnDestination = new Uri(ConfigurationManager.AppSettings["SingleSignOnDestination"]);
            //config.SigningCertificate = CertificateUtil.Load(HttpContext.Server.MapPath("~/App_Data/LnT.sso.saml2.testwebapp_Certificate.pfx"));
            //config.SignatureAlgorithm = SecurityAlgorithms.RsaSha256Signature;

            var entityDescriptor = new EntityDescriptor();

            string metadataPath = System.Web.HttpContext.Current.Server.MapPath(ConfigurationManager.AppSettings["metadataPath"]);

            entityDescriptor.ReadIdPSsoDescriptorFromFile(metadataPath);

            if (entityDescriptor.IdPSsoDescriptor != null)
            {
                config.SignatureValidationCertificates.AddRange(entityDescriptor.IdPSsoDescriptor.SigningCertificates);
            }


            var appliesToAddress = new Uri(ConfigurationManager.AppSettings["appliesToAddress"]);

            var response = new Saml2AuthnResponse(config);
            response.Status = Saml2StatusCodes.Success;

            var claimsIdentity = new ClaimsIdentity(CreateClaims());
            response.NameId = new Saml2NameIdentifier(claimsIdentity.Claims.Where(c => c.Type == ClaimTypes.NameIdentifier).Select(c => c.Value).Single(), NameIdentifierFormats.Persistent);
            response.ClaimsIdentity = claimsIdentity;
            var token = response.CreateSecurityToken(appliesToAddress);

            return binding.Bind(response).ToActionResult();

        }
        private IEnumerable<Claim> CreateClaims()
        {
            yield return new Claim(ClaimTypes.NameIdentifier, "some-user-identity");
            yield return new Claim(ClaimTypes.Email, "some-user@domain.com");
        }
    }
}
