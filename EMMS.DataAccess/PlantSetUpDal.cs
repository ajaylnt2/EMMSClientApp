
using EMMS.DataAccess.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EMMS.DTO;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;
using System.Globalization;
using System.Web;
using EMMS.Log;

namespace EMMS.DataAccess
{
    public class PlantSetUpDal : IPlantSetupDal
    {
        public int PlantId
        {
            get; set;
        }
        public string UserName
        {
            get; set;
        }
        private readonly string connectionstring = ConfigurationManager.ConnectionStrings["EmmsDB"].ConnectionString;

        private SqlConnection SqlConnect()
        {
            SqlConnection sqlConn;
            sqlConn = new SqlConnection(connectionstring);
            sqlConn.Open();
            return sqlConn;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="consumption"></param>
        /// <returns></returns>
        public bool AddConsumptionActual(List<AnnualDetails> Consumption, string Year, int Wages, string procedure)
        {
            string procedureName = StoreProcedureUtility.storedProcedureMapping.ContainsKey(procedure) ? StoreProcedureUtility.storedProcedureMapping[procedure] : "";
            if (string.IsNullOrEmpty(procedureName))
                return false;
            try
            {

                using (SqlConnection sqlConn = SqlConnect())
                {

                    foreach (var item in Consumption)
                    {

                        using (SqlCommand command = new SqlCommand(procedureName, sqlConn))
                        {
                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@WAGES", item.DetailsId);
                            AddParam(item, command, procedureName);
                            command.Parameters.AddWithValue("@Year", Year);
                            command.Parameters.AddWithValue("@WagesId", Wages);
                            command.Parameters.AddWithValue("@UN", UserName);
                            command.ExecuteNonQuery();
                        }
                    }

                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in AddAcutalInputConsumption" + ex.ToString());
                return false;
            }

        }

        private void AddParam(AnnualDetails item, SqlCommand command, string procedureName)
        {
            command.Parameters.AddWithValue("@Jan", item.Jan);
            command.Parameters.AddWithValue("@Feb", item.Feb);
            command.Parameters.AddWithValue("@Mar", item.Mar);
            command.Parameters.AddWithValue("@Apr", item.Apr);
            command.Parameters.AddWithValue("@May", item.May);
            command.Parameters.AddWithValue("@Jun", item.Jun);
            command.Parameters.AddWithValue("@Jul", item.Jul);
            command.Parameters.AddWithValue("@Aug", item.Aug);
            command.Parameters.AddWithValue("@Sep", item.Sep);
            command.Parameters.AddWithValue("@Oct", item.Oct);
            command.Parameters.AddWithValue("@Nov", item.Nov);
            command.Parameters.AddWithValue("@Dec", item.Dec);
            if (procedureName != "AddsoliwasteActualCost" && procedureName != "AddsoliwasteBudgetedCost")
            {
                command.Parameters.AddWithValue("@UOM", item.UOMID);
            }

            command.Parameters.AddWithValue("@PlantID", PlantId);
        }

        public bool AddProductionActual(List<AnnualDetails> production, string year, string procedure)
        {
            string procedureName = StoreProcedureUtility.storedProcedureMapping.ContainsKey(procedure) ? StoreProcedureUtility.storedProcedureMapping[procedure] : "";
            if (string.IsNullOrEmpty(procedureName))
                return false;
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    foreach (var item in production)
                    {
                        using (SqlCommand command = new SqlCommand(procedureName, sqlConn))
                        {

                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@Department", item.DetailsId);
                            AddParam(item, command, procedureName);
                            command.Parameters.AddWithValue("@Year", year);
                            command.Parameters.AddWithValue("@UN", UserName);
                            command.ExecuteNonQuery();
                        }
                    }
                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in AddProductionActual: " + ex.ToString());
                return false;
            }
        }


        public bool AddMonthlyConsumption(List<MonthlyConsumption> monthlyconsum, string Year, int WagesId, int MonthID)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    foreach (var item in monthlyconsum)
                    {
                        using (SqlCommand command = new SqlCommand("AddMonthlyConsumption", sqlConn))
                        {
                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@WagesId", WagesId);
                            command.Parameters.AddWithValue("@PlantID", PlantId);
                            command.Parameters.AddWithValue("@Consumption", item.Consumption);
                            command.Parameters.AddWithValue("@Cost", item.Cost);
                            command.Parameters.AddWithValue("@UOMID", item.UOMID);
                            command.Parameters.AddWithValue("@Wages", item.WagesId);
                            command.Parameters.AddWithValue("@YearID", Year);
                            command.Parameters.AddWithValue("@MonthID", MonthID);
                            command.ExecuteNonQuery();
                        }
                    }
                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in AddMonthlyConsumption: " + ex.ToString());
                return false;
            }
        }
        /// <summary>
        /// Get Actual Consumption
        /// </summary>
        /// <param name="year"></param>
        /// <returns></returns>
        public List<AnnualDetails> GetConsumptionActual(int year, int wagesID, string procedure)
        {
            string procedureName = StoreProcedureUtility.storedProcedureMapping.ContainsKey(procedure) ? StoreProcedureUtility.storedProcedureMapping[procedure] : "";

            return GetCommomValues(year, wagesID.ToString(), procedureName);

        }

        private List<AnnualDetails> GetCommomValues(int year, string wagesID, string procedureName)
        {
            List<AnnualDetails> consumptionList = new List<AnnualDetails>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand(procedureName, sqlConn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Year", year);
                        cmd.Parameters.AddWithValue("@PlantID", PlantId);
                        if (!string.IsNullOrEmpty(wagesID.ToString()))
                        {
                            int wageid;
                            if (int.TryParse(wagesID.ToString(), out wageid))
                                cmd.Parameters.AddWithValue("@WagesId", wageid);
                        }


                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                consumptionList.Add(
                                    new AnnualDetails
                                    {
                                        DetailsName = reader["Wages"].ToString(),
                                        DetailsId = !string.IsNullOrEmpty(reader["WagesID"].ToString()) ? Convert.ToInt32(reader["WagesID"].ToString()) : 0,
                                        UOM = !string.IsNullOrEmpty(reader["UOM"].ToString()) ? reader["UOM"].ToString() : GetUpdatedCurrency(),
                                        UOMID = !string.IsNullOrEmpty(reader["UOMID"].ToString()) ? Convert.ToInt32(reader["UOMID"].ToString()) : 0,
                                        Jan = !string.IsNullOrEmpty(reader["Jan"].ToString()) ? Convert.ToDouble(reader["Jan"].ToString()) : 0,
                                        Feb = !string.IsNullOrEmpty(reader["Feb"].ToString()) ? Convert.ToDouble(reader["Feb"].ToString()) : 0,
                                        Mar = !string.IsNullOrEmpty(reader["Mar"].ToString()) ? Convert.ToDouble(reader["Mar"].ToString()) : 0,
                                        Apr = !string.IsNullOrEmpty(reader["Apr"].ToString()) ? Convert.ToDouble(reader["Apr"].ToString()) : 0,
                                        May = !string.IsNullOrEmpty(reader["May"].ToString()) ? Convert.ToDouble(reader["May"].ToString()) : 0,
                                        Jun = !string.IsNullOrEmpty(reader["Jun"].ToString()) ? Convert.ToDouble(reader["Jun"].ToString()) : 0,
                                        Jul = !string.IsNullOrEmpty(reader["Jul"].ToString()) ? Convert.ToDouble(reader["Jul"].ToString()) : 0,
                                        Aug = !string.IsNullOrEmpty(reader["Aug"].ToString()) ? Convert.ToDouble(reader["Aug"].ToString()) : 0,
                                        Sep = !string.IsNullOrEmpty(reader["Sep"].ToString()) ? Convert.ToDouble(reader["Sep"].ToString()) : 0,
                                        Oct = !string.IsNullOrEmpty(reader["Oct"].ToString()) ? Convert.ToDouble(reader["Oct"].ToString()) : 0,
                                        Nov = !string.IsNullOrEmpty(reader["Nov"].ToString()) ? Convert.ToDouble(reader["Nov"].ToString()) : 0,
                                        Dec = !string.IsNullOrEmpty(reader["Dec"].ToString()) ? Convert.ToDouble(reader["Dec"].ToString()) : 0
                                    }
                                    );
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in GetConsumptionActual" + ex.ToString());
            }
            return consumptionList;
        }

        /// <summary>
        /// GetSolidWaste
        /// </summary>
        /// <param name="year"></param>
        /// <param name="wagesID"></param>
        /// <returns></returns>
        public List<AnnualDetails> GetSolidWaste(int year, string procedure)
        {
            string procedureName = StoreProcedureUtility.storedProcedureMapping.ContainsKey(procedure) ? StoreProcedureUtility.storedProcedureMapping[procedure] : "";

            return GetSolidWasteValues(year, procedureName);
        }



        private List<AnnualDetails> GetSolidWasteValues(int year, string procedureName)
        {
            List<AnnualDetails> consumptionList = new List<AnnualDetails>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand(procedureName, sqlConn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Year", year);
                        cmd.Parameters.AddWithValue("@PlantID", PlantId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                consumptionList.Add(
                                    new AnnualDetails
                                    {

                                        UOM = !string.IsNullOrEmpty(reader["UOM"].ToString()) ? reader["UOM"].ToString() : GetUpdatedCurrency(),
                                        UOMID = Enumerable.Range(0, reader.FieldCount).Select(i => reader.GetName(i)).ToList().Contains("UOMId") && !string.IsNullOrEmpty(reader["UOMID"].ToString()) ? Convert.ToInt32(reader["UOMId"].ToString()) : 0,
                                        Jan = !string.IsNullOrEmpty(reader["Jan"].ToString()) ? Convert.ToDouble(reader["Jan"].ToString()) : 0,
                                        Feb = !string.IsNullOrEmpty(reader["Feb"].ToString()) ? Convert.ToDouble(reader["Feb"].ToString()) : 0,
                                        Mar = !string.IsNullOrEmpty(reader["Mar"].ToString()) ? Convert.ToDouble(reader["Mar"].ToString()) : 0,
                                        Apr = !string.IsNullOrEmpty(reader["Apr"].ToString()) ? Convert.ToDouble(reader["Apr"].ToString()) : 0,
                                        May = !string.IsNullOrEmpty(reader["May"].ToString()) ? Convert.ToDouble(reader["May"].ToString()) : 0,
                                        Jun = !string.IsNullOrEmpty(reader["Jun"].ToString()) ? Convert.ToDouble(reader["Jun"].ToString()) : 0,
                                        Jul = !string.IsNullOrEmpty(reader["Jul"].ToString()) ? Convert.ToDouble(reader["Jul"].ToString()) : 0,
                                        Aug = !string.IsNullOrEmpty(reader["Aug"].ToString()) ? Convert.ToDouble(reader["Aug"].ToString()) : 0,
                                        Sep = !string.IsNullOrEmpty(reader["Sep"].ToString()) ? Convert.ToDouble(reader["Sep"].ToString()) : 0,
                                        Oct = !string.IsNullOrEmpty(reader["Oct"].ToString()) ? Convert.ToDouble(reader["Oct"].ToString()) : 0,
                                        Nov = !string.IsNullOrEmpty(reader["Nov"].ToString()) ? Convert.ToDouble(reader["Nov"].ToString()) : 0,
                                        Dec = !string.IsNullOrEmpty(reader["Dec"].ToString()) ? Convert.ToDouble(reader["Dec"].ToString()) : 0
                                    }
                                    );
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in GetConsumptionActual" + ex.ToString());
            }
            return consumptionList;
        }
        /// <summary>
        /// Get Production Actual
        /// </summary>
        /// <param name="year"></param>
        /// <returns></returns>
        public List<AnnualDetails> GetProductionActual(int year, string procedure)
        {
            string procedureName = StoreProcedureUtility.storedProcedureMapping.ContainsKey(procedure) ? StoreProcedureUtility.storedProcedureMapping[procedure] : "";

            List<AnnualDetails> prodcostList = new List<AnnualDetails>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand(procedureName, sqlConn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Year", year);
                        cmd.Parameters.AddWithValue("@PlantId", PlantId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                prodcostList.Add(
                                    new AnnualDetails
                                    {
                                        DetailsName = reader["Department"].ToString(),
                                        DetailsId = !string.IsNullOrEmpty(reader["AssetID"].ToString()) ? Convert.ToInt32(reader["AssetID"].ToString()) : 0,
                                        UOM = !string.IsNullOrEmpty(reader["UOM"].ToString()) ? reader["UOM"].ToString() : "Empty",
                                        UOMID = !string.IsNullOrEmpty(reader["UOMID"].ToString()) ? Convert.ToInt32(reader["UOMID"].ToString()) : 0,
                                        Jan = !string.IsNullOrEmpty(reader["Jan"].ToString()) ? Convert.ToDouble(reader["Jan"].ToString()) : 0,
                                        Feb = !string.IsNullOrEmpty(reader["Feb"].ToString()) ? Convert.ToDouble(reader["Feb"].ToString()) : 0,
                                        Mar = !string.IsNullOrEmpty(reader["Mar"].ToString()) ? Convert.ToDouble(reader["Mar"].ToString()) : 0,
                                        Apr = !string.IsNullOrEmpty(reader["Apr"].ToString()) ? Convert.ToDouble(reader["Apr"].ToString()) : 0,
                                        May = !string.IsNullOrEmpty(reader["May"].ToString()) ? Convert.ToDouble(reader["May"].ToString()) : 0,
                                        Jun = !string.IsNullOrEmpty(reader["Jun"].ToString()) ? Convert.ToDouble(reader["Jun"].ToString()) : 0,
                                        Jul = !string.IsNullOrEmpty(reader["Jul"].ToString()) ? Convert.ToDouble(reader["Jul"].ToString()) : 0,
                                        Aug = !string.IsNullOrEmpty(reader["Aug"].ToString()) ? Convert.ToDouble(reader["Aug"].ToString()) : 0,
                                        Sep = !string.IsNullOrEmpty(reader["Sep"].ToString()) ? Convert.ToDouble(reader["Sep"].ToString()) : 0,
                                        Oct = !string.IsNullOrEmpty(reader["Oct"].ToString()) ? Convert.ToDouble(reader["Oct"].ToString()) : 0,
                                        Nov = !string.IsNullOrEmpty(reader["Nov"].ToString()) ? Convert.ToDouble(reader["Nov"].ToString()) : 0,
                                        Dec = !string.IsNullOrEmpty(reader["Dec"].ToString()) ? Convert.ToDouble(reader["Dec"].ToString()) : 0
                                    }
                                    );
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in GetProductionActual" + ex.ToString());
            }
            return prodcostList;
        }

        public List<MonthlyConsumption> GetMonthlySolidwaste(int yearId, int monthId)
        {
            List<MonthlyConsumption> monthlysolidwasteList = new List<MonthlyConsumption>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetSolidWasteMonthlywise", sqlConn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@YearID", yearId);
                        cmd.Parameters.AddWithValue("@MonthID", monthId);
                        cmd.Parameters.AddWithValue("@PlantId", PlantId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                monthlysolidwasteList.Add(
                                    new MonthlyConsumption
                                    {
                                        WAGES = !string.IsNullOrEmpty(reader["WAGES"].ToString()) ? reader["WAGES"].ToString() : "empty",
                                        WagesId = !string.IsNullOrEmpty(reader["WagesId"].ToString()) ? Convert.ToInt32(reader["WagesId"].ToString()) : 0,
                                        Consumption = !string.IsNullOrEmpty(reader["solidwaste"].ToString()) ? Convert.ToDouble(reader["solidwaste"].ToString()) : 0,
                                        UOM = reader["UOM"].ToString(),
                                        UOMID = Convert.ToInt32(reader["UOMID"].ToString()),
                                        Cost = !string.IsNullOrEmpty(reader["SolidwasteCost"].ToString()) ? Convert.ToDouble(reader["SolidwasteCost"].ToString()) : 0
                                    }
                                    );
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in GetConsumptionActual:" + ex.ToString());
            }
            return monthlysolidwasteList;
        }
        /// <summary>
        /// Get Department
        /// </summary>
        /// <returns></returns>
        public List<Details> GetDepartment()
        {
            List<Details> deptList = new List<Details>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetDepartment", sqlConn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@PlantId", PlantId);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                deptList.Add(
                                    new Details
                                    {
                                        ID = Convert.ToInt32(reader["ID"].ToString()),
                                        Name = reader["Name"].ToString()
                                    }

                                );
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in GetDepartment" + ex.ToString());
            }
            return deptList;
        }

        /// <summary>
        /// Getting macid from
        /// </summary>
        /// <returns></returns>
        public List<string> GetMacID()
        {
            List<string> macIDList = new List<string>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("select MacID from [dbo].[MacTable]", sqlConn))
                    {
                        cmd.CommandType = CommandType.Text;

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                macIDList.Add(reader["MacID"].ToString());
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Debug.WriteLine("error in GetDepartment" + ex.ToString());
            }
            return macIDList;
        }
        public List<Details> GetPlantNames()
        {
            List<Details> deptList = new List<Details>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetPlantName", sqlConn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                deptList.Add(
                                    new Details
                                    {
                                        ID = Convert.ToInt32(reader["ID"].ToString()),
                                        Name = reader["Plant_name"].ToString()
                                    }

                                );
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in GetDepartment" + ex.ToString());
            }
            return deptList;
        }
        /// <summary>
        /// Get DailyProduction
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        public List<ProductionDaily> GetProductionDaily(string date)
        {
            List<ProductionDaily> dailyProdList = new List<ProductionDaily>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetProductionDaily", sqlConn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Date", date);
                        cmd.Parameters.AddWithValue("@PlantId", PlantId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                dailyProdList.Add(
                                    new ProductionDaily
                                    {
                                        AssetId = !string.IsNullOrEmpty(reader["AssetID"].ToString()) ? Convert.ToInt32(reader["AssetID"].ToString()) : 0,
                                        DepartName = reader["Department"].ToString(),
                                        Total = !string.IsNullOrEmpty(reader["Total"].ToString()) ? Convert.ToDouble(reader["Total"].ToString()) : 0,
                                        UOM = !string.IsNullOrEmpty(reader["UOM"].ToString()) ? reader["UOM"].ToString() : "tonnes",
                                        UOMId = !string.IsNullOrEmpty(reader["UOMID"].ToString()) ? Convert.ToInt32(reader["UOMID"].ToString()) : 0
                                    }
                                    );
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in GetProductionDaily" + ex.ToString());
            }
            return dailyProdList;
        }
        /// <summary>
        /// Get Solidwaste Daily
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        public List<ProductionDaily> GetSolidWasteDaily(string date)
        {
            List<ProductionDaily> getsolidwasteDaily = new List<ProductionDaily>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetSolidWasteDaily", sqlConn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Date", date);
                        cmd.Parameters.AddWithValue("@PlantId", PlantId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                getsolidwasteDaily.Add(
                                    new ProductionDaily
                                    {
                                        DepartName = reader["Plant"].ToString(),
                                        Total = !string.IsNullOrEmpty(reader["Total"].ToString()) ? Convert.ToDouble(reader["Total"].ToString()) : 0,
                                        UOM = !string.IsNullOrEmpty(reader["UOM"].ToString()) ? reader["UOM"].ToString() : "tonnes",
                                        UOMId = !string.IsNullOrEmpty(reader["UOMID"].ToString()) ? Convert.ToInt32(reader["UOMID"].ToString()) : 0
                                    });
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in GetSolidWasteDaily" + ex.ToString());
            }
            return getsolidwasteDaily;
        }

        public bool SaveWageMapping(string energyName, int energyType, int UOM, int ID)
        {
           
            try
            {

                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("SaveWages", sqlConn))
                    {

                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@energyName", energyName);
                        command.Parameters.AddWithValue("@energyType", energyType);
                        command.Parameters.AddWithValue("@UOM", UOM);
                        command.Parameters.AddWithValue("@PlantId", PlantId);
                        command.Parameters.AddWithValue("@ID", ID);
                        //command.Parameters.Add("@count", SqlDbType.Int).Direction = ParameterDirection.Output;
                        command.ExecuteNonQuery();
                       // Value = Convert.ToInt32(command.Parameters["@count"].Value);
                        return true;
                    }
                   
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in SaveWageMapping" + ex.ToString());
                return false;
            }
        }
        public List<WageUomMapping> GetWageMapping()
        {
            List<WageUomMapping> UOMList = new List<WageUomMapping>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetwageMapping",
                        sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@PlantID", PlantId);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                UOMList.Add(
                                    new WageUomMapping
                                    {
                                        ID = Convert.ToInt32(reader["ID"]),
                                        EnergyName = reader["EnergyName"].ToString(),
                                        EnergyType = reader["EnergyType"].ToString(),
                                        UOM = reader["UOM"].ToString(),
                                        EnergyTypeID = Convert.ToInt32(reader["EnergyTypeID"]),
                                        UOMID = Convert.ToInt32(reader["UOMID"])
                                    }
                                    );
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Logger.Log("database error" + ex.ToString());
            }
            return UOMList;
        }

        public bool AddCSolidwasteActual(List<AnnualDetails> Consumption, string Year, string procedure)
        {
            try
            {
                string procedureName = StoreProcedureUtility.storedProcedureMapping.ContainsKey(procedure) ? StoreProcedureUtility.storedProcedureMapping[procedure] : "";
                if (string.IsNullOrEmpty(procedureName))
                    return false;
                using (SqlConnection sqlConn = SqlConnect())
                {
                    foreach (var item in Consumption)
                    {

                        using (SqlCommand command = new SqlCommand(procedureName, sqlConn))
                        {

                            command.CommandType = CommandType.StoredProcedure;

                            AddParam(item, command, procedureName);
                            command.Parameters.AddWithValue("@Year", Year);
                            command.ExecuteNonQuery();
                        }
                    }
                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in AddCSolidwasteActual: " + ex.ToString());
                return false;
            }
        }

        /// <summary>
        /// AddMonthlySolidwaste
        /// </summary>
        /// <param name="monthlysolid"></param>
        /// <param name="Year"></param>
        /// <param name="MonthID"></param>
        /// <returns></returns>
        public bool AddMonthlySolidwaste(List<MonthlyConsumption> monthlysolid, string Year, int MonthID)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    foreach (var item in monthlysolid)
                    {
                        using (SqlCommand command = new SqlCommand("AddMonthlySolidwasteData", sqlConn))
                        {


                            command.CommandType = CommandType.StoredProcedure;

                            command.Parameters.AddWithValue("@PlantID", PlantId);
                            command.Parameters.AddWithValue("@Solidwaste", item.Consumption);
                            command.Parameters.AddWithValue("@SolidwstCost", item.Cost);
                            command.Parameters.AddWithValue("@UOMID", item.UOMID);
                            command.Parameters.AddWithValue("@YearID", Year);
                            command.Parameters.AddWithValue("@MonthID", MonthID);
                            command.ExecuteNonQuery();
                        }
                    }
                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in AddMonthlySolidwaste" + ex.ToString());
                return false;
            }
        }
        /// <summary>
        /// AddSolidwasteDaily
        /// </summary>
        /// <param name="production"></param>
        /// <param name="solidwaste"></param>
        /// <param name="date"></param>
        /// <returns></returns>
        public bool AddSolidwasteDaily(List<ProductionDaily> production, double solidwaste, string date)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    foreach (var item in production)
                    {

                        using (SqlCommand command = new SqlCommand("AddDailySolidwaste", sqlConn))
                        {

                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@PlantID", PlantId);
                            command.Parameters.AddWithValue("@Total", solidwaste);
                            command.Parameters.AddWithValue("@UOMID", item.UOMId);
                            command.Parameters.AddWithValue("@Datetime", date);
                            command.ExecuteNonQuery();
                        }
                    }
                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in AddSolidwasteDaily" + ex.ToString());
                return false;
            }
        }
        /// <summary>
        /// AddProductonDaily
        /// </summary>
        /// <param name="production"></param>
        /// <param name="date"></param>
        /// <returns></returns>
        public bool AddProductonDaily(List<ProductionDaily> production, string date)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    foreach (var item in production)
                    {

                        using (SqlCommand command = new SqlCommand("AddProductionDaily", sqlConn))
                        {

                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@AssetID", item.AssetId);
                            command.Parameters.AddWithValue("@PlantID", PlantId);
                            command.Parameters.AddWithValue("@Total", item.Total);
                            command.Parameters.AddWithValue("@UOMID", item.UOMId);
                            command.Parameters.AddWithValue("@Datetime", date);
                            command.ExecuteNonQuery();
                        }
                    }
                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in AddProductonDaily" + ex.ToString());
                return false;
            }
        }
        /// <summary>
        /// GetAlaramData
        /// </summary>
        /// <returns></returns>
        public List<AlarmEnble> GetAlaramData()
        {
            List<AlarmEnble> getalarms = new List<AlarmEnble>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetTagInformation", sqlConn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@PlantId", PlantId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                getalarms.Add(
                                    new AlarmEnble
                                    {
                                        TagID = Convert.ToInt32(reader["TagId"]),
                                        AssetID = Convert.ToInt32(reader["AssetId"]),
                                        TagName = reader["TagName"].ToString(),
                                        AssetName = reader["AssetName"].ToString(),
                                        isEnabled = reader["isEnabled"].ToString(),
                                        Target = !string.IsNullOrEmpty(reader["Target"].ToString()) ? Convert.ToDouble(reader["Target"].ToString()) : 0
                                    });
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in GetAlaramData" + ex.ToString());
            }
            return getalarms;
        }
        /// <summary>
        /// GetUserDetails
        /// </summary>
        /// <param name="emailId"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public List<Assets> GetUserDetails(string emailId)
        {
            List<Assets> getuser = new List<Assets>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetPlantIDbyEmiail", sqlConn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@EmialId", emailId);
                        // cmd.Parameters.AddWithValue("@Password", password);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                getuser.Add(
                                    new Assets
                                    {
                                        PlantID = Convert.ToInt32(reader["PlantID"]),
                                        // UserName = reader["username"].ToString(),
                                        PlantName = string.IsNullOrEmpty(reader["Plant_name"].ToString()) ? "" : reader["Plant_name"].ToString(),
                                        RoleId = Convert.ToInt32(reader["RoleID"].ToString())
                                    });
                            }
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("error in GetUserDetails" + ex.ToString());
                return null;
            }
            return getuser;
        }
        /// <summary>
        /// EditConfiguration
        /// </summary>
        /// <param name="wages"></param>
        /// <returns></returns>
        public bool EditConfiguration(WageUomMapping wages)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("EditConfiguration", sqlConn))
                    {

                        command.CommandType = CommandType.StoredProcedure;
                        command.ExecuteNonQuery();
                    }
                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in the update query" + ex.ToString());
                return false;
            }
        }
        /// <summary>
        /// GetYears
        /// </summary>
        /// <returns></returns>
        public List<int> GetYears()
        {
            List<int> YearList = new List<int>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetYear", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@PlantId", PlantId);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                YearList.Add(Convert.ToInt32(reader["Year_ID"]));
                            }
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("database error" + ex.ToString());
            }
            return YearList;
        }
        /// <summary>
        /// SaveBaseYear
        /// </summary>
        /// <param name="year"></param>
        /// <returns></returns>
        public bool SaveBaseYear(string year)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("AddBaseYear", sqlConn))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@PlantId", PlantId);
                        command.Parameters.AddWithValue("@baseyear", year);
                        command.ExecuteNonQuery();
                    }
                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in the insert query: " + ex.ToString());
                return false;
            }
        }
        /// <summary>
        /// GetCurrentBaseYear
        /// </summary>
        /// <returns></returns>
        public int GetCurrentBaseYear()
        {
            int baseyear = 0;
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetBaseYear", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@PlantId", PlantId);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                baseyear = (Convert.ToInt32(reader["Base_year"]));
                            }
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("database error" + ex.ToString());
            }
            return baseyear;
        }

        /// <summary>
        /// UpdateAlarmInfo
        /// </summary>
        /// <param name="alarminfo"></param>
        /// <param name="isEnabled"></param>
        /// <param name="target"></param>
        /// <returns></returns>
        public bool UpdateAlarmInfo(List<AlarmEnble> alarminfo)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    foreach (var item in alarminfo)
                    {
                        using (SqlCommand command = new SqlCommand("UpdateAlarmEnable", sqlConn))
                        {

                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@TagId", item.TagID);
                            command.Parameters.AddWithValue("@Asset_ID", item.AssetID);
                            command.Parameters.AddWithValue("@isEnabled", item.isEnabled);
                            command.Parameters.AddWithValue("@Target", item.Target);
                            command.ExecuteNonQuery();
                        }
                    }
                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in the UpdateAlarmInfo" + ex.ToString());
                return false;
            }
        }
        /// <summary>
        /// AddUSDExchnageRate
        /// </summary>
        /// <param name="rate"></param>
        /// <param name="year"></param>
        /// <returns></returns>
        public bool AddUSDExchnageRate(double rate, int year)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("AddUSDExchangeRate", sqlConn))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@USDRate", rate);
                        command.Parameters.AddWithValue("@Year", year);
                        command.Parameters.AddWithValue("@PlantId", PlantId);
                        command.ExecuteNonQuery();
                    }

                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in AddUSDExchnageRate" + ex.ToString());
                return false;
            }
        }
        /// <summary>
        /// GetCurrency
        /// </summary>
        /// <returns></returns>
        public List<Currency> GetCurrency()
        {
            List<Currency> currencyDict = new List<Currency>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetCurrency", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                currencyDict.Add(
                                    new Currency
                                    {
                                        CurrncyName = reader["Bkey"].ToString(),
                                        Country = reader["description"].ToString()
                                    }

                                );
                            }
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("database error: " + ex.ToString());
            }
            return currencyDict;
        }
        /// <summary>
        /// UpdateCurrency
        /// </summary>
        /// <param name="currency"></param>
        /// <returns></returns>
        public bool UpdateCurrency(string currency)
        {

            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("UpdateCurrency", sqlConn))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@PlantID", PlantId);
                        command.Parameters.AddWithValue("@currency", currency);
                        command.ExecuteNonQuery();
                    }

                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in UpdateCurrency: " + ex.ToString());
                return false;
            }
        }
        /// <summary>
        /// GetUpdatedCurrency
        /// </summary>
        /// <returns></returns>
        public string GetUpdatedCurrency()
        {
            string currency = string.Empty;
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetUpdatedCurrency", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@PlantID", PlantId);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                currency = reader["currency"].ToString();
                            };
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("database error" + ex.ToString());
            }
            return currency;
        }

        public double GetUSDRate(string year)
        {

            double USDRate = 0;
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetCurrencyRate", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@PlantID", PlantId);
                        cmd.Parameters.AddWithValue("@year", Convert.ToInt32(year));
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                USDRate = Convert.ToDouble(reader["USD_exchange"]);
                            };
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("database error: " + ex.ToString());
            }
            return USDRate;
        }
        /// <summary>
        /// Get Unit Of Measeure
        /// </summary>
        /// <returns></returns>
        public List<Details> GetUOMs()
        {
            List<Details> uomList = new List<Details>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetUOM", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                uomList.Add(
                                    new Details
                                    {
                                        ID = Convert.ToInt32(reader["ID"].ToString()),
                                        Name = reader["Description"].ToString()
                                    }

                                );
                            }
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("database error: " + ex.ToString());
            }
            return uomList;
        }
        /// <summary>
        /// Get Device Id List
        /// </summary>
        /// <returns></returns>
        public List<Details> GetDeviceID()
        {
            List<Details> deviceList = new List<Details>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetDeviceList", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                deviceList.Add(
                                    new Details
                                    {
                                        ID = Convert.ToInt32(reader["ID"].ToString()),
                                        Name = reader["Description"].ToString()
                                    }

                                );
                            }
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("database error: " + ex.ToString());
            }
            return deviceList;
        }

        public bool AddUom(string uom)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand command = new SqlCommand("AddUOM", sqlConn))
                    {

                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@UOM", uom);
                        command.Parameters.AddWithValue("@CreatedBy", UserName);
                        command.ExecuteNonQuery();
                    }

                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in the AddUom: " + ex.ToString());
                return false;
            }
        }

        public bool AddDeviceId(string Id)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand command = new SqlCommand("AddDeviceId", sqlConn))
                    {

                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@DeviceId", Id);
                        command.ExecuteNonQuery();
                    }

                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in the AddDeviceId" + ex.ToString());
                return false;
            }
        }

        public bool AddEmailConfig(List<EmailConfiguration> emailConfig)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    foreach (var item in emailConfig)
                    {
                        using (SqlCommand command = new SqlCommand("AddEmailConfig", sqlConn))
                        {

                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@smtpServer", item.smtpServer);
                            command.Parameters.AddWithValue("@smtpPort", item.smtpPort);
                            command.Parameters.AddWithValue("@smtpUsername", (item.smtpUserName == null) ? "NA" : item.smtpUserName);
                            command.Parameters.AddWithValue("@smtpPassword", (item.smtpPassword == null) ? "NA" : item.smtpPassword);
                            command.Parameters.AddWithValue("@CreatedBy", UserName);
                            command.ExecuteNonQuery();
                        }
                    }
                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in the AddEmailConfig" + ex.ToString());
                return false;
            }
        }

        public bool UpdateDevice(int id, string deviceid)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("UpdateDevice", sqlConn))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@ID", id);
                        command.Parameters.AddWithValue("@deviceId", deviceid);
                        command.Parameters.AddWithValue("@ModifiedBy", UserName);
                        command.ExecuteNonQuery();
                    }

                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in the UpdateDevice" + ex.ToString());
                return false;
            }
        }

        public bool UpdateUOM(int id, string uom)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("UpdateUOM", sqlConn))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@ID", id);
                        command.Parameters.AddWithValue("@uomId", uom);
                        command.Parameters.AddWithValue("@ModifiedBy", UserName);
                        command.ExecuteNonQuery();
                    }

                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in the UpdateUOM" + ex.ToString());
                return false;
            }
        }

        public List<EmailConfiguration> GetEmailConfig()
        {
            List<EmailConfiguration> emailConfigList = new List<EmailConfiguration>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetEmailConfiguration", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                emailConfigList.Add(
                                    new EmailConfiguration
                                    {
                                        smtpServer = reader["smtpServer"].ToString(),
                                        smtpPort = Convert.ToInt32(reader["smtpPort"].ToString()),
                                        smtpUserName = reader["smtpUser"].ToString(),
                                        smtpPassword = reader["smtpPass"].ToString()
                                    }

                                );
                            }
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("error in the GetEmailConfig" + ex.ToString());
            }
            return emailConfigList;
        }

        public bool AddUserMapping(int userId, string plantid)
        {

            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("AddUserMapping", sqlConn))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@Userid", userId);
                        command.Parameters.AddWithValue("@PlantId", plantid);
                        command.ExecuteNonQuery();
                    }


                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in the AddUserMapping" + ex.ToString());
                return false;
            }


        }
        public bool AddEmailList(string[] email, int id)
        {

            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    for (int i = 0; i < email.Length; i++)
                    {

                        using (SqlCommand command = new SqlCommand("AddAlarmEmaiList", sqlConn))
                        {
                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@id", id);
                            command.Parameters.AddWithValue("@emailid", email[i]);
                            command.Parameters.AddWithValue("@PlantId", PlantId);
                            command.Parameters.AddWithValue("@CreatedBy", UserName);
                            command.ExecuteNonQuery();
                        }
                    }

                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in the AddUserMapping" + ex.ToString());
                return false;
            }


        }
        public List<Details> GetEmailList()
        {
            List<Details> emailList = new List<Details>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("Get_EmailList", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@PlantId", PlantId);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                emailList.Add(
                                    new Details
                                    {
                                        ID = Convert.ToInt32(reader["Id"].ToString()),
                                        Name = reader["EmailId"].ToString()

                                    }

                                );
                            }
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("error in the GetEmailList" + ex.ToString());
            }
            return emailList;
        }
        public List<UserMapping> GetUserMappingList()
        {
            List<UserMapping> usermappingList = new List<UserMapping>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("getUserMapping", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                usermappingList.Add(
                                    new UserMapping
                                    {
                                        RecordId = Convert.ToInt32(reader["recordID"]),
                                        EmailId = reader["emailID"].ToString(),
                                        PlantName = reader["Plant_name"].ToString(),
                                        UserId = Convert.ToInt32(reader["userID"]),
                                        PlantId = Convert.ToInt32(reader["ID"])
                                    }

                                );
                            }
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("error in the GetUserMappingList" + ex.ToString());
            }
            return usermappingList;
        }


        public bool DeleteEmail(int Id)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("DeleteEmail", sqlConn))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@Id", Id);

                        command.ExecuteNonQuery();
                    }
                }

                return true;

            }
            catch (Exception ex)
            {
                Logger.Log("error in the DeleteEmail" + ex.ToString());
                return false;
            }


        }

        public bool DeleteUSer(int UserId)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("DeleteUser", sqlConn))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@Id", UserId);

                        command.ExecuteNonQuery();
                    }
                }

                return true;

            }
            catch (Exception ex)
            {
                Logger.Log("error in the DeleteUSer" + ex.ToString());
                return false;
            }


        }

        public List<UserMapping> GetAdminList()
        {
            List<UserMapping> usermappingList = new List<UserMapping>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetAdminList", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                usermappingList.Add(
                                    new UserMapping
                                    {
                                        UserId = Convert.ToInt32(reader["UserID"].ToString()),
                                        EmailId = reader["EmailID"].ToString(),
                                        PlantName = reader["Plant_name"].ToString()

                                    }

                                );
                            }
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("error in the GetAdminList" + ex.ToString());
            }
            return usermappingList;
        }

        public bool saveDisplayName(int wages, string displayName, int id)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("SaveDisplayNames", sqlConn))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@PlantId", PlantId);
                        command.Parameters.AddWithValue("@wage", wages);
                        command.Parameters.AddWithValue("@displayName", displayName);
                        command.Parameters.AddWithValue("@ID", id);
                        command.ExecuteNonQuery();
                    }


                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in the AddUserMapping" + ex.ToString());
                return false;
            }
        }

        public List<Display> getDisplayNames()
        {
            List<Display> displayList = new List<Display>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetDisplayList", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@plantid", PlantId);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                displayList.Add(
                                    new Display
                                    {
                                        ID = Convert.ToInt32(reader["ID"].ToString()),
                                        WageType = reader["WageType"].ToString(),
                                        DisplayName = reader["DisplayName"].ToString(),
                                        WageID = Convert.ToInt32(reader["WageID"])
                                    }

                                );
                            }
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("error in the GetAdminList" + ex.ToString());
            }
            return displayList;

        }
        public bool deleteDisplyName(int id)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("DeleteDisplayName", sqlConn))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@Id", id);
                        // command.Parameters.AddWithValue("@CreatedBy", UserName);
                        command.ExecuteNonQuery();
                    }
                }

                return true;

            }
            catch (Exception ex)
            {
                Logger.Log("error in the DeleteUSer" + ex.ToString());
                return false;
            }
        }

        public bool AddProductionUOMMapping(int productionUomId, int SolidawasteUomId)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("InsertEMMS_PLANT_PRODUCTION_UOM_MAP", sqlConn))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@PlantId", PlantId);
                        command.Parameters.AddWithValue("@ProductionUOMId", productionUomId);
                        command.Parameters.AddWithValue("@SolidWasteUOMId", SolidawasteUomId);
                        command.ExecuteNonQuery();
                    }


                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in the AddProductionUOMMapping" + ex.ToString());
                return false;
            }
        }

        public List<UOM> GetProductionUom()
        {
            List<UOM> productionuomlist = new List<UOM>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetProductionUOM", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@PlantId", PlantId);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                productionuomlist.Add(
                                    new UOM
                                    {
                                        ProductionID = Convert.ToInt32(reader["ProductionUOM"]),
                                        SolidID = Convert.ToInt32(reader["SolidwasteUOM"]),
                                    }

                                );
                            }
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("error in the GetProductionUom" + ex.ToString());
            }
            return productionuomlist;
        }

        public int CheckUOMMapping(string energyname, int type, int uom)
        {
            int Value = 0;
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("CheckUOMMapping", sqlConn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@energyName", energyname);
                        cmd.Parameters.AddWithValue("@energyType", type);
                        cmd.Parameters.AddWithValue("@UOM", uom);
                        cmd.Parameters.AddWithValue("@PlantId", PlantId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Value = Convert.ToInt32(reader["Value"]);
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Debug.WriteLine("error in CheckUOMMapping" + ex.ToString());
            }
            return Value;
        }

        public List<EmailLst> GetEmailAddress(string emailId)
        {
            List<EmailLst> usermappingList = new List<EmailLst>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetEmailAddress", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@emailId", emailId);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                usermappingList.Add(
                                    new EmailLst
                                    {
                                        UserId = Convert.ToInt32(reader["UserID"]),
                                        EmailId = reader["EmailID"].ToString(),
                                        RoleId = Convert.ToInt32(reader["RoleID"]),
                                        UserType = reader["UserType"].ToString()
                                    }

                                );
                            }
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("error in the GetEmailAddress" + ex.ToString());
            }
            return usermappingList;
        }

        public bool AddEmailAddress(string emailId, int roleId, int Id)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("ADD_NEWUSER", sqlConn))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@UserID", Id);
                        command.Parameters.AddWithValue("@emailid", emailId);
                        command.Parameters.AddWithValue("@roleId", roleId);
                        command.Parameters.AddWithValue("@CreatedBy", UserName);

                        command.ExecuteNonQuery();
                    }


                    return true;
                }

            }
            catch (Exception ex)
            {
                Logger.Log("error in the AddEmailAddress" + ex.ToString());
                return false;
            }
        }

        public bool DeleteEmailAddress(int Id)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("DeleteUserDetails", sqlConn))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@UserID", Id);
                        command.Parameters.AddWithValue("@DeletedBy", UserName);
                        command.ExecuteNonQuery();
                    }
                }

                return true;

            }
            catch (Exception ex)
            {
                Logger.Log("error in the DeleteEmailAddress" + ex.ToString());
                return false;
            }
        }

        public bool DeleteUserMapping(int Id)
        {
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {

                    using (SqlCommand command = new SqlCommand("delUserMapping", sqlConn))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@recordID", Id);                   
                        command.ExecuteNonQuery();
                    }
                }

                return true;

            }
            catch (Exception ex)
            {
                Logger.Log("error in the DeleteUserMapping" + ex.ToString());
                return false;
            }
        }

        public List<Details> GetEmailListAdmin()
        {
            List<Details> emailList = new List<Details>();
            try
            {
                using (SqlConnection sqlConn = SqlConnect())
                {
                    using (SqlCommand cmd = new SqlCommand("GetEmailAddressForAdmin", sqlConn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                emailList.Add(
                                    new Details
                                    {
                                        ID = Convert.ToInt32(reader["UserID"].ToString()),
                                        Name = reader["EmailID"].ToString()

                                    }

                                );
                            }
                        }
                    }
                }

            }

            catch (Exception ex)
            {
                Logger.Log("error in the GetEmailList" + ex.ToString());
            }
            return emailList;
        }
    }
}