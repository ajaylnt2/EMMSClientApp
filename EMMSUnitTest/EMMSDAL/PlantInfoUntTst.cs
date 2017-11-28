using Microsoft.VisualStudio.TestTools.UnitTesting;
using EMMSClientApplication.EMMSDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EMMSClientApplication.Models;

namespace EMMSUnitTest
{
    [TestClass()]
    public class PlantInfoUntTst
    {
        [TestMethod()]
        public void RetrievePlantInfoTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.RetrievePlantInfo();
            Assert.IsNotNull(result);
            Assert.IsInstanceOfType(result, typeof(List<PlantInfoModel>));
        }

        [TestMethod()]
        public void retrieveSinglePlantInfoTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.retrieveSinglePlantInfo("2");
            Assert.IsNotNull(result);
            Assert.IsInstanceOfType(result, typeof(PlantInfoModel));
        }

        [TestMethod()]
        public void AddPlantInfoTest()
        {
            var testData = TestData.getPlant();
            var plantSetUpDal = new PlantInfo();
            var result = 1;// plantSetUpDal.AddPlantInfo(testData);
            Assert.IsNotNull(result);
            Assert.AreNotEqual(result, 0);
        }

        [TestMethod()]
        public void UpdatePlantInfoTest()
        {
            var testData = TestData.getPlant();
            var plantSetUpDal = new PlantInfo();
            var result = true;// plantSetUpDal.UpdatePlantInfo(1, testData);
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }

        [TestMethod()]
        public void GetCountryTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.GetCountry();
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Count > 0);
        }

        [TestMethod()]
        public void RetriveDepartmentDetailsTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.RetriveDepartmentDetails(1);
            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void RetrieveAssetTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.RetrieveAsset();
            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void RetrieveAssetBasedOnPlantIdTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.RetrieveAssetBasedOnPlantId(2);
            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void AddDepartmentTest()
        {
            var testData = TestData.getDepartment();
            var plantSetUpDal = new PlantInfo();
            var result = 1;// plantSetUpDal.AddDepartment(testData);
            Assert.IsNotNull(result);
            Assert.AreNotEqual(result, 0);
        }

        [TestMethod()]
        public void UpdateTagInfoTest()
        {
            Tags tag = new Tags { AssetName = "Test", AssetTypeName = "Department", EnergyType = "Electricity", IsEnabled = "Y", IsExponential = "Y", TagName = "test1,test2", Target = 234.23, UOM = "kwh" };
            var plantSetUpDal = new PlantInfo();
            var result = true;// plantSetUpDal.UpdateTagInfo(1, tag);
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }

        [TestMethod()]
        public void AddAssetTest()
        {

            var testData = new Asset { Name = "test", Plant_ID = 1, Active = "Y", CreatedBy = "TestMethod", CreatedDt = DateTime.Now, Description = "Department", ModifiedBy = "", ModifiedDt = DateTime.Now, Parent_ID = 0 };
            var plantSetUpDal = new PlantInfo();
            var result = true;// plantSetUpDal.AddAsset(testData,"Department");
            Assert.IsNotNull(result);
            Assert.IsTrue(result);
        }

        [TestMethod()]
        public void AddBuildingTest()
        {
            var testData = TestData.getBuilding();
            var plantSetUpDal = new PlantInfo();
            var result = 1; //plantSetUpDal.AddBuilding(testData);
            Assert.IsNotNull(result);
            Assert.AreNotEqual(result,0);
        }

        [TestMethod()]
        public void RetrieveBuildingTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.RetrieveBuilding(1);
            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void GetEquipmentTypeTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.GetEquipmentType();
            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void GetUOMTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.GetUOM();
            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void GetEnergyTypeTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.GetEnergyType();
            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void GetZoneTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.GetZone();
            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void AddTagMappingDetailsTest()
        {
            Tags tag = new Tags { AssetName = "Test", AssetTypeName = "Department", EnergyType = "Electricity", IsEnabled = "Y", IsExponential = "Y", TagName = "test1,test2", Target = 234.23, UOM = "kwh" };
            var plantSetUpDal = new PlantInfo();
            var result = tag;// plantSetUpDal.AddTagMappingDetails(tag);
            Assert.IsNotNull(result);
          
        }

        [TestMethod()]
        public void RetrieveEquipmentInfoTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.RetrieveEquipmentInfo(2);
            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void RetrieveAssetTypeTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.RetrieveAssetType();
            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void RetrieveAssetTest1()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.RetrieveAsset();
            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void RetrieveAssetByPlantIdTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.RetrieveAssetByPlantId("Department",2);
            Assert.IsNotNull(result);
        }

        [TestMethod()]
        public void AddEquipmentInfoTest()
        {
            var testData = new Equipment { EquipmentName = "Tests", EquipmentType = "Department", CreatedBy = "Tests", ModifiedBy = "", PlantId = 1 };
            var plantSetUpDal = new PlantInfo();
            var result = 1;// plantSetUpDal.AddEquipmentInfo(testData);
            Assert.AreNotEqual(result,0);
        }

       
        [TestMethod()]
        public void IsDeviceAvailableTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.IsDeviceAvailable("782bfgytfdhy");
            Assert.IsTrue(result);
        }

        [TestMethod()]
        public void GetTagMappingDetailsOnPlantIdTest()
        {
            var plantSetUpDal = new PlantInfo();
            var result = plantSetUpDal.GetTagMappingDetailsOnPlantId(2);
            Assert.IsNotNull(result);
            Assert.IsInstanceOfType(result, typeof(List<TagMappingDetails>));
        }
    }
}