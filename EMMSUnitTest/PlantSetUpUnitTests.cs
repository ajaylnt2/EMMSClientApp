using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using EMMS.Business.Interface;
using EMMS.DTO;
using System.Collections.Generic;
using EMMSClientApplication.Controllers;
using System.Web.Http.Results;
using System.Web.Mvc;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using System.Web.Script.Serialization;

namespace EMMSUnitTest
{
    [TestClass]
    public class PlantSetUpUnitTests
    {
        [TestMethod]
        public void TestConsumption()
        {
            List<AnnualDetails> test = TestData.TestAnnualData();
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            List<string> consumptionAndCost = new List<string>{"Consumption", "Cost" };
            foreach (string str in consumptionAndCost)
            {
                mock.Setup(r => r.GetConsumptionActual(2017, 1,str)).Returns(test);
                var controller = new PlantSetUPController(mock.Object);
                var result = controller.GetConsumptionActual("2017", "1") as JsonResult;
                Assert.IsNotNull(result.Data);
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                TestCollection result1 = serializer.Deserialize<TestCollection>(serializer.Serialize(result.Data));

                if (str == "Consumption")
                {
                    //Assert.AreEqual(test[0].DetailsId, result1.consumptionTotal[0].DetailsId);
                    //Assert.AreEqual(test[0].UOMID, result1.consumptionTotal[0].UOMID);
                    CollectionAssert.AreEquivalent(test, result1.consumptionTotal);
                }
                else
                {
                    CollectionAssert.AreEquivalent(test, result1.costActual);
                }
                    
            }
        }

        [TestMethod]
        public void GetCostActualReturnsJsonResult()
        {
            List<AnnualDetails> test = TestData.TestAnnualData();
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            mock.Setup(r => r.GetConsumptionActual(2017, 1, "Cost")).Returns(test);
            var controller = new PlantSetUPController(mock.Object);
            var result = controller.GetCostActual("2017", "1") as JsonResult;
            Assert.IsNotNull(result.Data);
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            var result1 = serializer.Deserialize<List<AnnualDetails>>(serializer.Serialize(result.Data));
            CollectionAssert.AreEquivalent(test, result1);
        }

        [TestMethod]
        public void GetSolidWasteJsonResult()
        {
            List<AnnualDetails> test = TestData.TestAnnualData();
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            List<string> solidwasteAndCost = new List<string> { "SolidWaste", "SolidWasteCost" };
            foreach (string str in solidwasteAndCost)
            {
                mock.Setup(r => r.GetSolidWaste(2017, str)).Returns(test);
                var controller = new PlantSetUPController(mock.Object);
                var result = controller.GetSolidWaste("2017") as JsonResult;
                Assert.IsNotNull(result.Data);
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                SolidWasteColletion result1 = serializer.Deserialize<SolidWasteColletion>(serializer.Serialize(result.Data));

                if (str == "SolidWaste")
                {
                    //Assert.AreEqual(test[0].DetailsId, result1.consumptionTotal[0].DetailsId);
                    //Assert.AreEqual(test[0].UOMID, result1.consumptionTotal[0].UOMID);
                    CollectionAssert.AreEquivalent(test, result1.solidwaste);
                }
                else
                {
                    CollectionAssert.AreEquivalent(test, result1.solidwastecost);
                }

            }
        }

        [TestMethod]
        public void GetProductionActualReturnsJsonResult()
        {
            List<AnnualDetails> test = TestData.TestAnnualData();
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            mock.Setup(r => r.GetProductionActual(2017, "GetProductionActual")).Returns(test);
            var controller = new PlantSetUPController(mock.Object);
            var result = controller.GetProductionActual("2017") as JsonResult;
            Assert.IsNotNull(result.Data);
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            var result1 = serializer.Deserialize<List<AnnualDetails>>(serializer.Serialize(result.Data));
            CollectionAssert.AreEquivalent(test, result1);
        }

        [TestMethod]
        public void GetDepartmentNamesReturnsJsonResult()
        {
            List<Details> data = TestData.DetailsData();
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            mock.Setup(r => r.GetDepartment()).Returns(data);
            var controller = new PlantSetUPController(mock.Object);
            var result = controller.GetDepartmentNames() as JsonResult;
            Assert.IsNotNull(result.Data);
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            var result1 = serializer.Deserialize<List<Details>>(serializer.Serialize(result.Data));
            CollectionAssert.AreEquivalent(data, result1);
        }

        [TestMethod]
         
        public void AddConsumtionDataReturns1()
        {
            List<string> consumption = new List<string> { "AddConsumptionActual", "AddConsumptionActualCost" };
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            mock.Setup(r => r.AddConsumptionActual(TestData.TestAnnualData(), "2017", 1, "AddConsumptionActual")).Returns(true);
            var controller = new PlantSetUPController(mock.Object);
            var result = controller.AddConsumtionData(TestData.TestAnnualData(), TestData.TestAnnualData(), "2017", 1);
            Assert.IsNotNull(result);
            
        }

       [TestMethod]
       public void AddactualSolidwasteDataTests()
        {
            Mock<IPlantSetUpManager> mock = new Mock<IPlantSetUpManager>();
            mock.Setup(r => r.AddCSolidwasteActual(TestData.TestAnnualData(), "2017", "AddCSolidwasteActual")).Returns(true);
            var controller = new PlantSetUPController(mock.Object);
            var result = controller.AddactualSolidwasteData(TestData.TestAnnualData(), TestData.TestAnnualData(), "2017");
            Assert.IsNotNull(result);
        }
       
       
    }
    public class TestCollection
    {
        public List<AnnualDetails> consumptionTotal { get; set; }
        public List<AnnualDetails> costActual { get; set; }
    }

    public class SolidWasteColletion
    {
        public List<AnnualDetails> solidwaste { get; set; }
        public List<AnnualDetails> solidwastecost { get; set; }
    }
    }


