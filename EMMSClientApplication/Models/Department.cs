using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EMMSClientApplication.Models
{
    public class Department
    {
        [Required]
        public string DepartmentName { get; set; }
        [Required]
        public int? PlantId { get; set; }
        public string  CreatedBy { get; set; }
        public string ModifiedBy { get; set; }
    }
}