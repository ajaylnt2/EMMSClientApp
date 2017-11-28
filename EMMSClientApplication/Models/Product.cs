using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EMMSRestServices.Models
{
    public class Product
    {
        public int ProductID { get; set; }
        public int MonthID { get; set; }
        public int YearID { get; set; }
        public int plant_id { get; set; }
        public double? Value { get; set; }
        public int Asset_id { get; set; }
        public string  UOM { get; set; }


    }
}