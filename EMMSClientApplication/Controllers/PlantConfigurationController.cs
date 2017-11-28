
using EMMSClientApplication.Models;
using EMMSClientApplication.EMMSDAL;
using Microsoft.Owin;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Xml.Linq;
using System.Xml;


namespace EMMSClientApplication.Controllers
{



    //**************************************************************
    // Class Name  :  PlantConfigurationController
    // Purpose	   :  To Configure the plant details
    // Modification History:
    //  Ver #       Date      	    Author/Modified By	    Remarks
    //--------------------------------------------------------------
    //   1.0        24-March-17  	    Vishwajeet Kumar        Initial    

    //**************************************************************





    public class PlantConfigurationController : ApiController
    {
        private PlantInfo _info = new PlantInfo();



        /// <summary>
        /// Get the plant details
        /// </summary>
        /// <returns>List of plants.</returns>
        /// 
        [HttpGet]

        public IHttpActionResult GetPlantDetails()
        {
            List<PlantInfoModel> plantList = _info.RetrievePlantInfo();
            if (plantList != null)
                return Ok(plantList);
            else
                return NotFound();

        }
        /// <summary>
        /// Get the  plant detail by id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        /// 
        //[HttpGet]
        public IHttpActionResult GetPlantDetail(string id)
        {
            PlantInfoModel _plant = _info.retrieveSinglePlantInfo(id);
            if (_plant != null)
                return Ok(_plant);
            else
                return NotFound();
        }
        /// <summary>
        /// Adds the plant details.
        /// </summary>
        /// <param name="plant"></param>
        /// <returns>The plant id.</returns>
        /// 
        [HttpPost]

        public IHttpActionResult AddPlantDetails([FromBody] PlantInfoModel plant)
        {
            if (ModelState.IsValid && plant != null)
            {
                if (_info.RetrievePlantInfo().Any(plnt => plnt.PlantName.ToLower() == plant.PlantName.ToLower()))
                {
                    return BadRequest(plant.PlantName + " plant already exists.");
                }
                int plantId = _info.AddPlantInfo(plant);
                if (plantId > 0)
                    return Created("api/PlantConfiguration/", plantId.ToString());
                else
                    return BadRequest("Not able to add plant details see error log for more info");
            }
            else
                return BadRequest("Not able to add plants");

        }



        /// <summary>
        /// Edits the plant detail
        /// </summary>
        /// <param name="id"></param>
        /// <param name="plant"></param>
        /// <returns></returns>

        [HttpPut]
        [Route("api/PlantConfiguration/EditPlantInfo/{plantId:int}")]
        public IHttpActionResult EditPlantDetails(int? plantId, [FromBody]PlantInfoModel plant)
        {
            if (ModelState.IsValid && plant != null)
            {
                if (_info.UpdatePlantInfo(plantId, plant))
                    return Ok();
                else
                    BadRequest("Database exception ocuured see ErrorLog.txt for more info");

            }

            return BadRequest("enter valid plant details");
        }

        /// <summary>
        /// Get the department details
        /// </summary>
        /// <returns>List of department</returns>

        [HttpGet]
        [Route("api/PlantConfiguration/department/{plantId:int}")]
        public IHttpActionResult GetDepartment(int? plantId)
        {
            if (!plantId.HasValue)
                return BadRequest("Please provide plantID");
            List<string> departmentList = _info.RetriveDepartmentDetails(plantId);
            if (departmentList.Count > 0)
                return Ok(departmentList);
            else
                return BadRequest("There is no tags related to department");

        }

        /// <summary>
        /// Adds the department details.
        /// </summary>
        /// <param name="department"></param>
        /// <returns>The department id.</returns>
        /// 
        [HttpPost]
        [Route("api/PlantConfiguration/department")]
        public IHttpActionResult AddDepartment([FromBody]Department department)
        {
            if (ModelState.IsValid && department != null)
            {
                if (_info.RetrieveAsset().Any(item => item.Name.ToLower() == department.DepartmentName.ToLower() && item.Plant_ID == department.PlantId))

                    return BadRequest(department.DepartmentName + " department already exists");

                int assetId = _info.AddDepartment(department);
                if (assetId > 0)
                    return Created("api/PlantConfiguration/department", assetId.ToString());
                else
                    return BadRequest("Not able to add  department details see log file for more reference");

            }
            return BadRequest("Enter plant details properly");
        }

        /// <summary>
        /// Get the asset details.
        /// </summary>
        /// <returns>List of asset</returns>

        //[HttpGet]
        //[Route("api/PlantConfiguration/getAsset/{id:int}")]
        //public IHttpActionResult getAsset(int id)
        //{
        //    List<Asset> assetList = new List<Asset>();
        //    assetList = _info.RetrieveAssetBasedOnPlantId(id);
        //    if (assetList.Count > 0)
        //        return Ok(assetList);
        //    else
        //        return BadRequest("Asset list is empty");
        //}

        /// <summary>
        /// Get the EquipmentType.
        /// </summary>
        /// <returns>List of Equipment</returns>

        [HttpGet]
        [Route("api/PlantConfiguration/getEquipmentType")]
        public IHttpActionResult GetEquipmentType()
        {
            List<string> equipmentList = _info.GetEquipmentType();
            if (equipmentList.Count > 0)
                return Ok(equipmentList);
            else
                return BadRequest("Equipment list is empty");
        }
        /// <summary>
        /// Get the energy type.
        /// </summary>
        /// <returns>List of Energy type</returns>

        [HttpGet]
        [Route("api/PlantConfiguration/getEnergyType")]
        public IHttpActionResult getEnergyType()
        {
            List<string> energyTypeList = _info.GetEnergyType();
            if (energyTypeList.Count > 0)
                return Ok(energyTypeList);
            else
                return BadRequest("Energy type list is empty");
        }

        /// <summary>
        /// Get the Zone Name.
        /// </summary>
        /// <returns></returns>
        /// 
        [HttpGet]
        [Route("api/PlantConfiguration/getZone")]

        public IHttpActionResult getZone()
        {
            List<string> zoneList = _info.GetZone();
            if (zoneList.Count > 0)
                return Ok(zoneList);
            else
                return BadRequest("Energy type list is empty");
        }

        /// <summary>
        /// Get Unit Of Measurment detials.
        /// </summary>
        /// <returns>List of UOMs.</returns>
        /// 
        [HttpGet]
        [Route("api/PlantConfiguration/getUOM")]

        public IHttpActionResult getUOM()
        {
            List<string> uOMList = _info.GetUOM();
            if (uOMList.Count > 0)
                return Ok(uOMList);
            else
                return BadRequest("UOM list is empty");
        }
        /// <summary>
        /// Get the country details.
        /// </summary>
        /// <returns>List pf</returns>
        [HttpGet]
        [Route("api/PlantConfiguration/getCountry")]
        public IHttpActionResult GetCountry()
        {

            List<string> countryList = _info.GetCountry();
            if (countryList.Count > 0)
                return Ok(countryList);
            else
                return BadRequest("Country list is empty");
        }



        /// <summary>
        /// Adds the building details.
        /// </summary>
        /// <param name="building"></param>
        /// <returns>The  Building ID. </returns>

        [HttpPost]
        [Route("api/PlantConfiguration/Building")]
        public IHttpActionResult AddBuilding([FromBody]Building building)
        {
            if (ModelState.IsValid && building != null)
            {
                if (_info.RetrieveAsset().Any(item => item.Name.ToLower() == building.BuildingName.ToLower() && item.Plant_ID == building.PlantId))

                    return BadRequest(building.BuildingName + " building already exists");
                int assetId = _info.AddBuilding(building);
                if (assetId > 0)
                    return Created("api/PlantConfiguration/Building", assetId.ToString());
                else
                    return BadRequest("Not able to add  department details see log file for more reference");

            }
            return BadRequest("Enter plant details properly");

        }


        /// <summary>
        /// Retrieve building details.
        /// </summary>
        /// <returns> List of building. </returns>

        [HttpGet]
        [Route("api/PlantConfiguration/Building/{plantId:int}")]
        public IHttpActionResult RetieveBuilding(int? plantId)
        {
            if (!plantId.HasValue)
                return BadRequest("Please provide plantID");
            List<string> buildingList = _info.RetrieveBuilding(plantId);
            if (buildingList.Count > 0)
                return Ok(buildingList);
            else
                return BadRequest("There is no tags related to building");
        }

        /// <summary>
        /// Get the equipment details. 
        /// </summary>
        /// <returns>List of equipment.</returns>

        [HttpGet]
        [Route("api/PlantConfiguration/Equipment/{plantId:int}")]
        public IHttpActionResult RetrieveEquipmentDetails(int? plantId)
        {
            List<string> equipmentList = new List<string>();
            equipmentList = _info.RetrieveEquipmentInfo(plantId);
            if (equipmentList.Count > 0)
                return Ok(equipmentList);
            else
                return BadRequest("Equipment list is empty");
        }

        /// <summary>
        /// Adds the equipment details.
        /// </summary>
        /// <param name="equipment"></param>
        /// <returns>Asset id.</returns>
        [HttpPost]
        [Route("api/PlantConfiguration/Equipment")]
        public IHttpActionResult AddEquipment([FromBody]Equipment equipment)
        {
            if (ModelState.IsValid && equipment != null)
            {
                if (_info.RetrieveAsset().Any(item => item.Name.ToLower() == equipment.EquipmentName.ToLower() && item.Plant_ID == equipment.PlantId))
                    return BadRequest(equipment.EquipmentName + " Equipment already exists");
                int assetId = _info.AddEquipmentInfo(equipment);
                if (assetId > 0)
                    return Created("api/PlantConfiguration/Equipment", assetId.ToString());
                else
                    return BadRequest("Not able to add  department details see log file for more reference");

            }
            return BadRequest("Enter plant details properly");

        }

        /// <summary>
        /// Get the asset type.
        /// </summary>
        /// <returns></returns>

        [HttpGet]
        [Route("api/PlantConfiguration/getAssetType")]
        public IHttpActionResult GetAssetType()
        {
            List<string> assetTypeList = _info.RetrieveAssetType();
            if (assetTypeList.Count > 0)
                return Ok(assetTypeList);
            else
                return BadRequest("Equipment list is empty");
        }

        /// <summary>
        /// Get the Asset.
        /// </summary>
        /// <param name="assetType"></param>
        /// <returns></returns>
        /// 
        [HttpGet]
        [Route("api/PlantConfiguration/getAsset/{assetType}")]
        public IHttpActionResult getAsset(string assetType)
        {
            List<string> assetTypeList = _info.RetrieveAsset(assetType);
            if (assetTypeList.Count > 0)
                return Ok(assetTypeList);
            else
                return BadRequest("Equipment list is empty");
        }
        /// <summary>
        /// Get the Asset. with Plant ID
        /// </summary>
        /// <param name="assetType"></param>
        /// <returns></returns>
        /// 
        [HttpGet]
        [Route("api/PlantConfiguration/getAsset/{assetType}/{id:int}")]
        public IHttpActionResult getAsset(string assetType, int id)
        {
            List<string> assetTypeList = _info.RetrieveAssetByPlantId(assetType, id);
            if (assetTypeList.Count > 0)
                return Ok(assetTypeList);
            else
                return BadRequest("Asset list is empty");
        }
        /// <summary>
        /// Adds the shift details. 
        /// </summary>
        /// <param name="shift"></param>
        /// <returns></returns>

        [HttpPost]
        [Route("api/PlantConfiguration/Shift")]
        public IHttpActionResult AddShiftDetails([FromBody]Shift shift)
        {
            if (ModelState.IsValid && shift != null)
            {
                if (_info.AddShiftInfo(shift))
                {
                    return Created("api/PlantConfiguration/Shift", shift);
                }
                else

                    return BadRequest("Not able to add product details  to the database see errorlog for more information");
            }
            return BadRequest("please enter valid product details");

        }

        /// <summary>
        /// retrieve shift details.
        /// </summary>
        /// <returns></returns>

        [HttpGet]
        [Route("api/PlantConfiguration/Shift")]
        public IHttpActionResult RetrieveShifttDetails()
        {
            List<Shift> shifttList = _info.RetrieveShiftInfo();
            if (shifttList.Count > 0)
                return Ok(shifttList);
            else
                return BadRequest("Not able to retrieve Equipment details");
        }


        /// <summary>
        /// Add the tag details.
        /// </summary>
        /// <param name="stringifiedjsondata"></param>
        /// <returns></returns>

        [HttpPost]
        [Route("api/PlantConfiguration/MapTags")]
        public IHttpActionResult PostTagDetails([FromBody]Tags tag)
        {

            if (ModelState.IsValid)
            {
                try
                {
                 
                    List<Tag> tagIDs = _info.AddTagMappingDetails(tag);
                    if (tagIDs.Count > 0)
                    {
                        return Created("api/PlantConfiguration/MapTags", tagIDs);
                    }
                    else
                        return BadRequest("Not able to add tag details to the database see errorlog for more information");

                }
                catch (Exception ex)
                {
                    return BadRequest("Not able to format data");
                }

            }
            return BadRequest("empty data");
        }
        [HttpPut]
        [Route("api/PlantConfiguration/MapTags/EditTagDetails/{id:int}")]
        public IHttpActionResult EditTagDetails(int? id, Tags tag)
        {
            if (!id.HasValue)
                return BadRequest("Please specify the plantID");
            if (_info.UpdateTagInfo(id, tag))
                return Ok();
            else
                return BadRequest("Tag details are not updated");
        }

        /// <summary>
        /// Get the tagmapping details.
        /// </summary>
        /// <returns>List of tagnames</returns>

        [HttpGet]
        [Route("api/PlantConfiguration/getAsset/{id:int}")]
        public IHttpActionResult GetTagmappingDetails(int id)
        {
            List<TagMappingDetails> tagmappingList = _info.GetTagMappingDetailsOnPlantId(id);
            if (tagmappingList.Count > 0)
                return Ok(tagmappingList);
            else
                return BadRequest("TagMapping list is empty");
        }
        /// <summary>
        /// Get Alarm details.
        /// </summary>
        /// <returns>List of tagnames</returns>

        [HttpGet]
        [Route("api/PlantConfiguration/GetTAlarmDetails/{id:int}")]
        public IHttpActionResult GetTAlarmDetails(int id)
        {
            List<AlarmEnble> alarmList = _info.GetAlaramData(id);
            if (alarmList.Count > 0)
                return Ok(alarmList);
            else
                return BadRequest("Alarm list is empty");
        }
        /// <summary>
        /// AddTagId
        /// </summary>
        /// <param name="alarm"></param>
        /// <returns></returns>
        [HttpPost]
        [Route("api/PlantConfiguration/SendEmail")]
        public IHttpActionResult AddTagId([FromBody] Alarms alarm)
        {
            if (ModelState.IsValid && alarm != null)
            {
                bool flag = _info.AddAlarmInfo(alarm);
                List<EmailInfo> email = _info.GetPlantName(alarm);
                if (email.Count > 0)
                {
                    _info.SendEmailNotification(email, alarm.Value,alarm.TimeStamp);
                    return Created("Success", alarm);
                }
                else

                    return BadRequest("Failure");
            }
            return BadRequest("please enter valid details");

        }

        [HttpPost]
        [Route("api/PlantConfiguration/SaveXmlDocument")]
        public IHttpActionResult SaveXmlDocument(HttpRequestMessage request)
        {
            string incomingText = request.Content.ReadAsStringAsync().Result;
            XElement incomingXml = XElement.Parse(incomingText);
            var user = incomingXml.Elements("PlantConfiguration").Attributes("User").Select(i=>i.Value).FirstOrDefault();
            var datetime = incomingXml.Elements("PlantConfiguration").Attributes("DateTime").Select(i=>i.Value).FirstOrDefault();
            var plantId = incomingXml.Elements("PlantConfiguration").Elements("PlantInfo").Elements("Plant").
                Attributes("PlantId").Select(i => i.Value).FirstOrDefault();
            
            if (_info.SaveXmlDocument(incomingXml, user, datetime, plantId))
             
            return Ok();
            else
                return  BadRequest("please send valid xml");
        }

        [HttpGet]
        [Route("api/PlantConfiguration/GetXmlDocument/{plantid:int}")]
        public IHttpActionResult GetXmlDocument(int plantid)
        {
            string xmldocs = _info.getXmlDocument(plantid);
            if (!string.IsNullOrEmpty(xmldocs))
                return Ok(xmldocs);
            else
                return BadRequest("Not getting xml document");

        }

        [HttpPost]
        [Route("api/PlantConfiguration/SaveLastSync")]
        public IHttpActionResult SaveLastSync([FromBody] Sync sync)
        {
            int plantId;
            DateTime lastSync;
            if (!int.TryParse(sync.PlantID, out plantId) || !DateTime.TryParse(sync.Date, out lastSync))
                return BadRequest("Please send valid data");
            if (_info.UpdateLastSync(plantId, lastSync))
                return Ok();
            else
                return BadRequest("Data is not updated");
        }
    }
}
