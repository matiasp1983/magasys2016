using System;

namespace Magasys_2016.Site_Administrator
{
    public partial class Proveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*Comprueba si es la primera vez que se carga la página*/
            if (IsPostBack) return;

            if (Session["CUIT"] != null)
            {
                txtCuit.Text = Session["CUIT"].ToString();
                Session.Abandon();
            }
            else
            {
                Response.Redirect("ListadoProveedor.aspx",false);
            }
            
            /*Comprueba si es una alta*/
            if (String.IsNullOrEmpty(txtIdProveedor.Text)) return;
            Modificacion();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            /*Verifica que todas las validaciones de la página dieron OK*/
            if (!Page.IsValid) return;

            var oProveedor = CargarProveedor();
            var oProveedores = new BLL.Proveedores();

            try
            {
                if (oProveedor.PIdProveedor == 0)
                {
                    var resultado = oProveedores.Insert(oProveedor);

                    if (resultado > 0)
                    {

                    }
                }
                else
                {
                    var resultado = oProveedores.Update(oProveedor);

                    if (resultado)
                    {

                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListadoProveedor.aspx", false);
        }

        internal COMMON.Entities.Proveedor CargarProveedor()
        {
            var oProveedor = new COMMON.Entities.Proveedor();

            if (!String.IsNullOrEmpty(txtIdProveedor.Text))
                oProveedor.PIdProveedor = Convert.ToInt32(txtIdProveedor.Text);

            if (!String.IsNullOrEmpty(txtFechaAlta.Text))
                oProveedor.PFechaAlta = Convert.ToDateTime(txtFechaAlta);

            if (!String.IsNullOrEmpty(txtCuit.Text))
                oProveedor.PCuit = txtCuit.Text;

            if (!String.IsNullOrEmpty(txtRazonSocial.Text))
                oProveedor.PRazonSocial = txtRazonSocial.Text;

            if (!String.IsNullOrEmpty(txtNombreResponsable.Text))
                oProveedor.PNombre = txtNombreResponsable.Text;

            if (!String.IsNullOrEmpty(txtApellidoResponsable.Text))
                oProveedor.PApellido = txtApellidoResponsable.Text;

            if (!String.IsNullOrEmpty(txtTelefonoMovil.Text))
                oProveedor.PTelefonoMovil = txtTelefonoMovil.Text;

            if (!String.IsNullOrEmpty(txtTelefonoFijo.Text))
                oProveedor.PTelefonoFijo = txtTelefonoFijo.Text;

            if (!String.IsNullOrEmpty(txtEmail.Text))
                oProveedor.PEmail = txtEmail.Text;

            if (!String.IsNullOrEmpty(txtCalle.Text))
                oProveedor.PCalle = txtCalle.Text;

            if (!String.IsNullOrEmpty(txtNumero.Text))
                oProveedor.PNumero = Convert.ToInt16(txtNumero.Text);

            if (!String.IsNullOrEmpty(txtPiso.Text))
                oProveedor.PPiso = txtPiso.Text;

            if (!String.IsNullOrEmpty(txtDepartamento.Text))
                oProveedor.PDepartamento = txtDepartamento.Text;

            if (ddlProvincia.SelectedIndex >= 1)
                oProveedor.PIdProvincia = Convert.ToInt32(ddlProvincia.SelectedValue);

            if (ddlLocalidad.SelectedIndex >= 1)
                oProveedor.PIdLocalidad = Convert.ToInt32(ddlLocalidad.SelectedValue);

            if (ddlBarrio.SelectedIndex >= 1)
                oProveedor.PIdBarrio = Convert.ToInt32(ddlBarrio.SelectedValue);

            if (!String.IsNullOrEmpty(txtCodigoPostal.Text))
                oProveedor.PCodigoPostal = txtCodigoPostal.Text;

            return oProveedor;
        }

        internal void Modificacion()
        {
            divTitleHeading.InnerText = "Modificar Proveedor";
            divRowHidden.Visible = true;
        }
    }
}