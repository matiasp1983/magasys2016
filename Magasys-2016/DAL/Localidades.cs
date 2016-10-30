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

        #region [-- GetLocalidadByProvincia --]

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
                        var oParameter = new SqlParameter("@ID_PROVINCIA", idProvincia);
                        oCommand.Parameters.Add(oParameter);

                        using (var oDataReader = oCommand.ExecuteReader())
                        {

                            while (oDataReader.Read())
                            {
                                var oLocalidad = new Localidad();

                                if (!(oDataReader["ID_LOCALIDAD"] is DBNull))
                                    oLocalidad.PIdLocalidad = Convert.ToInt32(oDataReader["ID_LOCALIDAD"]);
                                else
                                    continue;

                                if (!(oDataReader["NOMBRE"] is DBNull))
                                    oLocalidad.PNombre = oDataReader["NOMBRE"].ToString();

                                lstLocadidades.Add(oLocalidad);
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
    }
}
