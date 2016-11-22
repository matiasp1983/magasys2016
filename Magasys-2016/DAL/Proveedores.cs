using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using COMMON.Entities;
using COMMON.Filters;

namespace DAL
{
    public class Proveedores
    {
        public Proveedores()
        {
            PConnectionString = ConfigurationManager.ConnectionStrings["MagasysConnection"].ConnectionString;
        }

        private string PConnectionString { get; set; }

        #region [-- GetAll, GetByFilter, GetById, GetByCuit --]

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
                                lstProveedores.Add(GetProveedor(oDataReader));
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

        public List<Proveedor> GetByFilter(FiltroProveedor oFiltroProveedor)
        {
            const string fechaVacia = "01/01/0001";
            var lstProveedores = new List<Proveedor>();

            using (var oConnection = new SqlConnection(PConnectionString))
            {
                var cmdText = @"SELECT PR.ID_PROVEEDOR,
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
                                            WHERE 1=1";

                if (oFiltroProveedor.PIdProveedor != 0)
                {
                    cmdText += " AND PR.ID_PROVEEDOR = @ID_PROVEEDOR";
                }

                if (!String.IsNullOrEmpty(oFiltroProveedor.PCuit))
                {
                    cmdText += " AND PR.NUM_CUIT = @NUM_CUIT";
                }

                if (!oFiltroProveedor.PFechaAltaDesde.Equals(fechaVacia) && !oFiltroProveedor.PFechaAltaHasta.Equals(fechaVacia))
                {
                    if (!oFiltroProveedor.PFechaAltaDesde.Equals(oFiltroProveedor.PFechaAltaHasta))
                    {
                        cmdText += " AND PR.FECHA_ALTA >= CONVERT(DATE, @FECHA_ALTA_DESDE)";
                        cmdText += " AND PR.FECHA_ALTA <= CONVERT(DATE, @FECHA_ALTA_HASTA)";
                    }
                    else
                    {
                        cmdText += " AND PR.FECHA_ALTA = CONVERT(DATE, @FECHA_ALTA_DESDE)";
                    }
                }
                else if ((!oFiltroProveedor.PFechaAltaDesde.Equals(fechaVacia) && oFiltroProveedor.PFechaAltaHasta.Equals(fechaVacia)))
                {
                    cmdText += " AND PR.FECHA_ALTA >= CONVERT(DATE, @FECHA_ALTA_DESDE)";
                }
                else if ((!oFiltroProveedor.PFechaAltaHasta.Equals(fechaVacia) && oFiltroProveedor.PFechaAltaDesde.Equals(fechaVacia)))
                {
                    cmdText += " AND PR.FECHA_ALTA <= CONVERT(DATE, @FECHA_ALTA_HASTA)";
                }

                if (!String.IsNullOrEmpty(oFiltroProveedor.PRazonSocial))
                {
                    cmdText += " AND PR.RAZON_SOCIAL LIKE @RAZON_SOCIAL";
                }

                using (var oCommand = new SqlCommand(cmdText, oConnection))
                {
                    try
                    {
                        oCommand.Connection.Open();

                        if (oFiltroProveedor.PIdProveedor != 0)
                        {
                            LoadParameter(oCommand, "@ID_PROVEEDOR", oFiltroProveedor.PIdProveedor);
                        }

                        if (!String.IsNullOrEmpty(oFiltroProveedor.PCuit))
                        {
                            LoadParameter(oCommand, "@NUM_CUIT", oFiltroProveedor.PCuit);
                        }

                        if (!oFiltroProveedor.PFechaAltaDesde.Equals(fechaVacia) && !oFiltroProveedor.PFechaAltaHasta.Equals(fechaVacia))
                        {
                            if (!oFiltroProveedor.PFechaAltaDesde.Equals(oFiltroProveedor.PFechaAltaHasta))
                            {
                                LoadParameter(oCommand, "@FECHA_ALTA_DESDE", COMMON.Utilities.FormatDate(oFiltroProveedor.PFechaAltaDesde));
                                LoadParameter(oCommand, "@FECHA_ALTA_HASTA", COMMON.Utilities.FormatDate(oFiltroProveedor.PFechaAltaHasta));
                            }
                            else
                            {
                                LoadParameter(oCommand, "@FECHA_ALTA_DESDE", COMMON.Utilities.FormatDate(oFiltroProveedor.PFechaAltaDesde));
                            }
                        }
                        else if ((!oFiltroProveedor.PFechaAltaDesde.Equals(fechaVacia) && oFiltroProveedor.PFechaAltaHasta.Equals(fechaVacia)))
                        {
                            LoadParameter(oCommand, "@FECHA_ALTA_DESDE", COMMON.Utilities.FormatDate(oFiltroProveedor.PFechaAltaDesde));
                        }
                        else if ((!oFiltroProveedor.PFechaAltaHasta.Equals(fechaVacia) && oFiltroProveedor.PFechaAltaDesde.Equals(fechaVacia)))
                        {
                            LoadParameter(oCommand, "@FECHA_ALTA_HASTA", COMMON.Utilities.FormatDate(oFiltroProveedor.PFechaAltaHasta));
                        }

                        if (!String.IsNullOrEmpty(oFiltroProveedor.PRazonSocial))
                        {
                            LoadParameter(oCommand, "@RAZON_SOCIAL", String.Format("%{0}%", oFiltroProveedor.PRazonSocial));
                        }

                        using (var oDataReader = oCommand.ExecuteReader())
                        {
                            while (oDataReader.Read())
                            {
                                lstProveedores.Add(GetProveedor(oDataReader));
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
                                oProveedor = GetProveedor(oDataReader);
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
                const string cmdText = @"SELECT PR.NUM_CUIT FROM PROVEEDORES PR WHERE 1 = 1 AND PR.NUM_CUIT = @NUM_CUIT";
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
                                oProveedor = GetProveedor(oDataReader);
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
                                                TELEFONO_FIJO,
                                                EMAIL,
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
                        LoadParameter(oCommand, "@TELEFONO_FIJO", !String.IsNullOrEmpty(oProveedor.PTelefonoFijo) ? oProveedor.PTelefonoFijo : (object)DBNull.Value);
                        LoadParameter(oCommand, "@EMAIL", oProveedor.PEmail);
                        LoadParameter(oCommand, "@CALLE", oProveedor.PCalle);
                        LoadParameter(oCommand, "@NUMERO", oProveedor.PNumero);
                        LoadParameter(oCommand, "@PISO", !String.IsNullOrEmpty(oProveedor.PPiso) ? oProveedor.PPiso : (object)DBNull.Value);
                        LoadParameter(oCommand, "@DEPARTAMENTO", !String.IsNullOrEmpty(oProveedor.PDepartamento) ? oProveedor.PDepartamento : (object)DBNull.Value);
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
            bool exito;

            using (var oConnection = new SqlConnection(PConnectionString))
            {
                const string cmdText = @"UPDATE PROVEEDORES                                                
                                         SET    RAZON_SOCIAL = @RAZON_SOCIAL,
                                                NOMBRE_RESP = @NOMBRE_RESP,
                                                APELLIDO_RESP = @APELLIDO_RESP,
                                                TELEFONO_MOVIL = @TELEFONO_MOVIL,
                                                EMAIL = @EMAIL,
                                                TELEFONO_FIJO = @TELEFONO_FIJO,
                                                CALLE = @CALLE,
                                                NUMERO = @NUMERO,
                                                PISO = @PISO,
                                                DEPARTAMENTO = @DEPARTAMENTO,
                                                ID_PROVINCIA = @ID_PROVINCIA,
                                                ID_LOCALIDAD = @ID_LOCALIDAD,
                                                BARRIO = @BARRIO,
                                                COD_POSTAL = @COD_POSTAL
                                         WHERE 1 = 1  
                                         AND ID_PROVEEDOR = @ID_PROVEEDOR";
                using (var oCommand = new SqlCommand(cmdText, oConnection))
                {
                    try
                    {
                        oCommand.Connection.Open();
                        LoadParameter(oCommand, "@ID_PROVEEDOR", oProveedor.PIdProveedor);
                        LoadParameter(oCommand, "@RAZON_SOCIAL", oProveedor.PRazonSocial);
                        LoadParameter(oCommand, "@NOMBRE_RESP", oProveedor.PNombre);
                        LoadParameter(oCommand, "@APELLIDO_RESP", oProveedor.PApellido);
                        LoadParameter(oCommand, "@TELEFONO_MOVIL", oProveedor.PTelefonoMovil);
                        LoadParameter(oCommand, "@TELEFONO_FIJO", !String.IsNullOrEmpty(oProveedor.PTelefonoFijo) ? oProveedor.PTelefonoFijo : (object)DBNull.Value);
                        LoadParameter(oCommand, "@EMAIL", oProveedor.PEmail);
                        LoadParameter(oCommand, "@CALLE", oProveedor.PCalle);
                        LoadParameter(oCommand, "@NUMERO", oProveedor.PNumero);
                        LoadParameter(oCommand, "@PISO", !String.IsNullOrEmpty(oProveedor.PPiso) ? oProveedor.PPiso : (object)DBNull.Value);
                        LoadParameter(oCommand, "@DEPARTAMENTO", !String.IsNullOrEmpty(oProveedor.PDepartamento) ? oProveedor.PDepartamento : (object)DBNull.Value);
                        LoadParameter(oCommand, "@ID_PROVINCIA", oProveedor.PIdProvincia);
                        LoadParameter(oCommand, "@ID_LOCALIDAD", oProveedor.PIdLocalidad);
                        LoadParameter(oCommand, "@BARRIO", oProveedor.PBarrio);
                        LoadParameter(oCommand, "@COD_POSTAL", oProveedor.PCodigoPostal);

                        exito = Convert.ToBoolean(oCommand.ExecuteNonQuery());

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
            return exito;
        }

        public bool Delete(int idProveedor)
        {
            return false;
        }

        #endregion

        #region [-- Funciones Privadas --]

        private static void LoadParameter(SqlCommand oCommand, string nombreParametro, object valor)
        {
            oCommand.Parameters.Add(new SqlParameter(nombreParametro, valor));
        }

        private static Proveedor GetProveedor(IDataRecord oDataReader)
        {
            var oProveedor = new Proveedor();

            if (oDataReader.FieldCount > 1)
            {
                if (!(oDataReader["ID_PROVEEDOR"] is DBNull))
                    oProveedor.PIdProveedor = Convert.ToInt32(oDataReader["ID_PROVEEDOR"]);

                if (!(oDataReader["FECHA_ALTA"] is DBNull))
                    oProveedor.PFechaAlta = oDataReader["FECHA_ALTA"].ToString();

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

            if (!(oDataReader["NUM_CUIT"] is DBNull))
                oProveedor.PCuit = oDataReader["NUM_CUIT"].ToString();

            return oProveedor;
        }

        # endregion
    }
}
