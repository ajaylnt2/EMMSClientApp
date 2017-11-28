using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EMMSRestServices.Models
{
    public class Budget
    {
        public int id { get; set; }
        public string Month { get; set; }
        public string Year { get; set; }
        public int wage_id { get; set; }
        public int plant_id { get; set; }
        public int Consumption { get; set; }
        public string UOM { get; set; }
    }
}