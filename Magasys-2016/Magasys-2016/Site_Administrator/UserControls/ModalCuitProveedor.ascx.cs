using System;
using System.Globalization;
using System.Runtime.InteropServices;

namespace Magasys_2016.Site_Administrator.UserControls
{
    public partial class ModalCuitProveedor : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            var oProveedores = new BLL.Proveedores();

            if (!String.IsNullOrEmpty(txtProveedorCuit.Text))
            {
                if (ValidaCuit(txtProveedorCuit.Text))
                {
                    try
                    {
                        var oProveedor = oProveedores.GetByCuit(txtProveedorCuit.Text);

                        if (oProveedor == null)
                        {
                            Session["CUIT"] = txtProveedorCuit.Text;
                            Response.Redirect("Proveedor.aspx", false);
                        }
                        else
                        {
                            lblMensaje.Text = String.Format(COMMON.Mensajes.ModalCuitProveedor_Exist, txtProveedorCuit.Text);
                            GetMensaje(msj: true);
                        }
                    }
                    catch (Exception ex)
                    {
                        lblMensajeError.Text = String.Format(COMMON.Mensajes.Sistema_Error, ex.Message);
                        GetMensaje(msjE: true);
                    }
                }
                else
                {
                    lblMensaje.Text = String.Format(COMMON.Mensajes.ModalCuitProveedor_Failure, txtProveedorCuit.Text); ;
                    GetMensaje(msj: true);
                }
            }
            else
            {
                GetMensaje(true);
                txtProveedorCuit.Focus();
            }

            upModalCuitProveedor.Update();
        }

        private void GetMensaje(bool msjV = false, bool msj = false, bool msjE = false)
        {
            lblMensajeVacio.Visible = msjV;
            lblMensaje.Visible = msj;
            lblMensajeError.Visible = msjE;
        }

        private static bool ValidaCuit(string cuit)
        {
            if (String.IsNullOrEmpty(cuit)) return false;
            //Quito los guiones, el cuit resultante debe tener 11 caracteres.
            cuit = cuit.Replace("-", string.Empty);
            if (cuit.Equals("00000000000")) return false;
            var calculado = COMMON.Utilities.CalcularDigitoCuit(cuit);
            var digito = int.Parse(cuit.Substring(10));
            return calculado == digito;
        }
    }
}