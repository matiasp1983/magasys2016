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

        #region [-- GetById, GetAll --]

        public Provincia GetById(int idProvincia)
        {
            Provincia oProvincia = null;

            if (idProvincia <= 0) return null;

            using (var oConnection = new SqlConnection(PConnectionString))
            {
                const string cmdText = @"SELECT PRO.ID_PROVINCIA, PRO.NOMBRE FROM PROVINCIAS PRO 
                                            WHERE 1 = 1 
                                            AND PRO.ID_PROVINCIA = @ID_PROVINCIA 
                                            ORDER BY PRO.NOMBRE";

                using (var oCommand = new SqlCommand(cmdText, oConnection))
                {
                    try
                    {
                        oCommand.Connection.Open();
                        LoadParameter(oCommand, "@ID_PROVINCIA", idProvincia);

                        using (var oDataReader = oCommand.ExecuteReader())
                        {
                            if (oDataReader.Read())
                            {
                                oProvincia = GetProvincia(oDataReader);
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

            return oProvincia;
        }

        public List<Provincia> GetAll()
        {
            var lstProvincias = new List<Provincia>();

            using (var oConnection = new SqlConnection(PConnectionString))
            {
                const string cmdText = @"SELECT PRO.ID_PROVINCIA, PRO.NOMBRE FROM PROVINCIAS PRO ORDER BY PRO.NOMBRE";
                using (var oCommand = new SqlCommand(cmdText, oConnection))
                {
                    try
                    {
                        oCommand.Connection.Open();

                        using (var oDataReader = oCommand.ExecuteReader())
                        {

                            while (oDataReader.Read())
                            {
                                lstProvincias.Add(GetProvincia(oDataReader));
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

        #region [-- Funciones Privadas --]

        private static void LoadParameter(SqlCommand oCommand, string nombreParametro, object valor)
        {
            oCommand.Parameters.Add(new SqlParameter(nombreParametro, valor));
        }

        private static Provincia GetProvincia(IDataRecord oDataReader)
        {
            var oProvincia = new Provincia();

            if (!(oDataReader["ID_PROVINCIA"] is DBNull))
                oProvincia.PIdProvincia = Convert.ToInt32(oDataReader["ID_PROVINCIA"]);

            if (!(oDataReader["NOMBRE"] is DBNull))
                oProvincia.PNombre = oDataReader["NOMBRE"].ToString();

            return oProvincia;
        }

        # endregion
    }
}
