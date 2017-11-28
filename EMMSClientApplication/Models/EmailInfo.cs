using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EMMSClientApplication.Models
{
    public class EmailInfo
    {
        public int TagID { get; set; }
        public string TagName { get; set; }
        public string EmailID { get; set; }
        public int PlantId { get; set; }
        public string PlantName { get; set; }
      
    }
}