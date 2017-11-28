using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EMMSClientApplication.Models
{
    public class EnergyConsumption
    {
        public int WageID { get; set; }
        public int? MonthID { get; set; }
        public int? YearID { get; set; }
        public int? WageType { get; set; }
        public int plant_id { get; set; }
        public float? Cost { get; set; }
        public float? Consumption { get; set; }
        public int?   UOM { get; set; }
    }
}