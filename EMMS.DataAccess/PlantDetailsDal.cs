using EMMS.DataAccess.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EMMS.DTO;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Data;

namespace EMMS.DataAccess
{
    public class PlantDetailsDal : IGetItemForCombobox
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["EmmsDB"].ConnectionString;
        public List<Assets> GetsAssets()
        {
            throw new NotImplementedException();
        }

        public List<Details> GetUOMs()
        {
            List<Details> UOMList = new List<Details>();
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionstring))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT [ID], [Description] FROM [dbo].[EMMS_Master_Wages_UOM]", conn))
                    {
                       
                        cmd.CommandType = CommandType.Text;
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                UOMList.Add(
                                    new Details
                                    {
                                        ID = Convert.ToInt32(reader["ID"]),
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
                Debug.WriteLine("database error" + ex.Message);
            }
            return UOMList;
        }
        /// <summary>
        /// Getting types of wages
        /// </summary>
        /// <returns></returns>
        public List<Details> GetWages()
        {
            List<Details> WageList = new List<Details>();
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionstring))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("GetWages", conn))
                    {
                      
                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                WageList.Add(
                                    new Details
                                    {
                                        ID = Convert.ToInt32(reader["ID"]),
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
                Debug.WriteLine("database error"+ex.Message);
            }
            return WageList;
        }


    }
}
