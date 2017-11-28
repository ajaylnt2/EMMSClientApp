using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EMMS.DTO
{
   public class Details
    {
        public int? ID { get; set; }
        public string Name { get; set; }

        public override bool Equals(object obj)
        {
            if (obj == null)
                return false;
            Details details = (Details)obj;
            if (details == null)
                return false;
            return this.ID == details.ID && this.Name == details.Name;
        }

        public override int GetHashCode()
        {
            return ID.GetHashCode() ^ Name.GetHashCode();
        }
    }
}
