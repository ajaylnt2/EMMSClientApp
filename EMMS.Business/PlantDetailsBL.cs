using EMMS.Business.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EMMS.DTO;
using EMMS.DataAccess.Interface;

namespace EMMS.Business
{
    public class PlantDetailsBL : IDataForDropdown
    {
        IGetItemForCombobox listOfValues;

        public PlantDetailsBL(IGetItemForCombobox listOfValues)
        {
            this.listOfValues = listOfValues;
        }
        public List<Assets> GetsAssets()
        {
            throw new NotImplementedException();
        }

        public List<Details> GetUOMs()
        {
            return listOfValues.GetUOMs();
        }

        public List<Details> GetWages()
        {
            return listOfValues.GetWages();
        }
    }
}
