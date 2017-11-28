using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EMMS.DTO
{
   public class WageUomMapping
    {
     public int ID { get; set; }
     public string EnergyName { get; set; }
     public string EnergyType { get; set; }
    public int EnergyTypeID { get; set; }
   public int UOMID { get; set; }
        public string UOM { get; set; }

        public override bool Equals(object obj)
        {
            if (obj == null)
                return false;
            WageUomMapping maps = (WageUomMapping)obj;
            if (maps == null)
                return false;
            return this.EnergyName == maps.EnergyName && this.ID == maps.ID
                && this.EnergyType == maps.EnergyType && this.UOM == maps.UOM;
        }
        public override int GetHashCode()
        {
            return ID.GetHashCode()^EnergyName.GetHashCode()^EnergyType.GetHashCode()^UOM.GetHashCode();
        }
    }
}
