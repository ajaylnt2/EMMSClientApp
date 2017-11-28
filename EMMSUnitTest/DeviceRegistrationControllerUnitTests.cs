using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Web.Http.Results;
using System.Configuration;
using EMMSClientApplication.Controllers;
using EMMSClientApplication.Models;
using EMMSClientApplication.EMMSDAL;
using System.Web.Http;
using System.Linq;
using Newtonsoft.Json;

namespace EmmsRestServices.Tests
{
    [TestClass]
    public class DeviceRegistrationControllerUnitTests
    {
        [TestMethod]
        public void DeviceRegistrationReturnsOK()
        {
            string testValue = "78-2B-CB-A1-F2-B5";
            var controller = new DeviceRegistrationController();
            IHttpActionResult actionResult =  controller.DeviceRegistration(testValue).Result;
            var createdresult = actionResult as OkNegotiatedContentResult<Utilities>;
            Assert.IsNotNull(createdresult);
            Assert.IsNotNull(createdresult.Content);
        }
        [TestMethod]
        public void DeviceRegistrationReturnsBadRequest()
        {
            string testvalue = "98-90-96-99-99-CN";
            var controller = new DeviceRegistrationController();
            IHttpActionResult actionResult = controller.DeviceRegistration(testvalue).Result;
            Assert.IsInstanceOfType(actionResult, typeof(BadRequestErrorMessageResult));

        }
    }
}
