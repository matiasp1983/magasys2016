using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using COMMON.Entities;

namespace DAL
{
    public class Proveedores
    {
        public Proveedores()
        {
            PConnectionString = ConfigurationManager.ConnectionStrings["MagasysConnection"].ConnectionString;
        }

        private string PConnectionString { get; set; }

        #region [-- GetAll , GetById , GetByCuit --]

        public List<Proveedor> GetAll()
        {
            var lstProveedores = new List<Proveedor>();

            using (var oConnection = new SqlConnection(PConnectionString))
            {
                const string cmdText = @"SELECT PR.ID_PROVEEDOR,
                                                PR.FECHA_ALTA,
                                                PR.NUM_CUIT,
                                                PR.RAZON_SOCIAL,
                                                PR.NOMBRE_RESP,
                                                PR.APELLIDO_RESP,
                                                PR.TELEFONO_MOVIL,
                                                PR.EMAIL,
                                                PR.TELEFONO_FIJO,
                                                PR.CALLE,
                                                PR.NUMERO,
                                                PR.PISO,
                                                PR.DEPARTAMENTO,
                                                PR.ID_PROVINCIA,
                                                PR.ID_LOCALIDAD,
                                                PR.BARRIO,
                                                PR.COD_POSTAL
                                            FROM PROVEEDORES PR";
                using (var oCommand = new SqlCommand(cmdText, oConnection))
                {
                    try
                    {
                        oCommand.Connection.Open();

                        using (var oDataReader = oCommand.ExecuteReader())
                        {

                            while (oDataReader.Read())
                            {
                                var oProveedor = new Proveedor();

                                if (!(oDataReader["ID_PROVEEDOR"] is DBNull))
                                    oProveedor.PIdProveedor = Convert.ToInt32(oDataReader["ID_PROVEEDOR"]);
                                else
                                    continue;

                                if (!(oDataReader["FECHA_ALTA"] is DBNull))
                                    oProveedor.PFechaAlta = Convert.ToDateTime(oDataReader["FECHA_ALTA"]);

                                if (!(oDataReader["NUM_CUIT"] is DBNull))
                                    oProveedor.PCuit = oDataReader["NUM_CUIT"].ToString();

                                if (!(oDataReader["RAZON_SOCIAL"] is DBNull))
                                    oProveedor.PRazonSocial = oDataReader["RAZON_SOCIAL"].ToString();

                                if (!(oDataReader["NOMBRE_RESP"] is DBNull))
                                    oProveedor.PNombre = oDataReader["NOMBRE_RESP"].ToString();

                                if (!(oDataReader["APELLIDO_RESP"] is DBNull))
                                    oProveedor.PApellido = oDataReader["APELLIDO_RESP"].ToString();

                                if (!(oDataReader["TELEFONO_MOVIL"] is DBNull))
                                    oProveedor.PTelefonoMovil = oDataReader["TELEFONO_MOVIL"].ToString();

                                if (!(oDataReader["EMAIL"] is DBNull))
                                    oProveedor.PEmail = oDataReader["EMAIL"].ToString();

                                if (!(oDataReader["TELEFONO_FIJO"] is DBNull))
                                    oProveedor.PTelefonoFijo = oDataReader["TELEFONO_FIJO"].ToString();

                                if (!(oDataReader["CALLE"] is DBNull))
                                    oProveedor.PCalle = oDataReader["CALLE"].ToString();

                                if (!(oDataReader["NUMERO"] is DBNull))
                                    oProveedor.PNumero = Convert.ToInt16(oDataReader["NUMERO"]);

                                if (!(oDataReader["PISO"] is DBNull))
                                    oProveedor.PPiso = oDataReader["PISO"].ToString();

                                if (!(oDataReader["DEPARTAMENTO"] is DBNull))
                                    oProveedor.PDepartamento = oDataReader["DEPARTAMENTO"].ToString();

                                if (!(oDataReader["ID_PROVINCIA"] is DBNull))
                                    oProveedor.PIdProvincia = Convert.ToInt32(oDataReader["ID_PROVINCIA"]);

                                if (!(oDataReader["ID_LOCALIDAD"] is DBNull))
                                    oProveedor.PIdLocalidad = Convert.ToInt32(oDataReader["ID_LOCALIDAD"]);

                                if (!(oDataReader["BARRIO"] is DBNull))
                                    oProveedor.PBarrio = oDataReader["BARRIO"].ToString();

                                if (!(oDataReader["COD_POSTAL"] is DBNull))
                                    oProveedor.PCodigoPostal = oDataReader["COD_POSTAL"].ToString();

                                lstProveedores.Add(oProveedor);
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
            return lstProveedores;
        }

        public Proveedor GetById(int idProveedor)
        {
            Proveedor oProveedor = null;

            if (idProveedor <= 0) return null;

            using (var oConnection = new SqlConnection(PConnectionString))
            {
                const string cmdText = @"SELECT PR.ID_PROVEEDOR,
                                                PR.FECHA_ALTA,
                                                PR.NUM_CUIT,
                                                PR.RAZON_SOCIAL,
                                                PR.NOMBRE_RESP,
                                                PR.APELLIDO_RESP,
                                                PR.TELEFONO_MOVIL,
                                                PR.EMAIL,
                                                PR.TELEFONO_FIJO,
                                                PR.CALLE,
                                                PR.NUMERO,
                                                PR.PISO,
                                                PR.DEPARTAMENTO,
                                                PR.ID_PROVINCIA,
                                                PR.ID_LOCALIDAD,
                                                PR.BARRIO,
                                                PR.COD_POSTAL
                                            FROM PROVEEDORES PR
                                            WHERE 1 = 1  
                                            AND PR.ID_PROVEEDOR = @ID_PROVEEDOR";
                using (var oCommand = new SqlCommand(cmdText, oConnection))
                {
                    try
                    {
                        oCommand.Connection.Open();
                        LoadParameter(oCommand, "@ID_PROVEEDOR", idProveedor);

                        using (var oDataReader = oCommand.ExecuteReader())
                        {
                            if (oDataReader.Read())
                            {
                                oProveedor = new Proveedor();

                                if (!(oDataReader["ID_PROVEEDOR"] is DBNull))
                                    oProveedor.PIdProveedor = Convert.ToInt32(oDataReader["ID_PROVEEDOR"]);

                                if (!(oDataReader["FECHA_ALTA"] is DBNull))
                                    oProveedor.PFechaAlta = Convert.ToDateTime(oDataReader["FECHA_ALTA"]);

                                if (!(oDataReader["NUM_CUIT"] is DBNull))
                                    oProveedor.PCuit = oDataReader["NUM_CUIT"].ToString();

                                if (!(oDataReader["RAZON_SOCIAL"] is DBNull))
                                    oProveedor.PRazonSocial = oDataReader["RAZON_SOCIAL"].ToString();

                                if (!(oDataReader["NOMBRE_RESP"] is DBNull))
                                    oProveedor.PNombre = oDataReader["NOMBRE_RESP"].ToString();

                                if (!(oDataReader["APELLIDO_RESP"] is DBNull))
                                    oProveedor.PApellido = oDataReader["APELLIDO_RESP"].ToString();

                                if (!(oDataReader["TELEFONO_MOVIL"] is DBNull))
                                    oProveedor.PTelefonoMovil = oDataReader["TELEFONO_MOVIL"].ToString();

                                if (!(oDataReader["EMAIL"] is DBNull))
                                    oProveedor.PEmail = oDataReader["EMAIL"].ToString();

                                if (!(oDataReader["TELEFONO_FIJO"] is DBNull))
                                    oProveedor.PTelefonoFijo = oDataReader["TELEFONO_FIJO"].ToString();

                                if (!(oDataReader["CALLE"] is DBNull))
                                    oProveedor.PCalle = oDataReader["CALLE"].ToString();

                                if (!(oDataReader["NUMERO"] is DBNull))
                                    oProveedor.PNumero = Convert.ToInt16(oDataReader["NUMERO"]);

                                if (!(oDataReader["PISO"] is DBNull))
                                    oProveedor.PPiso = oDataReader["PISO"].ToString();

                                if (!(oDataReader["DEPARTAMENTO"] is DBNull))
                                    oProveedor.PDepartamento = oDataReader["DEPARTAMENTO"].ToString();

                                if (!(oDataReader["ID_PROVINCIA"] is DBNull))
                                    oProveedor.PIdProvincia = Convert.ToInt32(oDataReader["ID_PROVINCIA"]);

                                if (!(oDataReader["ID_LOCALIDAD"] is DBNull))
                                    oProveedor.PIdLocalidad = Convert.ToInt32(oDataReader["ID_LOCALIDAD"]);

                                if (!(oDataReader["BARRIO"] is DBNull))
                                    oProveedor.PBarrio = oDataReader["BARRIO"].ToString();

                                if (!(oDataReader["COD_POSTAL"] is DBNull))
                                    oProveedor.PCodigoPostal = oDataReader["COD_POSTAL"].ToString();
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

            return oProveedor;
        }

        public Proveedor GetByCuit(string cuit)
        {
            Proveedor oProveedor = null;

            if (String.IsNullOrEmpty(cuit)) return null;

            using (var oConnection = new SqlConnection(PConnectionString))
            {
                const string cmdText = @"SELECT PR.ID_PROVEEDOR,
                                                PR.FECHA_ALTA,
                                                PR.NUM_CUIT,
                                                PR.RAZON_SOCIAL,
                                                PR.NOMBRE_RESP,
                                                PR.APELLIDO_RESP,
                                                PR.TELEFONO_MOVIL,
                                                PR.EMAIL,
                                                PR.TELEFONO_FIJO,
                                                PR.CALLE,
                                                PR.NUMERO,
                                                PR.PISO,
                                                PR.DEPARTAMENTO,
                                                PR.ID_PROVINCIA,
                                                PR.ID_LOCALIDAD,
                                                PR.BARRIO,
                                                PR.COD_POSTAL
                                            FROM PROVEEDORES PR
                                            WHERE 1 = 1  
                                            AND PR.NUM_CUIT = @NUM_CUIT";
                using (var oCommand = new SqlCommand(cmdText, oConnection))
                {
                    try
                    {
                        oCommand.Connection.Open();
                        LoadParameter(oCommand, "@NUM_CUIT", cuit);

                        using (var oDataReader = oCommand.ExecuteReader())
                        {
                            if (oDataReader.Read())
                            {
                                oProveedor = new Proveedor();

                                if (!(oDataReader["ID_PROVEEDOR"] is DBNull))
                                    oProveedor.PIdProveedor = Convert.ToInt32(oDataReader["ID_PROVEEDOR"]);

                                if (!(oDataReader["FECHA_ALTA"] is DBNull))
                                    oProveedor.PFechaAlta = Convert.ToDateTime(oDataReader["FECHA_ALTA"]);

                                if (!(oDataReader["NUM_CUIT"] is DBNull))
                                    oProveedor.PCuit = oDataReader["NUM_CUIT"].ToString();

                                if (!(oDataReader["RAZON_SOCIAL"] is DBNull))
                                    oProveedor.PRazonSocial = oDataReader["RAZON_SOCIAL"].ToString();

                                if (!(oDataReader["NOMBRE_RESP"] is DBNull))
                                    oProveedor.PNombre = oDataReader["NOMBRE_RESP"].ToString();

                                if (!(oDataReader["APELLIDO_RESP"] is DBNull))
                                    oProveedor.PApellido = oDataReader["APELLIDO_RESP"].ToString();

                                if (!(oDataReader["TELEFONO_MOVIL"] is DBNull))
                                    oProveedor.PTelefonoMovil = oDataReader["TELEFONO_MOVIL"].ToString();

                                if (!(oDataReader["EMAIL"] is DBNull))
                                    oProveedor.PEmail = oDataReader["EMAIL"].ToString();

                                if (!(oDataReader["TELEFONO_FIJO"] is DBNull))
                                    oProveedor.PTelefonoFijo = oDataReader["TELEFONO_FIJO"].ToString();

                                if (!(oDataReader["CALLE"] is DBNull))
                                    oProveedor.PCalle = oDataReader["CALLE"].ToString();

                                if (!(oDataReader["NUMERO"] is DBNull))
                                    oProveedor.PNumero = Convert.ToInt16(oDataReader["NUMERO"]);

                                if (!(oDataReader["PISO"] is DBNull))
                                    oProveedor.PPiso = oDataReader["PISO"].ToString();

                                if (!(oDataReader["DEPARTAMENTO"] is DBNull))
                                    oProveedor.PDepartamento = oDataReader["DEPARTAMENTO"].ToString();

                                if (!(oDataReader["ID_PROVINCIA"] is DBNull))
                                    oProveedor.PIdProvincia = Convert.ToInt32(oDataReader["ID_PROVINCIA"]);

                                if (!(oDataReader["ID_LOCALIDAD"] is DBNull))
                                    oProveedor.PIdLocalidad = Convert.ToInt32(oDataReader["ID_LOCALIDAD"]);

                                if (!(oDataReader["BARRIO"] is DBNull))
                                    oProveedor.PBarrio = oDataReader["BARRIO"].ToString();

                                if (!(oDataReader["COD_POSTAL"] is DBNull))
                                    oProveedor.PCodigoPostal = oDataReader["COD_POSTAL"].ToString();
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

            return oProveedor;
        }

        #endregion

        #region [-- Insert, Update, Delete --]

        public bool Insert(Proveedor oProveedor)
        {
            int cantRow;

            using (var oConnection = new SqlConnection(PConnectionString))
            {
                const string cmdText = @"INSERT INTO PROVEEDORES                                                
                                               (FECHA_ALTA,
                                                NUM_CUIT,
                                                RAZON_SOCIAL,
                                                NOMBRE_RESP,
                                                APELLIDO_RESP,
                                                TELEFONO_MOVIL,
                                                EMAIL,
                                                TELEFONO_FIJO,
                                                CALLE,
                                                NUMERO,
                                                PISO,
                                                DEPARTAMENTO,
                                                ID_PROVINCIA,
                                                ID_LOCALIDAD,
                                                BARRIO,
                                                COD_POSTAL)
                                            VALUES (GETDATE (),
                                                    @NUM_CUIT,
                                                    @RAZON_SOCIAL,
                                                    @NOMBRE_RESP,
                                                    @APELLIDO_RESP,
                                                    @TELEFONO_MOVIL,
                                                    @TELEFONO_FIJO,
                                                    @EMAIL,
                                                    @CALLE,
                                                    @NUMERO,
                                                    @PISO,
                                                    @DEPARTAMENTO,
                                                    @ID_PROVINCIA,
                                                    @ID_LOCALIDAD,
                                                    @BARRIO,
                                                    @COD_POSTAL)";
                using (var oCommand = new SqlCommand(cmdText, oConnection))
                {
                    try
                    {
                        oCommand.Connection.Open();
                        LoadParameter(oCommand, "@NUM_CUIT", oProveedor.PCuit);
                        LoadParameter(oCommand, "@RAZON_SOCIAL", oProveedor.PRazonSocial);
                        LoadParameter(oCommand, "@NOMBRE_RESP", oProveedor.PNombre);
                        LoadParameter(oCommand, "@APELLIDO_RESP", oProveedor.PApellido);
                        LoadParameter(oCommand, "@TELEFONO_MOVIL", oProveedor.PTelefonoMovil);
                        LoadParameter(oCommand, "@TELEFONO_FIJO", oProveedor.PTelefonoFijo);
                        LoadParameter(oCommand, "@EMAIL", oProveedor.PEmail);
                        LoadParameter(oCommand, "@CALLE", oProveedor.PCalle);
                        LoadParameter(oCommand, "@NUMERO", oProveedor.PNumero);
                        LoadParameter(oCommand, "@PISO", oProveedor.PPiso);
                        LoadParameter(oCommand, "@DEPARTAMENTO", oProveedor.PDepartamento);
                        LoadParameter(oCommand, "@ID_PROVINCIA", oProveedor.PIdProvincia);
                        LoadParameter(oCommand, "@ID_LOCALIDAD", oProveedor.PIdLocalidad);
                        LoadParameter(oCommand, "@BARRIO", oProveedor.PBarrio);
                        LoadParameter(oCommand, "@COD_POSTAL", oProveedor.PCodigoPostal);

                        cantRow = Convert.ToInt32(oCommand.ExecuteNonQuery());

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

            return cantRow > 0;
        }

        public bool Update(Proveedor oProveedor)
        {
            return false;
        }

        public bool Delete(Proveedor idProveedor)
        {
            return false;
        }

        private static void LoadParameter(SqlCommand oCommand, string nombreParametro, object valor)
        {
            oCommand.Parameters.Add(new SqlParameter(nombreParametro, valor));
        }

        #endregion

    }
}
