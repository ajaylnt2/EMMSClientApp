
using EMMS.Business.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EMMS.DTO;
using EMMS.DataAccess;
using EMMS.DataAccess.Interface;

namespace EMMS.Business
{
    public class PlantSetUpManager : IPlantSetUpManager
    {
        public IPlantSetupDal plntstup;
        private int plantid;
        private string userName;
        public int PlantId
        {
            get
            {
                return plantid;
            }

            set
            {
                plantid = value;

                if (plntstup != null)
                    plntstup.PlantId = value;
            }
        }
        public string UserName
        {
            get
            {
                return userName;
            }

            set
            {
                userName = value;

                if (plntstup != null)
                    plntstup.UserName = value;
            }
        }
        public PlantSetUpManager(IPlantSetupDal plntstup)
        {
            this.plntstup = plntstup;
        }
        public bool AddConsumptionActual(List<AnnualDetails> Consumption, string Year, int Wages, string procedure)
        {
            if (Consumption != null)
                return plntstup.AddConsumptionActual(Consumption, Year, Wages, procedure);
            else
                return false;
        }


        public bool AddMonthlyConsumption(List<MonthlyConsumption> monthlyconsum, string Year, int WagesId, int MonthID)
        {
            if (monthlyconsum != null)
                return plntstup.AddMonthlyConsumption(monthlyconsum, Year, WagesId, MonthID);
            else
                return false;
        }

        /// <summary>
        /// Get Actual Consumption
        /// </summary>
        /// <param name="year"></param>
        /// <returns></returns>
        public List<AnnualDetails> GetConsumptionActual(int year, int wagesID, string name)
        {
            return plntstup.GetConsumptionActual(year, wagesID, name);
        }
        public List<WageUomMapping> GetWageMapping()
        {
            return plntstup.GetWageMapping();
        }

        public List<int> GetYearsLists()
        {
            return plntstup.GetYears();
        }
        public List<MonthlyConsumption> GetMonthlySolidwaste(int yearId, int monthId)
        {
            return plntstup.GetMonthlySolidwaste(yearId, monthId);
        }
        public bool SaveWageMapping(string energyName, int energyType, int UOM, int ID)
        {
            if (!string.IsNullOrEmpty(energyName) && !string.IsNullOrEmpty(energyType.ToString()) && !string.IsNullOrEmpty(UOM.ToString()) && !string.IsNullOrEmpty(ID.ToString()))
                return plntstup.SaveWageMapping(energyName, energyType, UOM, ID);
            else
                return false;
        }
        /// <summary>
        /// Get Production actual
        /// </summary>
        /// <param name="year"></param>
        /// <returns></returns>
        public List<AnnualDetails> GetProductionActual(int year, string procedure)
        {
            return plntstup.GetProductionActual(year, procedure);
        }
        /// <summary>
        /// Get Department Details
        /// </summary>
        /// <returns></returns>
        public List<Details> GetDepartment()
        {
            return plntstup.GetDepartment();
        }


        public List<AnnualDetails> GetSolidWaste(int year, string procedure)
        {
            return plntstup.GetSolidWaste(year, procedure);
        }

        /// <summary>
        /// Get Daily Production
        /// </summary>
        /// <param name="year"></param>
        /// <returns></returns>
        public List<ProductionDaily> GetDailyProduction(string date)
        {
            return plntstup.GetProductionDaily(date);
        }
        /// <summary>
        /// Get Solidawaste Daily
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        public List<ProductionDaily> GetSolidWasteDaily(string date)
        {
            return plntstup.GetSolidWasteDaily(date);
        }

        public bool AddProductionActual(List<AnnualDetails> production, string year, string procedure)
        {
            if (production != null)
                return plntstup.AddProductionActual(production, year, procedure);
            else
                return false;
        }

        public bool EditConfiguration(WageUomMapping wages)
        {
            if (wages != null)
                return plntstup.EditConfiguration(wages);
            else
                return false;
        }

        public bool AddCSolidwasteActual(List<AnnualDetails> Consumption, string Year, string procedure)
        {
            if (Consumption != null)
                return plntstup.AddCSolidwasteActual(Consumption, Year, procedure);
            else
                return false;
        }


        public bool AddMonthlySolidwaste(List<MonthlyConsumption> monthlysolid, string Year, int MonthID)
        {
            if (monthlysolid != null)
                return plntstup.AddMonthlySolidwaste(monthlysolid, Year, MonthID);
            else
                return false;
        }

        public bool AddSolidwasteDaily(List<ProductionDaily> production, double solidwste, string date)
        {
            if (production != null)
                return plntstup.AddSolidwasteDaily(production, solidwste, date);
            else
                return false;
        }
        public bool SaveBaseYear(string year)
        {
            return plntstup.SaveBaseYear(year);
        }
        public bool AddProductonDaily(List<ProductionDaily> production, string date)
        {
            if (production != null)
                return plntstup.AddProductonDaily(production, date);
            else
                return false;
        }

        public List<AlarmEnble> GetAlaramData()
        {
            return plntstup.GetAlaramData();
        }

        public List<Assets> GetUserDetails(string emailId)
        {
            return plntstup.GetUserDetails(emailId);
        }
        public bool UpdateAlarmInfo(List<AlarmEnble> alarminfo)
        {
            if (alarminfo != null)
                return plntstup.UpdateAlarmInfo(alarminfo);
            else
                return false;
        }
        public int GetCurrentBaseYear()
        {
            return plntstup.GetCurrentBaseYear();
        }
        public bool AddUSDExchnageRate(double rate, int year)
        {
            if (rate != 0)
                return plntstup.AddUSDExchnageRate(rate, year);
            else
                return false;
        }
        public List<Currency> GetCurrency()
        {
            return plntstup.GetCurrency();
        }
        public bool UpdateCurrency(string currency)
        {
            if (currency != null)
                return plntstup.UpdateCurrency(currency);
            else
                return false;
        }

        public string GetUpdatedCurrency()
        {
            return plntstup.GetUpdatedCurrency();
        }

        public double GetUSDRate(string year)
        {
            return plntstup.GetUSDRate(year);
        }

        public List<Details> GetUOMs()
        {
            return plntstup.GetUOMs();
        }

        public List<Details> GetDeviceID()
        {
            return plntstup.GetDeviceID();
        }

        public bool AddUom(string uom)
        {
            if (uom != null)

                return plntstup.AddUom(uom);
            else
                return false;

        }
        public bool AddDeviceId(string Id)
        {
            if (Id != null)

                return plntstup.AddDeviceId(Id);
            else
                return false;
        }

        public bool AddEmailConfig(List<EmailConfiguration> emailConfig)
        {
            if (emailConfig != null)

                return plntstup.AddEmailConfig(emailConfig);
            else
                return false;
        }

        public bool UpdateDevice(int id, string deviceid)
        {
            if (id != 0 && deviceid != null)
            {
                return plntstup.UpdateDevice(id, deviceid);
            }
            else
            {
                return false;
            }
        }

        public bool UpdateUOM(int id, string uom)
        {
            if (id != 0 && uom != null)
            {
                return plntstup.UpdateUOM(id, uom);
            }
            else
            {
                return false;
            }
        }

        public List<EmailConfiguration> GetEmailConfig()
        {
            return plntstup.GetEmailConfig();
        }
        public List<string> GetMacID()
        {
            return plntstup.GetMacID();
		}
        public List<Details> GetPlantNames()
        {
            return plntstup.GetPlantNames();
        }
        public bool AddUserMapping(int userId, string plantid)
        {
            return plntstup.AddUserMapping(userId,plantid);
        }
        public bool AddEmailList(string[] email, int id)
        {
            return plntstup.AddEmailList(email, id);
        }
        public List<Details> GetEmailList()
        {
            return plntstup.GetEmailList();
        }
        public List<UserMapping> GetUserMappingList()
        {
            return plntstup.GetUserMappingList();
        }
        public bool DeleteEmail(int Id)
        {
            return plntstup.DeleteEmail(Id);
        }

        public bool DeleteUSer(int UserId)
        {
            return plntstup.DeleteUSer(UserId);
        }

        public List<UserMapping> GetAdminList()
        {
            return plntstup.GetAdminList();
        }

       public bool saveDisplayName(int wages,string displayName,int id)
        {
            return plntstup.saveDisplayName(wages, displayName,id);
        }

        public List<Display> getDisplayNames()
        {
            return plntstup.getDisplayNames();
        }

        public bool deleteDisplyName(int id)
        {
            return plntstup.deleteDisplyName(id);
        }

        public bool AddProductionUOMMapping(int productionUomId, int SolidawasteUomId)
        {
            return plntstup.AddProductionUOMMapping(productionUomId, SolidawasteUomId);
        }

        public List<UOM> GetProductionUom()
        {
            return plntstup.GetProductionUom();
        }

        public int CheckUOMMapping(string energyname, int type, int uom)
        {
            return plntstup.CheckUOMMapping(energyname,type,uom);
        }

        public List<EmailLst> GetEmailAddress(string emailId)
        {
            return plntstup.GetEmailAddress(emailId);
        }

        public bool AddEmailAddress(string emailId, int roleId, int Id)
        {
            return plntstup.AddEmailAddress(emailId,roleId,Id);
        }

        public bool DeleteEmailAddress(int Id)
        {
            return plntstup.DeleteEmailAddress(Id);
        }

        public bool DeleteUserMapping(int Id)
        {
            return plntstup.DeleteUserMapping(Id);
        }

        public List<Details> GetEmailListAdmin()
        {
            return plntstup.GetEmailListAdmin();
        }
    }
}