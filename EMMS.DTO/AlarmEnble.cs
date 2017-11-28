using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EMMS.DTO
{
    public class AlarmEnble
    {
        public int TagID { get; set; }
        public int AssetID { get; set; }
        public string TagName { get; set; }
        public string AssetName { get; set; }
        public string isEnabled { get; set; }
        public double Target { get; set; }

        public override bool Equals(object obj)
        {
            if (obj == null)
                return false;
            AlarmEnble alarm = (AlarmEnble)obj;
            if (alarm == null)
                return false;
            return this.TagID == alarm.TagID && this.AssetID == alarm.AssetID
                  && this.TagName == alarm.TagName && this.AssetName == alarm.AssetName
                  && this.isEnabled == alarm.isEnabled && this.Target == alarm.Target;
        }
        public override int GetHashCode()
        {
            return TagID.GetHashCode()^AssetID.GetHashCode()^TagName.GetHashCode()^
                AssetName.GetHashCode()^isEnabled.GetHashCode()^Target.GetHashCode();

        }
    }
}
