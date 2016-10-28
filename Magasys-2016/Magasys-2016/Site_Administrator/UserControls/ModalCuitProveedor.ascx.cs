using System;

namespace Magasys_2016.Site_Administrator.UserControls
{
    public partial class ModalCuitProveedor : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;
            var oProveedores = new BLL.Proveedores();

            if (String.IsNullOrEmpty(txtProveedorCuit.Text)) return;

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
                    lblMensaje.Visible = true;
                    upModalCuitProveedor.Update();
                }
            }
            catch (Exception ex)
            {
                lblMensajeError.Text = String.Format(COMMON.Mensajes.Sistema_Error, ex.Message);
                lblMensajeError.Visible = true;
                upModalCuitProveedor.Update();
            }
        }
    }
}