using EMMS.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EMMS.Business.Interface
{
    public interface IDataForDropdown
    {
        List<Details> GetWages();
        List<Details> GetUOMs();
        List<Assets> GetsAssets();
    }
}
