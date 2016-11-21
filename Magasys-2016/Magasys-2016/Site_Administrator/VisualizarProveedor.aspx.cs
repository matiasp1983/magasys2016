using System;
using System.Globalization;

namespace Magasys_2016.Site_Administrator
{
    public partial class VisualizarProveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*Comprueba si es la primera vez que se carga la página*/
            if (IsPostBack) return;

            if (Session["oProveedor"] != null)
            {
                CargarProveedor((COMMON.Entities.Proveedor)Session["oProveedor"]);
                Session.Abandon();
            }
            else
            {
                Response.Redirect("ListadoProveedor.aspx", false);
            }
        }

        private void CargarProveedor(COMMON.Entities.Proveedor oProveedor)
        {
            lblPIdProveedor.Text = oProveedor.PIdProveedor.ToString(CultureInfo.InvariantCulture);
            lblPFechaAlta.Text = oProveedor.PFechaAlta;
            lblPCuit.Text = oProveedor.PCuit;
            lblPRazonSocial.Text = oProveedor.PRazonSocial;
            lblPNombreResponsable.Text = oProveedor.PNombre;
            lblPApellidoResponsable.Text = oProveedor.PApellido;
            lblPTelefonoMovil.Text = oProveedor.PTelefonoMovil;
            lblPTelefonoFijo.Text = oProveedor.PTelefonoFijo;
            lblPEmail.Text = oProveedor.PEmail;
            lblPCalle.Text = oProveedor.PCalle;
            lblPNumero.Text = oProveedor.PNumero.ToString(CultureInfo.InvariantCulture);
            lblPPiso.Text = oProveedor.PPiso;
            lblPDepartamento.Text = oProveedor.PDepartamento;
            lblPProvincia.Text = LoadProvincia(oProveedor.PIdProvincia);
            lblPLocalidad.Text = LoadLocalidad(oProveedor.PIdLocalidad);
            lblPBarrio.Text = oProveedor.PBarrio;
            lblPCodigoPostal.Text = oProveedor.PCodigoPostal;
        }

        private string LoadProvincia(int idProvincia)
        {
            var resultado = String.Empty;
            var oProvincias = new BLL.Provincias();

            try
            {
                resultado = oProvincias.GetById(idProvincia).PNombre;
            }
            catch (Exception ex)
            {
                COMMON.MessageManager.Show(Page, COMMON.Enums.TipoMensaje.Error, String.Format(COMMON.Mensajes.Sistema_Error, ex.Message));
            }

            return resultado;
        }

        private string LoadLocalidad(int idLocalidad)
        {
            var resultado = String.Empty;
            var oLocalidades = new BLL.Localidades();

            try
            {
                resultado = oLocalidades.GetById(idLocalidad).PNombre;
            }
            catch (Exception ex)
            {
                COMMON.MessageManager.Show(Page, COMMON.Enums.TipoMensaje.Error, String.Format(COMMON.Mensajes.Sistema_Error, ex.Message));
            }

            return resultado;
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            var oProveedores = new BLL.Proveedores();
            Session["oProveedor"] = oProveedores.GetById(Convert.ToInt32(lblPIdProveedor.Text));
            Response.Redirect("Proveedor.aspx", false);
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListadoProveedor.aspx", false);
        }
    }
}