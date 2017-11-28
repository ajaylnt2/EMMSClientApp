using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EMMSClientApplication.Models
{
    public class User
    {
        #region public properties
        [Required]
        public string UserName { get; set; }
        public string email { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public string country { get; set; }
        public string Error { get; set; }

        #endregion
    }
}