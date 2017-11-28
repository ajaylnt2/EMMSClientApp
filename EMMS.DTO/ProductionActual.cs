using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EMMS.DTO
{
   public class ProductionActual
    {
        [Required]
        public int CurrentYear { get; set; }
        [Required]
        public List<string> Month { get; set; }
        [Required]
        public List<string> UOM { get; set; }
        [DataType(DataType.Currency)]
        public double Value { get; set; }
    }
    public class ProductionDetails
    {
        public string Department { get; set; }
        public int AssetID { get; set; }
        public double Jan { get; set; }
        public double Feb { get; set; }
        public double Mar { get; set; }
        public double Apr { get; set; }
        public double May { get; set; }
        public double Jun { get; set; }
        public double Jul { get; set; }
        public double Aug { get; set; }
        public double Sep { get; set; }
        public double Oct { get; set; }
        public double Nov { get; set; }
        public double Dec { get; set; }
        public string UOM { get; set; }
        public int UOMID { get; set; }
    }
}
