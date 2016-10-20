using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using COMMON.Entities;

namespace DAL
{
    public class Provincias
    {
        public Provincias()
        {
            PConnectionString = ConfigurationManager.ConnectionStrings["MagasysConnection"].ConnectionString;
        }

        private string PConnectionString { get; set; }

        #region [-- GetAll , GetById --]

        public List<Provincia> GetAll()
        {
            var lstProvincias = new List<Provincia>();

            using (var oConnection = new SqlConnection(PConnectionString))
            {
                const string cmdText = @"SELECT PRO.ID_PROVINCIA, PRO.NOMBRE FROM PROVINCIA PRO ORDER BY PRO.NOMBRE";
                using (var oCommand = new SqlCommand(cmdText, oConnection))
                {
                    try
                    {
                        oCommand.Connection.Open();

                        using (var oDataReader = oCommand.ExecuteReader())
                        {

                            while (oDataReader.Read())
                            {
                                var oProvincia = new Provincia();

                                if (!(oDataReader["ID_PROVINCIA"] is DBNull))
                                    oProvincia.PIdProvincia = Convert.ToInt32(oDataReader["ID_PROVINCIA"]);
                                else
                                    continue;

                                if (!(oDataReader["NOMBRE"] is DBNull))
                                    oProvincia.PNombre = oDataReader["NOMBRE"].ToString();

                                lstProvincias.Add(oProvincia);
                            }
                        }

                        oConnection.Close();
                    }
                    catch (Exception)
                    {
                        if (oConnection.State == ConnectionState.Closed) throw;
                        oConnection.Close();
                        throw;
                    }
                }
            }
            return lstProvincias;
        }

        #endregion
    }
}
