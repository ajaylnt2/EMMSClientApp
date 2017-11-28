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
using EMMS.DataAccess.Interface;

namespace EMMSUnitTest
{
    [TestClass]
    public class PlantSetUpManagerUnitTests
    {
        [TestMethod]
        public void AddConsumptionActualReturnsTrue()
        {
            var testData = TestData.TestAnnualData();
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.AddConsumptionActual(testData, "2017", 1, "Consumption")).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.AddConsumptionActual(testData, "2017", 1, "Consumption");
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }
        [TestMethod]
        public void AddConsumptionActualReturnsFalse()
        {
            List<AnnualDetails> testData = null;
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.AddConsumptionActual(testData, "2017", 1, "Consumption")).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.AddConsumptionActual(testData, "2017", 1, "Consumption");
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }
        [TestMethod]
        public void AddMonthlyConsumptionReturnsTrue()
        {
            var testData = new List<MonthlyConsumption> { new MonthlyConsumption { Consumption = 12.00, Cost = 23.45, UOM = "kwh", UOMID = 1, WAGES = "Electricity", WagesId = 1 },
                new MonthlyConsumption { Consumption = 13.00, Cost = 43.45, UOM = "kwh", UOMID = 2, WAGES = "Electricity", WagesId = 1 }
            };
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.AddMonthlyConsumption(testData, "2017", 1, 1)).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.AddMonthlyConsumption(testData, "2017", 1, 1);
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void AddMonthlyConsumptionReturnsFalse()
        {
            List<MonthlyConsumption> testData = null;
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.AddMonthlyConsumption(testData, "2017", 1, 1)).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.AddMonthlyConsumption(testData, "2017", 1, 1);
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }
        [TestMethod]
        public void GetConsumptionActualReturnsList()
        {
            var testData = TestData.TestAnnualData();
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.GetConsumptionActual(2017, 1, "Consumption")).Returns(testData);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.GetConsumptionActual(2017, 1, "Consumption");
            Assert.IsNotNull(result);
            CollectionAssert.AreEquivalent(testData, result);
        }
        [TestMethod]
        public void GetWageMappingReturnsList()
        {
            var testData = TestData.getWagesUOMData();
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.GetWageMapping()).Returns(testData);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.GetWageMapping();
            Assert.IsNotNull(result);
            CollectionAssert.AreEquivalent(testData, result);
        }
        //[TestMethod]
        //public void GetMonthlyConsumptionReturnsList()
        //{
        //    var testData = new List<MonthlyConsumption> { new MonthlyConsumption { Consumption = 12.00, Cost = 23.45, UOM = "kwh", UOMID = 1, WAGES = "Electricity", WagesId = 1 },
        //        new MonthlyConsumption { Consumption = 13.00, Cost = 43.45, UOM = "kwh", UOMID = 2, WAGES = "Electricity", WagesId = 1 }
        //    };
        //    Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
        //    mock.Setup(x => x.GetMonthlyConsumption(2017, 1, 1)).Returns(testData);
        //    var plantManager = new PlantSetUpManager(mock.Object);
        //    var result = plantManager.GetMonthlyConsumption(2017, 1, 1);
        //    Assert.IsNotNull(result);
        //    CollectionAssert.AreEquivalent(testData, result);
        //}

        [TestMethod]
        public void GetMonthlySolidwasteReturnsList()
        {
            var testData = new List<MonthlyConsumption> { new MonthlyConsumption { Consumption = 12.00, Cost = 23.45, UOM = "kwh", UOMID = 1, WAGES = "Electricity", WagesId = 1 },
                new MonthlyConsumption { Consumption = 13.00, Cost = 43.45, UOM = "kwh", UOMID = 2, WAGES = "Electricity", WagesId = 1 }
            };
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.GetMonthlySolidwaste(1, 1)).Returns(testData);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.GetMonthlySolidwaste(1, 1);
            Assert.IsNotNull(result);
            CollectionAssert.AreEquivalent(testData, result);
        }
        [TestMethod]
        public void SaveWageMappingReturnsTrue()
        {
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.SaveWageMapping("Test", 1, 1,1)).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.SaveWageMapping("Test", 1, 1,1);
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }
        [TestMethod]
        public void SaveWageMappingReturnsFalse()
        {
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.SaveWageMapping("", 1, 1,1)).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.SaveWageMapping("Test", 1, 1,1);
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }
        [TestMethod]
        public void GetProductionActualReturnsList()
        {
            var testData = TestData.TestAnnualData();
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.GetProductionActual(2017, "GetProductionActual")).Returns(testData);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.GetProductionActual(2017, "GetProductionActual");
            Assert.IsNotNull(result);
            CollectionAssert.AreEquivalent(testData, result);
        }
        [TestMethod]
        public void GetDepartmentReturnsList()
        {
            var testData = new List<Details> {
            new Details { ID= 1,Name = "tests"},new Details { ID = 2,Name = "tests2"} };
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.GetDepartment()).Returns(testData);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.GetDepartment();
            Assert.IsNotNull(result);
            CollectionAssert.AreEquivalent(testData, result);
        }
        [TestMethod]
        public void GetSolidWasteReturnsList()
        {
            var testData = TestData.TestAnnualData();
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.GetSolidWaste(2017, "SolidWaste")).Returns(testData);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.GetSolidWaste(2017, "SolidWaste");
            Assert.IsNotNull(result);
            CollectionAssert.AreEquivalent(testData, result);
        }

        [TestMethod]
        public void GetDailyProductionReturnsList()
        {
            var testData = new List<ProductionDaily> { new ProductionDaily { AssetId = 1, DepartName = "Wages", Total = 220.422, UOM = "kwh", UOMId = 1 } };
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.GetProductionDaily("2017-01-12")).Returns(testData);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.GetDailyProduction("2017-01-12");
            Assert.IsNotNull(result);
            CollectionAssert.AreEquivalent(testData, result);
        }
        [TestMethod]
        public void GetSolidWasteDailyReturnsList()
        {
            var testData = new List<ProductionDaily> { new ProductionDaily { AssetId = 1, DepartName = "Wages", Total = 220.422, UOM = "kwh", UOMId = 1 } };
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.GetSolidWasteDaily("2017-01-12")).Returns(testData);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.GetSolidWasteDaily("2017-01-12");
            Assert.IsNotNull(result);
            CollectionAssert.AreEquivalent(testData, result);
        }
        [TestMethod]
        public void AddProductionActualReturnsTrue()
        {
            var testData = TestData.TestAnnualData();
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.AddProductionActual(testData, "2017", "Production")).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.AddProductionActual(testData, "2017", "Production");
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }
        [TestMethod]
        public void AddProductionActualReturnsFalse()
        {
            List<AnnualDetails> testData = null;
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.AddProductionActual(testData, "2017", "Production")).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.AddProductionActual(testData, "2017", "Production");
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }

        [TestMethod]
        public void EditConfigurationReturnsTrue()
        {
            var testData = new WageUomMapping { EnergyName = "tests", EnergyType = "electricity", UOM = "kwh", ID = 1 };
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.EditConfiguration(testData)).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.EditConfiguration(testData);
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void EditConfigurationReturnsFalse()
        {
            WageUomMapping testData = null;
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.EditConfiguration(testData)).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.EditConfiguration(testData);
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }

        [TestMethod]
        public void AddCSolidwasteActualReturnsTrue()
        {
            var testData = TestData.TestAnnualData();
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.AddCSolidwasteActual(testData, "2017", "AddCSolidwasteActual")).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.AddCSolidwasteActual(testData, "2017", "AddCSolidwasteActual");
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void AddCSolidwasteActualReturnsFalse()
        {
            List<AnnualDetails> testData = null;
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.AddCSolidwasteActual(testData, "2017", "AddCSolidwasteActual")).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.AddCSolidwasteActual(testData, "2017", "AddCSolidwasteActual");
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }

        [TestMethod]
        public void AddMonthlySolidwasteReturnsTrue()
        {
            var testData = new List<MonthlyConsumption> { new MonthlyConsumption { Consumption = 12.00, Cost = 23.45, UOM = "kwh", UOMID = 1, WAGES = "Electricity", WagesId = 1 },
                new MonthlyConsumption { Consumption = 13.00, Cost = 43.45, UOM = "kwh", UOMID = 2, WAGES = "Electricity", WagesId = 1 }
            };
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.AddMonthlySolidwaste(testData, "2017", 1)).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.AddMonthlySolidwaste(testData, "2017", 1);
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void AddSolidwasteDailyReturnsTrue()
        {
            var testData = new List<ProductionDaily> { new ProductionDaily {AssetId =1,DepartName = "Tests",Total = 233.34,UOM = "kwh",UOMId = 1 },
                new ProductionDaily {AssetId =1,DepartName = "Tests",Total = 233.34,UOM = "kwh",UOMId = 1  }};
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.AddSolidwasteDaily(testData, 122.345, "2017-01-12")).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.AddSolidwasteDaily(testData, 122.345, "2017-01-12");
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void AddSolidwasteDailyReturnsFalse()
        {
            List<ProductionDaily> testData = null;
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.AddSolidwasteDaily(testData, 122.345, "2017-01-12")).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.AddSolidwasteDaily(testData, 122.345, "2017-01-12");
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }
        [TestMethod]
        public void AddProductonDailyReturnsTrue()
        {
            var testData = new List<ProductionDaily> { new ProductionDaily {AssetId =1,DepartName = "Tests",Total = 233.34,UOM = "kwh",UOMId = 1 },
                new ProductionDaily {AssetId =1,DepartName = "Tests",Total = 233.34,UOM = "kwh",UOMId = 1  }};
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.AddProductonDaily(testData, "2017-01-12")).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.AddProductonDaily(testData, "2017-01-12");
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }
        [TestMethod]
        public void GetAlarmDataReturnsList()
        {
            var testData = new List<AlarmEnble> { new AlarmEnble { AssetID = 1, AssetName = "Tests", isEnabled = "Y", TagID = 1, TagName = "tests23",Target = 123.34},
           new AlarmEnble { AssetID = 2, AssetName = "Tests122", isEnabled = "Y", TagID = 1, TagName = "tests232",Target = 123.34} };
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.GetAlaramData()).Returns(testData);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.GetAlaramData();
            Assert.IsNotNull(result);
            CollectionAssert.AreEquivalent(testData, result);
        }
        [TestMethod]
        public void UpdateAlarmInfoReturnsTrue()
        {
            var testData = new List<AlarmEnble> { new AlarmEnble { AssetID = 1, AssetName = "Tests", isEnabled = "Y", TagID = 1, TagName = "tests23",Target = 123.34},
           new AlarmEnble { AssetID = 2, AssetName = "Tests122", isEnabled = "Y", TagID = 1, TagName = "tests232",Target = 123.34} };
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.UpdateAlarmInfo(testData)).Returns(true);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.UpdateAlarmInfo(testData);
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }
        [TestMethod]
        public void UpdateAlarmInfoReturnsFalse()
        {
            List<AlarmEnble> testData = null;
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.UpdateAlarmInfo(testData)).Returns(false);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.UpdateAlarmInfo(testData);
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }

        [TestMethod]
        public void GetUserDetailsReturnsList()
        {
            var testData = new List<Assets> { new Assets { PlantID = 1, PlantName = "Dover"} };
            Mock<IPlantSetupDal> mock = new Mock<IPlantSetupDal>();
            mock.Setup(x => x.GetUserDetails("test@mail.com")).Returns(testData);
            var plantManager = new PlantSetUpManager(mock.Object);
            var result = plantManager.GetUserDetails("test@mail.com");
            Assert.IsNotNull(result);
            CollectionAssert.AreEquivalent(testData, result);
        }
    }
}
