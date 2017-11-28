using EMMS.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using EMMSClientApplication.Models;

namespace EMMSUnitTest
{
   
    [Ignore]
   public static class TestData
    {
        public static List<AnnualDetails> TestAnnualData()
        {
            return new List<AnnualDetails> { new AnnualDetails { DetailsId = 1, DetailsName = "Test", Jan = 1234, Feb = 2321, Mar = 2423, Apr = 2131, May = 3234, Jun = 2342, Jul = 1232, Aug = 34221, Sep = 2322, Oct = 4332, Nov = 4332, Dec = 23423, UOM = "Kwh", UOMID = 1 } };
        }

        public static List<Details> DetailsData()
        {
            return new List<Details> { new Details { ID = 1, Name = "Beverages" } };
        }
        public static List<Details> WagesData()
        {
            return new List<Details> { new Details { ID = 1, Name = "Water" },
                new Details {ID= 2,Name= "Air"},
                new Details {ID= 3,Name= "Gas"},
                new Details {ID= 4,Name= "Electricity"},
                new Details {ID= 5,Name= "Steam"}
            };
        }
        public static List<Details> UOMData()
        {
            return new List<Details> { new Details { ID = 1, Name = "CFM" },
                new Details {ID= 2,Name= "kwh"},
                new Details {ID= 3,Name= "Lbs"},
                new Details {ID= 4,Name= "SCF"},
                new Details {ID= 5,Name= "SCFM"}
            };
        }

        public static List<WageUomMapping> getWagesUOMData()
        {
            return new List<WageUomMapping> { new WageUomMapping { ID = 1, EnergyName = "Test", EnergyType = "Electricity", UOM = "kwh" } };
        }
        [Ignore]
        public static Building getBuilding()
        {
            return new Building { BuildingName = "TestBuilding", PlantId = 1, CreatedBy = "Admin", ModifiedBy = "Admin" };
        }

        [Ignore]
        public static PlantInfoModel getPlant()
        {

            return new PlantInfoModel { PlantName = "TestPlant1", ZoneName = "APAC", Location = "Mysore", Country = "USA", Lattitude = "12.444", Longitude = "45.233", Active = "Y", CreatedDt = DateTime.Now, CreatedBy = "UnitTests", ModifiedDt = DateTime.Now, Modifiedby = "Admin" };
        }
        [Ignore]
        public static EMMSClientApplication.Models.Department getDepartment()
        {
            return new EMMSClientApplication.Models.Department { DepartmentName = "TestDepartment1", PlantId = 1, CreatedBy = "Admin", ModifiedBy = "Admin" };

        }
      
    }
}
