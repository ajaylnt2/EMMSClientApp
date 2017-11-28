using EMMS.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EMMS.DataAccess.Interface
{
   public interface IGetItemForCombobox
    {
        List<Details> GetWages();
        List<Details> GetUOMs();
        List<Assets> GetsAssets();     
    }
}
