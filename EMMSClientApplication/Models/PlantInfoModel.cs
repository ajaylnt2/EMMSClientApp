using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EMMSClientApplication.Models
{
    public class PlantInfoModel
    {
        public int? PlantID { get; set; }
        [Required]
        public string PlantName { get; set; }
        public string  ZoneName { get; set; }
        [Required]
        public string Location { get; set; }
        [Required]
        public string Country { get; set; }
        [Required]
        public string Lattitude { get; set; }
        [Required]
        public string Longitude { get; set; }
        public string Active { get; set; }
        public DateTime CreatedDt { get; set; }
        public string CreatedBy { get; set; }
        public string Modifiedby { get; set; }
        public DateTime ModifiedDt { get; set; }


    }
}