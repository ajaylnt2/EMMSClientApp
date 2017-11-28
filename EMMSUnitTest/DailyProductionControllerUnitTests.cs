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
    public class DailyProductionControllerUnitTests
    {
        [TestMethod]
        public void DailyProductionReturnsActionResult()
        {
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            var controller = new DailyProductionController(mock.Object);
            ActionResult result = controller.DailyProduction();
            Assert.IsInstanceOfType(result, typeof(ViewResult));
        }

        [TestMethod]
        public void GetDailyProductionReturnsJsonResult()
        {
            var testData = new List<ProductionDaily> { new ProductionDaily { DepartName = "Test", AssetId = 1, Total = 12.343, UOM = "kwh", UOMId = 1 } };
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            mock.Setup(r => r.GetDailyProduction("2017-01-27")).Returns(testData);
            var controller = new DailyProductionController(mock.Object);
            var result = controller.GetDailyProduction("2017-01-27");
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            var result1 = serializer.Deserialize<List<ProductionDaily>>(serializer.Serialize(result.Data));
            CollectionAssert.AreEqual(testData, result1);
        }

        [TestMethod]
        public void GetSolidwasteDailyReturnsJsonResult()
        {
            var testData = new List<ProductionDaily> { new ProductionDaily { DepartName = "Test", AssetId = 1, Total = 12.343, UOM = "kwh", UOMId = 1 } };
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            mock.Setup(r => r.GetSolidWasteDaily("2017-01-27")).Returns(testData);
            var controller = new DailyProductionController(mock.Object);
            var result = controller.GetSolidwasteDaily("2017-01-27");
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            var result1 = serializer.Deserialize<List<ProductionDaily>>(serializer.Serialize(result.Data));
            CollectionAssert.AreEqual(testData, result1);
        }

    }
}
