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

        #region [-- GetAll , GetOneById --]

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

                        using (var objDataReader = oCommand.ExecuteReader())
                        {

                            while (objDataReader.Read())
                            {
                                var oProveedor = new Proveedor();

                                if (!(objDataReader["ID_PROVEEDOR"] is DBNull))
                                    oProveedor.PIdProveedor = Convert.ToInt32(objDataReader["ID_PROVEEDOR"]);

                                if (!(objDataReader["FECHA_ALTA"] is DBNull))
                                    oProveedor.PFechaAlta = Convert.ToDateTime(objDataReader["FECHA_ALTA"]);

                                if (!(objDataReader["NUM_CUIT"] is DBNull))
                                    oProveedor.PCuit = Convert.ToInt32(objDataReader["NUM_CUIT"]);

                                if (!(objDataReader["RAZON_SOCIAL"] is DBNull))
                                    oProveedor.PRazonSocial = objDataReader["RAZON_SOCIAL"].ToString();

                                if (!(objDataReader["NOMBRE_RESP"] is DBNull))
                                    oProveedor.PNombre = objDataReader["NOMBRE_RESP"].ToString();

                                if (!(objDataReader["APELLIDO_RESP"] is DBNull))
                                    oProveedor.PApellido = objDataReader["APELLIDO_RESP"].ToString();

                                if (!(objDataReader["TELEFONO_MOVIL"] is DBNull))
                                    oProveedor.PTelefonoMovil = objDataReader["TELEFONO_MOVIL"].ToString();

                                if (!(objDataReader["EMAIL"] is DBNull))
                                    oProveedor.PEmail = objDataReader["EMAIL"].ToString();

                                if (!(objDataReader["TELEFONO_FIJO"] is DBNull))
                                    oProveedor.PTelefonoFijo = objDataReader["TELEFONO_FIJO"].ToString();

                                if (!(objDataReader["CALLE"] is DBNull))
                                    oProveedor.PCalle = objDataReader["CALLE"].ToString();

                                if (!(objDataReader["NUMERO"] is DBNull))
                                    oProveedor.PNumero = Convert.ToInt16(objDataReader["NUMERO"]);

                                if (!(objDataReader["PISO"] is DBNull))
                                    oProveedor.PPiso = Convert.ToInt16(objDataReader["PISO"]);

                                if (!(objDataReader["DEPARTAMENTO"] is DBNull))
                                    oProveedor.PDepartamento = objDataReader["DEPARTAMENTO"].ToString();

                                if (!(objDataReader["ID_PROVINCIA"] is DBNull))
                                    oProveedor.PIdProvincia = Convert.ToInt32(objDataReader["ID_PROVINCIA"]);

                                if (!(objDataReader["ID_LOCALIDAD"] is DBNull))
                                    oProveedor.PIdLocalidad = Convert.ToInt32(objDataReader["ID_LOCALIDAD"]);

                                if (!(objDataReader["ID_BARRIO"] is DBNull))
                                    oProveedor.PIdBarrio = Convert.ToInt32(objDataReader["ID_BARRIO"]);

                                if (!(objDataReader["COD_POSTAL"] is DBNull))
                                    oProveedor.PCodigoPostal = objDataReader["COD_POSTAL"].ToString();

                                lstProveedores.Add(oProveedor);
                            }
                        }

                        oConnection.Close();
                        oConnection.Dispose();

                    }
                    catch (Exception)
                    {
                        if (oConnection.State == ConnectionState.Closed) throw;
                        oConnection.Close();
                        oConnection.Dispose();
                        throw;
                    }
                }
            }
            return lstProveedores;
        }

        public Proveedor GetOneById(int idProveedor)
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
                                            WHERE 1= 1  
                                            AND PR.ID_PROVEEDOR = @ID_PROVEEDOR";
                using (var oCommand = new SqlCommand(cmdText, oConnection))
                {
                    try
                    {
                        oCommand.Connection.Open();
                        var oParameter = new SqlParameter("@ID_PROVEEDOR", idProveedor);
                        oCommand.Parameters.Add(oParameter);

                        using (var objDataReader = oCommand.ExecuteReader())
                        {
                            while (objDataReader.Read())
                            {
                                oProveedor = new Proveedor();

                                if (!(objDataReader["ID_PROVEEDOR"] is DBNull))
                                    oProveedor.PIdProveedor = Convert.ToInt32(objDataReader["ID_PROVEEDOR"]);

                                if (!(objDataReader["FECHA_ALTA"] is DBNull))
                                    oProveedor.PFechaAlta = Convert.ToDateTime(objDataReader["FECHA_ALTA"]);

                                if (!(objDataReader["NUM_CUIT"] is DBNull))
                                    oProveedor.PCuit = Convert.ToInt32(objDataReader["NUM_CUIT"]);

                                if (!(objDataReader["RAZON_SOCIAL"] is DBNull))
                                    oProveedor.PRazonSocial = objDataReader["RAZON_SOCIAL"].ToString();

                                if (!(objDataReader["NOMBRE_RESP"] is DBNull))
                                    oProveedor.PNombre = objDataReader["NOMBRE_RESP"].ToString();

                                if (!(objDataReader["APELLIDO_RESP"] is DBNull))
                                    oProveedor.PApellido = objDataReader["APELLIDO_RESP"].ToString();

                                if (!(objDataReader["TELEFONO_MOVIL"] is DBNull))
                                    oProveedor.PTelefonoMovil = objDataReader["TELEFONO_MOVIL"].ToString();

                                if (!(objDataReader["EMAIL"] is DBNull))
                                    oProveedor.PEmail = objDataReader["EMAIL"].ToString();

                                if (!(objDataReader["TELEFONO_FIJO"] is DBNull))
                                    oProveedor.PTelefonoFijo = objDataReader["TELEFONO_FIJO"].ToString();

                                if (!(objDataReader["CALLE"] is DBNull))
                                    oProveedor.PCalle = objDataReader["CALLE"].ToString();

                                if (!(objDataReader["NUMERO"] is DBNull))
                                    oProveedor.PNumero = Convert.ToInt16(objDataReader["NUMERO"]);

                                if (!(objDataReader["PISO"] is DBNull))
                                    oProveedor.PPiso = Convert.ToInt16(objDataReader["PISO"]);

                                if (!(objDataReader["DEPARTAMENTO"] is DBNull))
                                    oProveedor.PDepartamento = objDataReader["DEPARTAMENTO"].ToString();

                                if (!(objDataReader["ID_PROVINCIA"] is DBNull))
                                    oProveedor.PIdProvincia = Convert.ToInt32(objDataReader["ID_PROVINCIA"]);

                                if (!(objDataReader["ID_LOCALIDAD"] is DBNull))
                                    oProveedor.PIdLocalidad = Convert.ToInt32(objDataReader["ID_LOCALIDAD"]);

                                if (!(objDataReader["ID_BARRIO"] is DBNull))
                                    oProveedor.PIdBarrio = Convert.ToInt32(objDataReader["ID_BARRIO"]);

                                if (!(objDataReader["COD_POSTAL"] is DBNull))
                                    oProveedor.PCodigoPostal = objDataReader["COD_POSTAL"].ToString();
                            }
                        }

                        oConnection.Close();
                        oConnection.Dispose();
                    }
                    catch (Exception)
                    {
                        if (oConnection.State == ConnectionState.Closed) throw;
                        oConnection.Close();
                        oConnection.Dispose();
                        throw;
                    }
                }
            }

            return oProveedor;
        }

        #endregion

        #region [-- Insert, Update, Delete --]

        public int Insert(Proveedor objProveedor)
        {
            return 0;
        }

        public bool Update(Proveedor objProveedor)
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
