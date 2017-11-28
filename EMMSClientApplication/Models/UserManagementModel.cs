using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.DirectoryServices.AccountManagement;
using System.Web.Configuration;


namespace EMMSClientApplication.Models
{
    public class UserManagementModel
    {
        #region public Methods
        /// <summary>
        /// 
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public bool ValidateUser(string userName, string password)
        {
            using (PrincipalContext pc = new PrincipalContext(ContextType.Domain, WebConfigurationManager.AppSettings["EMMSDomainName"].ToString()))
            {
                var user = UserPrincipal.FindByIdentity(pc, userName);
                // validate the credentials
                bool isValid = pc.ValidateCredentials(userName, password);
                return isValid;
            }
        }
        #endregion
    }
}