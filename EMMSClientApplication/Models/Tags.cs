using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EMMSClientApplication.Models
{
    public class Tags
    {
        public string EnergyType { get; set; }
        public string UOM { get; set; }
        public string TagName { get; set; }
        public string AssetTypeName { get; set; }
        public string AssetName { get; set; }
        public string IsExponential { get; set; }
        public string IsEnabled { get; set; }
        public double Target { get; set; }
    }
}