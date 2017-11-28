using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EMMSClientApplication.Models
{
    public class Asset
    {
        public int? ID { get; set; }
        public string  Name { get; set; }
        public string Description { get; set; }
        public int? Plant_ID { get; set; }
        public int? Parent_ID { get; set; }
        public DateTime CreatedDt{ get; set; }
        public string  CreatedBy { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime ModifiedDt { get; set; }
        public string Active { get; set; }

    }
}