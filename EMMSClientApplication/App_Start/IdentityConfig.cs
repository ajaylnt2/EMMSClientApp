
using LnT.SSO.Saml2;
using LnT.SSO.Saml2.Schemas.Metadata;
using System;
using System.Configuration;
using System.IdentityModel.Claims;
using System.Linq;
using System.Web;
using System.Web.Helpers;

namespace EMMS.WebApplication
{
    public static class IdentityConfig
    {
        public static Saml2Configuration Saml2Configuration { get; private set; } = new Saml2Configuration();

        public static void RegisterIdentity()
        {
            AntiForgeryConfig.UniqueClaimTypeIdentifier = ClaimTypes.NameIdentifier;

            Saml2Configuration.Issuer = new Uri(ConfigurationManager.AppSettings["Saml2:Issuer"]);         

            Saml2Configuration.AllowedAudienceUris.Add(Saml2Configuration.Issuer);

            

            var entityDescriptor = new EntityDescriptor();

            string metadataPath = HttpContext.Current.Server.MapPath(ConfigurationManager.AppSettings["metadataPath"]);

            entityDescriptor.ReadIdPSsoDescriptorFromFile(metadataPath);


            //entityDescriptor.ReadIdPSsoDescriptorFromUrl(new Uri(ConfigurationManager.AppSettings["Saml2:IdPMetadata"]));
            if (entityDescriptor.IdPSsoDescriptor != null)
            {
                Saml2Configuration.SingleSignOnDestination = entityDescriptor.IdPSsoDescriptor.SingleSignOnServices.First().Location;
                //Saml2Configuration.SingleLogoutDestination = entityDescriptor.IdPSsoDescriptor.SingleLogoutServices.First().Location;
                Saml2Configuration.SignatureValidationCertificates.AddRange(entityDescriptor.IdPSsoDescriptor.SigningCertificates);
            }
            else
            {
                throw new Exception("IdPSsoDescriptor not loaded from metadata.");
            }
        }
    }
}