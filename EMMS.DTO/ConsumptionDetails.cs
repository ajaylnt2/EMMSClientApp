using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EMMS.DTO
{

    public class AnnualDetails
    {
        public int DetailsId { get; set; }
        public string DetailsName { get; set; }
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

        public override bool Equals(object obj)
        {
            if (obj == null)
                return false;
            AnnualDetails details = (AnnualDetails)obj;
            if (details == null)
                return false;
            return this.DetailsId == details.DetailsId && this.DetailsName == details.DetailsName
                && this.Jan == details.Jan && this.Feb == details.Feb && this.Mar == details.Mar
                && this.Apr == details.Apr && this.May == details.May && this.Jun == details.Jun
                && this.Jul == details.Jul && this.Aug == details.Aug && this.Sep == details.Sep
                && this.Oct == details.Oct && this.Nov == details.Nov && this.Dec == details.Dec
                && this.UOM == details.UOM && this.UOMID == details.UOMID;
        }
        public override int GetHashCode()
        {
            return (DetailsId.GetHashCode() ^ DetailsName.GetHashCode() ^ Jan.GetHashCode() ^ Feb.GetHashCode() ^ Apr.GetHashCode() ^ May.GetHashCode() ^ Jun.GetHashCode() ^ Jul.GetHashCode() ^ Aug.GetHashCode() ^ Sep.GetHashCode() ^ Oct.GetHashCode() ^ Nov.GetHashCode()
                 ^ Dec.GetHashCode() ^ UOM.GetHashCode() ^ UOMID.GetHashCode());
        }

    }
}
