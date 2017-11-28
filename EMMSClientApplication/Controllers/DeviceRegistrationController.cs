using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Microsoft.Azure.Devices;
using System.Threading.Tasks;
using Microsoft.Azure.Devices.Common.Exceptions;
using System.Configuration;
using EMMSClientApplication.Models;
using EMMSClientApplication.EMMSDAL;
using System.Net.NetworkInformation;
using EMMSClientApplication;
using EMMS.Log;

namespace EMMSClientApplication.Controllers
{

    //**************************************************************
    // Class Name  :  DeviceRegistrationController
    // Purpose	   :  To Register the device to IOT hub and return the device id
    // Modification History:
    //  Ver #       Date      	    Author/Modified By	    Remarks
    //--------------------------------------------------------------
    //   1.0        24-March-17  	    Vishwajeet Kumar        Initial    

    //**************************************************************


    public class DeviceRegistrationController : ApiController
    {
        private PlantInfo _info = new PlantInfo();

        /// <summary>
        /// This method registers the device to IOT Hub if the device's MAC ID  is present in the database
        /// </summary>
        /// <param name="value">Accept the MAC ID from the Request body</param>
        /// <returns>Object having 'token' returned from IOT HUb after successfull registration and the 'host name' and token as its member.</returns>
        [HttpPost]

        public async Task<IHttpActionResult> DeviceRegistration([FromBody]string value)
        {
            string token = "";
            string str = "";
            string connectionString = ConfigurationManager.AppSettings["IoTHubConnectionString"];
           

            if (_info.IsDeviceAvailable(value))
            {
                GetSASToken gtToken = new GetSASToken();
                if (!string.IsNullOrEmpty(connectionString))
                {
                    str = gtToken.sanitizeConnectionString(connectionString);

                }
                var registryManager = RegistryManager.CreateFromConnectionString(ConfigurationManager.AppSettings["IoTHubConnectionString"]);
                try
                {
                    var device = await registryManager.AddDeviceAsync(new Device(value));
                    token = gtToken.parseIoTHubConnectionString(str, device);
                    var iotHubConnectionStringBuilder = IotHubConnectionStringBuilder.Create(ConfigurationManager.AppSettings["IoTHubConnectionString"]);
                    return Ok((new Utilities
                    {
                        HostName = iotHubConnectionStringBuilder.HostName,
                        DeviceId = device.Id,
                        DevicePrimaryKey = device.Authentication.SymmetricKey.PrimaryKey.ToString(),
                        SharedAccessSignature = token ?? "Token is not generated"
                    }));
                }
                catch (DeviceAlreadyExistsException ex)
                {
                    //Logger.Log(ex.ToString());
                    var device = await registryManager.GetDeviceAsync(value);
                    //return Request.CreateErrorResponse(HttpStatusCode.Conflict, "device with ID " + device.Id + "already exists");
                    token = gtToken.parseIoTHubConnectionString(str, device);
                    var iotHubConnectionStringBuilder = IotHubConnectionStringBuilder.Create(ConfigurationManager.AppSettings["IoTHubConnectionString"]);
                    return Ok(new Utilities
                    {
                        HostName = iotHubConnectionStringBuilder.HostName,
                        DeviceId = device.Id,
                        DevicePrimaryKey = device.Authentication.SymmetricKey.PrimaryKey.ToString(),
                        SharedAccessSignature = token ?? "Token is not generated"

                    });
                }

                catch (IotHubCommunicationException ex)
                {
                    Logger.Log(ex.ToString());
                    return BadRequest(ex.Message);
                }
                catch (Exception ex)
                {
                    Logger.Log(ex.ToString());
                    return BadRequest(ex.Message);
                }
            }

            else
                return BadRequest("Invalid Device");
        }
    }
}
