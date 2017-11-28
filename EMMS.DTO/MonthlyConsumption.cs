using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EMMS.DTO
{
    public class MonthlyConsumption
    {
        public string WAGES { get; set; }
        public int WagesId { get; set; }
        public double Consumption { get; set; }
        public string UOM { get; set; }
        public int UOMID { get; set; }
        public double Cost { get; set; }

    }
}
