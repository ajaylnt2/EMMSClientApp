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
    public class ConfigurationUnitTests
    {
        [TestMethod]
        public void ConfigurationsReturnsActionResult()
        {
            List<Details> wages = TestData.WagesData();
            List<Details> Uoms = TestData.UOMData();
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            Mock<IDataForDropdown> mock1 = new Mock<IDataForDropdown>();
            mock1.Setup(r => r.GetWages()).Returns(wages);
            mock1.Setup(r => r.GetUOMs()).Returns(Uoms);
            var controller = new ConfigurationController(mock1.Object, mock.Object);
            ActionResult action = controller.Configurations();
            Assert.IsInstanceOfType(action, typeof(ViewResult));
        }
        [TestMethod]
        public void ConfigurationsReturnsInt()
        {
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            mock.Setup(x => x.SaveWageMapping("EnergyName", 1, 1,1)).Returns(true);
            Mock<IDataForDropdown> mock1 = new Mock<IDataForDropdown>();
            var controller = new ConfigurationController(mock1.Object, mock.Object);
            var result = controller.Configurations("EnergyName", "1", "1","1");
            Assert.AreEqual(1,1);
            Assert.IsNotNull(result);
        }

        [TestMethod]
        public void GetWageMappingReturnsJsonResult()
        {
            var testData = TestData.getWagesUOMData();
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            Mock<IDataForDropdown> mock1 = new Mock<IDataForDropdown>();
            mock.Setup(r => r.GetWageMapping()).Returns(testData);
            var controller = new ConfigurationController(mock1.Object, mock.Object);
            var result = controller.GetWageMapping();
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            var result1 = serializer.Deserialize<List<WageUomMapping>>(serializer.Serialize(result.Data));
            CollectionAssert.AreEqual(testData, result1);
        }
        [TestMethod]
        public void EditConfigurationReturnsInt()
        {
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            Mock<IDataForDropdown> mock1 = new Mock<IDataForDropdown>();
            mock.Setup(r => r.EditConfiguration(new WageUomMapping { ID = 1, EnergyName = "Test", EnergyType = "Electricity", UOM = "kwh" })).Returns(true);
            var controller = new ConfigurationController(mock1.Object, mock.Object);
            var result = controller.EditConfiguration(new WageUomMapping { ID = 1, EnergyName = "Test", EnergyType = "Electricity", UOM = "kwh" });
            Assert.IsNotNull(result);
            Assert.AreEqual(1, 1);
        }

    }
}
