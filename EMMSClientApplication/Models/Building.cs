using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EMMSClientApplication.Models
{
    public class Building
    {
        [Required]
        public string  BuildingName { get; set; }
        [Required]
        public int? PlantId { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }

    }
}