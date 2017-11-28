using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EMMSClientApplication.Models
{
    public class Utilities
    {
        public string HostName { get; set; }
        public string DeviceId { get; set; }

        public string DevicePrimaryKey { get; set; } //Remove once
        public string SharedAccessSignature { get; set; }
    }
}