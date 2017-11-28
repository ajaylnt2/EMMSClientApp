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

namespace EMMS.DataAccess
{
    public class PopulateDropDown : IGetItemForCombobox
    {
    string connectionstring = ConfigurationManager.ConnectionStrings["EmmsDB"].ConnectionString;
        public List<Wages> GetWages()
        {
            List<Wages> WageList = new List<Wages>();
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionstring))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT ID, Description FROM [dbo].[EMMS_Master_Wages_type]", conn))
                    {
                        cmd.CommandType = CommandType.Text;
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                WageList.Add(
                                    new Wages
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
                Debug.WriteLine("database error");
            }
            return WageList;
        }

        public List<UOM> GetUOMs()
        {
            List<UOM> UOMList = new List<UOM>();
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
                                    new UOM
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
                Debug.WriteLine(ex.ToString());
            }
            return UOMList;
        }
    }
}
