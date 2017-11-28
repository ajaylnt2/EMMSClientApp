using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EMMSClientApplication.Models
{
    public class Shift
    {
        public int? ShiftId { get; set; }
        public int? PlantId { get; set; }

        [Required]
        public string ShiftName { get; set; }
        [Required]
        [DataType(DataType.DateTime,ErrorMessage = "Please specify the start date")]
        public DateTime StartDate { get; set; }
        [DataType(DataType.DateTime, ErrorMessage = "Please specify the End date")]
        public DateTime EndDate { get; set; }
        [Required]
        [Range(0,23,ErrorMessage ="Hours must be between 0 and 23")]
        public int? StartHour { get; set; }
        [Required]
        [Range(0, 23, ErrorMessage = "Hours must be between 0 and 23")]
        public int? EndHour { get; set; }
        public string Active { get; set; }
        public DateTime CreatedDt { get; set; }
        public string  CreatedBy { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime ModifiedDt { get; set; }
    }
}