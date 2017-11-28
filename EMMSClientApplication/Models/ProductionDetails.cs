using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EMMSClientApplication.Models
{
    public class ProductionDetails
    {
        public string  Month { get; set; }
        public string Year { get; set; }
        public string Asset_Name { get; set; }
        public double? value { get; set; }
    }
}