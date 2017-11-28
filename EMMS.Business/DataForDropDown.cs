using EMMS.Business.Interface;
using EMMS.DataAccess;
using EMMS.DataAccess.Interface;
using EMMS.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EMMS.Business
{
  public class DataForDropDown : IDataForDropdown
    {
        IGetItemForCombobox dropDownData;
        public DataForDropDown(IGetItemForCombobox dropDownData)
        {
            this.dropDownData = dropDownData;
        }
        public List<Wages> GetWages()
        {
            return dropDownData.GetWages();
        }
        public List<UOM> GetUOMs()
        {
            return dropDownData.GetUOMs();
        }
        public List<Assets> GetsAssets()
        {
            return dropDownData.GetsAssets();
        }
    }
}
