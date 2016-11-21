using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using COMMON.Entities;
namespace DAL
{
    public class Localidades
    {
        public Localidades()
        {
            PConnectionString = ConfigurationManager.ConnectionStrings["MagasysConnection"].ConnectionString;
        }

        private string PConnectionString { get; set; }

        #region [-- GetById, GetLocalidadByProvincia --]

        public Localidad GetById(int idLocalidad)
        {
            Localidad oLocalidad = null;

            if (idLocalidad <= 0) return null;

            using (var oConnection = new SqlConnection(PConnectionString))
            {
                const string cmdText = @"SELECT LOC.ID_LOCALIDAD, LOC.NOMBRE
                                                FROM LOCALIDADES LOC
                                            WHERE 1 = 1 
                                            AND LOC.ID_LOCALIDAD = @ID_LOCALIDAD
                                            ORDER BY LOC.NOMBRE";

                using (var oCommand = new SqlCommand(cmdText, oConnection))
                {
                    try
                    {
                        oCommand.Connection.Open();
                        LoadParameter(oCommand, "@ID_LOCALIDAD", idLocalidad);

                        using (var oDataReader = oCommand.ExecuteReader())
                        {
                            if (oDataReader.Read())
                            {
                                oLocalidad = GetLocalidad(oDataReader);
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

            return oLocalidad;
        }

        public List<Localidad> GetLocalidadByProvincia(int idProvincia)
        {
            var lstLocadidades = new List<Localidad>();

            using (var oConnection = new SqlConnection(PConnectionString))
            {
                const string cmdText = @"SELECT LOC.ID_LOCALIDAD, LOC.NOMBRE
                                                FROM LOCALIDADES LOC
                                            WHERE 1 = 1 
                                            AND LOC.ID_PROVINCIA = @ID_PROVINCIA
                                            ORDER BY LOC.NOMBRE";
                using (var oCommand = new SqlCommand(cmdText, oConnection))
                {
                    try
                    {
                        oCommand.Connection.Open();
                        LoadParameter(oCommand, "@ID_PROVINCIA", idProvincia);

                        using (var oDataReader = oCommand.ExecuteReader())
                        {
                            while (oDataReader.Read())
                            {
                                lstLocadidades.Add(GetLocalidad(oDataReader));
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
            return lstLocadidades;
        }

        #endregion

        #region [-- Funciones Privadas --]

        private static void LoadParameter(SqlCommand oCommand, string nombreParametro, object valor)
        {
            oCommand.Parameters.Add(new SqlParameter(nombreParametro, valor));
        }

        private static Localidad GetLocalidad(IDataRecord oDataReader)
        {
            var oLocalidad = new Localidad();

            if (!(oDataReader["ID_LOCALIDAD"] is DBNull))
                oLocalidad.PIdLocalidad = Convert.ToInt32(oDataReader["ID_LOCALIDAD"]);

            if (!(oDataReader["NOMBRE"] is DBNull))
                oLocalidad.PNombre = oDataReader["NOMBRE"].ToString();

            return oLocalidad;
        }

        # endregion
    }
}
