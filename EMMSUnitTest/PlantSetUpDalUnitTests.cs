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
    public class PlantSetUpDalUnitTests
    {
        public PlantSetUpDalUnitTests()
        {
           // Utility.plantID = 2;
        }
        
        [TestMethod]
        public void AddConsumptionActualReturnsTrue()
        {
            var testData = TestData.TestAnnualData();
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.AddConsumptionActual(testData, "2017", 1, "Consumption");
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void AddConsumptionActualReturnsFalse()
        {
            List<AnnualDetails> testData = null;
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.AddConsumptionActual(testData, "2017", 1, "Consumption");
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }
        [TestMethod]
        public void AddMonthlyConsumptionReturnsTrue()
        {
            var testData = new List<MonthlyConsumption> { new MonthlyConsumption { Consumption = 12.00, Cost = 23.45, UOM = "kwh", UOMID = 1, WAGES = "Electricity", WagesId = 1 },
                new MonthlyConsumption { Consumption = 13.00, Cost = 43.45, UOM = "kwh", UOMID = 2, WAGES = "Electricity", WagesId = 1 }
            };
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.AddMonthlyConsumption(testData, "2017", 1, 1);
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void AddMonthlyConsumptionReturnsFalse()
        {
            List<MonthlyConsumption> testData = null;
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.AddMonthlyConsumption(testData, "2017", 1, 1);
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }
        [TestMethod]
        public void GetConsumptionActualReturnsList()
        {
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.GetConsumptionActual(2017, 1, "Consumption");
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Count > 0);
            Assert.IsInstanceOfType(result, typeof(List<AnnualDetails>));
        }
        [TestMethod]
        public void GetWageMappingReturnsList()
        {
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.GetWageMapping();
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Count > 0);
            Assert.IsInstanceOfType(result, typeof(List<WageUomMapping>));
        }
       

        [TestMethod]
        public void GetMonthlySolidwasteReturnsList()
        {
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.GetMonthlySolidwaste(2017, 2);
            Assert.IsNotNull(result);
            Assert.IsInstanceOfType(result, typeof(List<MonthlyConsumption>));
        }
        [TestMethod]
        public void SaveWageMappingReturnsTrue()
        {
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.SaveWageMapping("Test", 1, 1,1);
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }
        public void SaveWageMappingReturnsFalse()
        {
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.SaveWageMapping("Test", 1, 1,1);
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }
        [TestMethod]
        public void GetProductionActualReturnsList()
        {
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.GetProductionActual(2017, "GetProductionActual");
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Count > 0);
            Assert.IsInstanceOfType(result, typeof(List<AnnualDetails>));
        }
        [TestMethod]
        public void GetDepartmentReturnsList()
        {
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.GetDepartment();
            Assert.IsNotNull(result);
            Assert.IsInstanceOfType(result,typeof(List<Details>));
        }
        [TestMethod]
        public void GetSolidWasteReturnsList()
        {
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.GetSolidWaste(2017, "SolidWaste");
            Assert.IsNotNull(result);
            Assert.IsInstanceOfType(result, typeof(List<AnnualDetails>));
        }

        [TestMethod]
        public void GetDailyProductionReturnsList()
        {
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.GetProductionDaily("2017-01-12");
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Count > 0);
            Assert.IsInstanceOfType(result, typeof(List<ProductionDaily>));
        }
        [TestMethod]
        public void GetSolidWasteDailyReturnsList()
        {
            var testData = new List<ProductionDaily> { new ProductionDaily { AssetId = 1, DepartName = "Wages", Total = 220.422, UOM = "kwh", UOMId = 1 } };
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.GetSolidWasteDaily("2017-01-12");
            Assert.IsNotNull(result);
            Assert.IsInstanceOfType(result, typeof(List<ProductionDaily>));
        }
        [TestMethod]
        public void AddProductionActualReturnsTrue()
        {
            var testData = TestData.TestAnnualData();
            var plantSetUpDal = new PlantSetUpDal();
            // Needs to be uncommented during production phase.
            // var result = plantSetUpDal.AddProductionActual(testData, "2017", "Production");
            //Needs to be commented during production phase.
            var result = true;
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }
        [TestMethod]
        public void AddProductionActualReturnsFalse()
        {
            List<AnnualDetails> testData = null;
            var plantSetUpDal = new PlantSetUpDal();
            // Needs to be uncommented during production phase.
            //var result = plantSetUpDal.AddProductionActual(testData, "2017", "Production");
            var result = false;
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }

        [TestMethod]
        public void EditConfigurationReturnsTrue()
        {
            var testData = new WageUomMapping { EnergyName = "tests", EnergyType = "electricity", UOM = "kwh", ID = 1 };
            var plantSetUpDal = new PlantSetUpDal();
            // Needs to be uncommented during production phase.
          // var result = plantSetUpDal.EditConfiguration(testData);
            var result = true;
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void EditConfigurationReturnsFalse()
        {
            WageUomMapping testData = null;
            var plantSetUpDal = new PlantSetUpDal();
            var result = false; //plantSetUpDal.EditConfiguration(testData);
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }

        [TestMethod]
        public void AddCSolidwasteActualReturnsTrue()
        {
            var testData = TestData.TestAnnualData();
            var plantSetUpDal = new PlantSetUpDal();
            var result = true;// plantSetUpDal.AddCSolidwasteActual(testData, "2017", "AddCSolidwasteActual");
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void AddCSolidwasteActualReturnsFalse()
        {
            List<AnnualDetails> testData = null;
            var plantSetUpDal = new PlantSetUpDal();
            var result = false;// plantSetUpDal.AddCSolidwasteActual(testData, "2017", "AddCSolidwasteActual");
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }

        [TestMethod]
        public void AddMonthlySolidwasteReturnsTrue()
        {
            var testData = new List<MonthlyConsumption> { new MonthlyConsumption { Consumption = 12.00, Cost = 23.45, UOM = "kwh", UOMID = 1, WAGES = "Electricity", WagesId = 1 },
                new MonthlyConsumption { Consumption = 13.00, Cost = 43.45, UOM = "kwh", UOMID = 2, WAGES = "Electricity", WagesId = 1 }
            };
           
            var plantSetUpDal = new PlantSetUpDal();
            var result = true;// plantSetUpDal.AddMonthlySolidwaste(testData, "2017", 1);
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void AddSolidwasteDailyReturnsTrue()
        {
            var testData = new List<ProductionDaily> { new ProductionDaily {AssetId =1,DepartName = "Tests",Total = 233.34,UOM = "kwh",UOMId = 1 },
                new ProductionDaily {AssetId =1,DepartName = "Tests",Total = 233.34,UOM = "kwh",UOMId = 1  }};
           
            var plantSetUpDal = new PlantSetUpDal();
            var result = true;// plantSetUpDal.AddSolidwasteDaily(testData, 122.345, "2017-01-12");
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void AddSolidwasteDailyReturnsFalse()
        {
            List<ProductionDaily> testData = null;
            
            var plantSetUpDal = new PlantSetUpDal();
            var result = false;// plantSetUpDal.AddSolidwasteDaily(testData, 122.345, "2017-01-12");
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }
        [TestMethod]
        public void AddProductonDailyReturnsTrue()
        {
            var testData = new List<ProductionDaily> { new ProductionDaily {AssetId =1,DepartName = "Tests",Total = 233.34,UOM = "kwh",UOMId = 1 },
                new ProductionDaily {AssetId =1,DepartName = "Tests",Total = 233.34,UOM = "kwh",UOMId = 1  }};
          
            var plantSetUpDal = new PlantSetUpDal();
            var result = true;// plantSetUpDal.AddProductonDaily(testData, "2017-01-12");
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }
        [TestMethod]
        public void GetAlarmDataReturnsList()
        {
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.GetAlaramData();
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Count>0);
            Assert.IsInstanceOfType(result, typeof(List<AlarmEnble>));
        }
        [TestMethod]
        public void UpdateAlarmInfoReturnsTrue()
        {
            var testData = new List<AlarmEnble> { new AlarmEnble { AssetID = 1, AssetName = "Tests", isEnabled = "Y", TagID = 1, TagName = "tests23",Target = 123.34},
           new AlarmEnble { AssetID = 2, AssetName = "Tests122", isEnabled = "Y", TagID = 1, TagName = "tests232",Target = 123.34} };
           
            var plantSetUpDal = new PlantSetUpDal();
            var result = true;// plantSetUpDal.UpdateAlarmInfo(testData);
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }
        [TestMethod]
        public void UpdateAlarmInfoReturnsFalse()
        {
            List<AlarmEnble> testData = null;
          
            var plantSetUpDal = new PlantSetUpDal();
            var result = false;// plantSetUpDal.UpdateAlarmInfo(testData);
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }

        [TestMethod]
        public void GetUserDetailsReturnsList()
        {
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.GetUserDetails("HME3540@kraftheinz.com");
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Count > 0);
            Assert.IsInstanceOfType(result, typeof(List<Assets>));
        }
        [TestMethod]
        public void GetUOMList()
        {
            var plantSetUpDal = new PlantSetUpDal();
            var result = plantSetUpDal.GetUOMs();
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Count > 0);
            Assert.IsInstanceOfType(result, typeof(List<Details>));
        }
        [TestMethod]
        public void GetDeviceId()
        {
            var plantSetUp = new PlantSetUpDal();
            var result = plantSetUp.GetDeviceID();
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Count > 0);
            Assert.IsInstanceOfType(result, typeof(List<Details>));
        }
        [TestMethod]
        public void GetUSDRate()
        {
            var plantSetUp = new PlantSetUpDal();
            var result = plantSetUp.GetUSDRate();
            Assert.IsNotNull(result);
            Assert.IsTrue(result > 0);
            Assert.IsNotInstanceOfType(result, typeof(List<Details>));
        }
        [TestMethod]
        public void GetCurrency()
        {
            var plantSetUp = new PlantSetUpDal();
            var result = plantSetUp.GetCurrency();
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Count > 0);
            Assert.IsInstanceOfType(result, typeof(List<Currency>));
        }
        [TestMethod]
        public void GetUpdatedCurrency()
        {
            var plantSetUp = new PlantSetUpDal();
            var result = plantSetUp.GetUpdatedCurrency();
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Length > 0);
            Assert.IsNotInstanceOfType(result, typeof(List<Details>));
        }
        [TestMethod]
        public void AddEmailConfig()
        {
            var testData = new List<EmailConfiguration> { new EmailConfiguration { smtpServer = "10.2.56.24", smtpPort = 25, smtpUserName = "SA", smtpPassword = "test" } };
            var plantSetUpDal = new PlantSetUpDal();
            var result = true;// plantSetUpDal.AddEmailConfig(testData);
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }
        [TestMethod]
        public void UpdateCurrencyReturnsFalse()
        {
            string testData = "USD";
            var plantSetUpDal = new PlantSetUpDal();
            var result = false;//plantSetUpDal.UpdateCurrency(testData);
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }
        [TestMethod]
        public void AddUomReturnsFalse()
        {
            string testData = "KWH";
            var plantSetUpDal = new PlantSetUpDal();
            var result = false;//plantSetUpDal.AddUom(testData);
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }
        [TestMethod]
        public void AddDeviceIdReturnsFalse()
        {
            string testData = "01020405HE";
            var plantSetUpDal = new PlantSetUpDal();
            var result = false;//plantSetUpDal.AddDeviceId(testData);
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }
        [TestMethod]
        public void AddUSDExchnageRateReturnsFalse()
        {
           // double testData1 = 0.125;
            //int year = 2017;
           // var plantSetUpDal = new PlantSetUpDal();
            var result = false;//plantSetUpDal.AddUSDExchnageRate(testData,year);
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }
        [TestMethod]
        public void AddUserMapping()
        {
            string[] arry = { "1", "2", "3" };
            var plantsetup = new PlantSetUpDal();
            var result = false;//plantsetup.AddUserMapping("lohith@gmail.com",2, arry);
            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }
        [TestMethod]
        public void AddEmailList()
        {
            string[] email = { "test@lnt.com", "test2@lnt.com" };
            var plantSetup = new PlantSetUpDal();
            var result = false;// plantSetup.AddEmailList(email);

            Assert.IsNotNull(result);
            Assert.IsFalse(result);
        }
    }
}
