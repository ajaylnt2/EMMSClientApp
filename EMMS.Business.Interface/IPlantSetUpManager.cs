using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EMMS.DTO;

namespace EMMS.Business.Interface
{
    public interface IPlantSetUpManager
    {

        int PlantId { get; set; }
        string UserName { get; set; }

        bool AddConsumptionActual(List<AnnualDetails> Consumption, string Year, int Wages, string procedure);

        bool AddProductionActual(List<AnnualDetails> production, string year, string procedure);

        bool AddMonthlyConsumption(List<MonthlyConsumption> monthlyconsum, string Year, int WagesId, int MonthID);
        bool AddMonthlySolidwaste(List<MonthlyConsumption> monthlysolid, string Year, int MonthID);
        bool AddCSolidwasteActual(List<AnnualDetails> Consumption, string Year, string procedure);

        bool AddSolidwasteDaily(List<ProductionDaily> production, double solidwaste, string date);
        bool AddProductonDaily(List<ProductionDaily> production, string date);
        bool SaveWageMapping(string energyName, int energyType, int UOM, int ID);
        bool SaveBaseYear(string year);
        bool EditConfiguration(WageUomMapping wages);
        /// <summary>
        /// Get Actual Consumption
        /// </summary>
        /// <param name="year"></param>
        /// <returns></returns>
        List<AnnualDetails> GetConsumptionActual(int year, int wagesID, string procedure);

        List<AnnualDetails> GetSolidWaste(int year, string procedure);

        /// <summary>
        /// Get Monthly Consumption
        /// </summary>
        /// <param name="yearId"></param>
        /// <param name="monthId"></param>
        /// <returns></returns>
        List<int> GetYearsLists();
        List<MonthlyConsumption> GetMonthlySolidwaste(int yearId, int monthId);
        /// <summary>
        /// Get Actual Production
        /// </summary>
        /// <param name="year"></param>
        /// <returns></returns>
        List<AnnualDetails> GetProductionActual(int year, string procedure);
        /// <summary>
        /// Get Department Details
        /// </summary>
        /// <returns></returns>
        List<Details> GetDepartment();
        List<Details> GetPlantNames();
        /// <summary>
        /// Get daily production data
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        List<ProductionDaily> GetDailyProduction(string date);
        /// <summary>
        /// Get Solid waste Daily
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        List<ProductionDaily> GetSolidWasteDaily(string date);
        List<WageUomMapping> GetWageMapping();
        List<AlarmEnble> GetAlaramData();
        List<Assets> GetUserDetails(string emailId);
        bool UpdateAlarmInfo(List<AlarmEnble> alarminfo);
        int GetCurrentBaseYear();
        bool AddUSDExchnageRate(double rate, int year);
        List<Currency> GetCurrency();
        bool UpdateCurrency(string currency);
        string GetUpdatedCurrency();
        double GetUSDRate(string year);
        List<Details> GetUOMs();
        List<Details> GetDeviceID();
        bool AddUom(string uom);
        bool AddDeviceId(string Id);
        bool AddEmailConfig(List<EmailConfiguration> emailConfig);
        bool UpdateDevice(int id, string deviceid);
        bool UpdateUOM(int id, string uom);
        List<EmailConfiguration> GetEmailConfig();
        bool AddUserMapping(int userId, string plantid);
        bool AddEmailList(string[] email, int id);
        List<Details> GetEmailList();
        List<string> GetMacID();
        List<UserMapping> GetUserMappingList();
        bool DeleteEmail(int Id);
        bool DeleteUSer(int UserId);
        List<UserMapping> GetAdminList();
        bool saveDisplayName(int wages, string displayName, int id);
        List<Display> getDisplayNames();
        bool deleteDisplyName(int id);
        bool AddProductionUOMMapping(int productionUomId, int SolidawasteUomId);
        List<UOM> GetProductionUom();
        int CheckUOMMapping(string energyname, int type, int uom);
        List<EmailLst> GetEmailAddress(string emailId);
        bool AddEmailAddress(string emailId, int roleId, int Id);
        bool DeleteEmailAddress(int Id);
        bool DeleteUserMapping(int Id);
        List<Details> GetEmailListAdmin();
    }
}
