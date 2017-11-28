using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EMMS.DTO
{
    public class EmailConfiguration
    {
        public string smtpServer { get; set; }
        public int smtpPort { get; set; }
        public string smtpUserName { get; set; }
        public string smtpPassword { get; set; }
    }
}
