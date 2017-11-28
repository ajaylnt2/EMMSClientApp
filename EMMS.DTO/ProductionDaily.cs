using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EMMS.DTO
{
    public class ProductionDaily
    {
        public int AssetId { get; set; }
        public string DepartName { get; set; }
        public double Total { get; set; }
        public string UOM { get; set; }
        public int UOMId { get; set; }
        public override bool Equals(object obj)
        {
            if (obj == null)
                return false;
            ProductionDaily daily = (ProductionDaily)obj;
            if (daily == null)
                return false;
            return this.AssetId == daily.AssetId && this.DepartName == daily.DepartName &&
                this.Total == daily.Total && this.UOM == daily.UOM && this.UOMId == daily.UOMId;
        }
        public override int GetHashCode()
        {
            return AssetId.GetHashCode() ^ DepartName.GetHashCode() ^ Total.GetHashCode() ^
                UOM.GetHashCode() ^ UOMId.GetHashCode();
        }
    }
}
