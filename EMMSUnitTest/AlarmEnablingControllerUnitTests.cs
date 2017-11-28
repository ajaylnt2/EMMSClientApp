using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using EMMS.DTO;
using EMMS.Business.Interface;
using EMMSClientApplication.Controllers;
using System.Web.Script.Serialization;
using System.Collections.Generic;
using Moq;
using System.Web.Http.Results;
using System.Web.Mvc;
using EMMS.Business;
using EMMS.DataAccess;

namespace EMMSUnitTest
{
    [TestClass]
    public class AlarmEnablingControllerUnitTests
    {
        [TestMethod]
        public void AlarmEnablingReturnsActionResult()
        {
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            var controller = new AlarmEnablingController(mock.Object);
            ActionResult action = controller.AlarmEnabling();
            Assert.IsInstanceOfType(action, typeof(ViewResult));
        }

        [TestMethod]
        public void UpdateAlaramInfoReturnsInt()
        {
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            mock.Setup(r => r.UpdateAlarmInfo(TestAlarm())).Returns(true);
            var controller = new AlarmEnablingController(mock.Object);
            var result = controller.UpdateAlaramInfo(TestAlarm());
            Assert.IsNotNull(result);
        }
        [TestMethod]
        public void GetAlarmDataReturnsJSonResult()
        {
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            mock.Setup(r => r.GetAlaramData()).Returns(TestAlarm());
            var controller = new AlarmEnablingController(mock.Object);
            var result = controller.GetAlarmData() as JsonResult;
            Assert.IsNotNull(result);
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            var result1 = serializer.Deserialize<List<AlarmEnble>>(serializer.Serialize(result.Data));
            CollectionAssert.AreEquivalent(result1, TestAlarm());
        }
        [Ignore]
        private List<AlarmEnble> TestAlarm()
        {
          return new List<AlarmEnble> { new AlarmEnble { AssetID = 1, AssetName = "TestAsset", isEnabled = "Y", TagID = 1, TagName = "testTag", Target = 10.0 } };
        }
    }
}
