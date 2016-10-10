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
                                                PR.ID_BARRIO,
                                                PR.COD_POSTAL
                                            FROM PROVEEDOR PR";
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

                                if (!(oDataReader["ID_BARRIO"] is DBNull))
                                    oProveedor.PIdBarrio = Convert.ToInt32(oDataReader["ID_BARRIO"]);

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
                                                PR.ID_BARRIO,
                                                PR.COD_POSTAL
                                            FROM PROVEEDOR PR
                                            WHERE 1 = 1  
                                            AND PR.ID_PROVEEDOR = @ID_PROVEEDOR";
                using (var oCommand = new SqlCommand(cmdText, oConnection))
                {
                    try
                    {
                        oCommand.Connection.Open();
                        var oParameter = new SqlParameter("@ID_PROVEEDOR", idProveedor);
                        oCommand.Parameters.Add(oParameter);

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

                                if (!(oDataReader["ID_BARRIO"] is DBNull))
                                    oProveedor.PIdBarrio = Convert.ToInt32(oDataReader["ID_BARRIO"]);

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
                                                PR.ID_BARRIO,
                                                PR.COD_POSTAL
                                            FROM PROVEEDOR PR
                                            WHERE 1 = 1  
                                            AND PR.NUM_CUIT = @NUM_CUIT";
                using (var oCommand = new SqlCommand(cmdText, oConnection))
                {
                    try
                    {
                        oCommand.Connection.Open();
                        var oParameter = new SqlParameter("@NUM_CUIT", cuit);
                        oCommand.Parameters.Add(oParameter);

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

                                if (!(oDataReader["ID_BARRIO"] is DBNull))
                                    oProveedor.PIdBarrio = Convert.ToInt32(oDataReader["ID_BARRIO"]);

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

        public int Insert(Proveedor oProveedor)
        {
            /*Agregar la fecha actual al inserta el registro "getdate ()"*/
            return 0;
        }

        public bool Update(Proveedor oProveedor)
        {
            return false;
        }

        public bool Delete(Proveedor idProveedor)
        {
            return false;
        }

        #endregion

    }
}
