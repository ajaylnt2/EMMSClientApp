using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EMMSClientApplication.Models
{
    public class Alarms
    {
        public int TagID { get; set; }
        public int PlantID { get; set; }
        [Required]
        public double Value { get; set; }
        public string TimeStamp { get; set; }
    }
}