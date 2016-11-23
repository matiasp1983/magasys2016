using System;
using System.Globalization;
using System.Web.Services;
using System.Web.UI.WebControls;

namespace Magasys_2016.Site_Administrator
{
    public partial class ListadoProveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            LimpiarControles();
            CargarSessionFiltroProveedor();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            var oFiltroProveedor = new COMMON.Filters.FiltroProveedor();

            if (!String.IsNullOrEmpty(txtIdProveedor.Text))
            {
                oFiltroProveedor.PIdProveedor = Convert.ToInt32(txtIdProveedor.Text);
            }

            if (!String.IsNullOrEmpty(txtCuit.Text))
            {
                oFiltroProveedor.PCuit = txtCuit.Text;
            }

            if (!String.IsNullOrEmpty(txtFechaAltaDesde.Text))
            {
                oFiltroProveedor.PFechaAltaDesde = txtFechaAltaDesde.Text;
            }

            if (!String.IsNullOrEmpty(txtFechaAltaHasta.Text))
            {
                oFiltroProveedor.PFechaAltaHasta = txtFechaAltaHasta.Text;
            }

            if (!String.IsNullOrEmpty(txtRazonSocial.Text))
            {
                oFiltroProveedor.PRazonSocial = txtRazonSocial.Text;
            }

            try
            {
                Filtrar(oFiltroProveedor);
            }
            catch (Exception ex)
            {
                COMMON.MessageManager.Show(Page, COMMON.Enums.TipoMensaje.Error, String.Format(COMMON.Mensajes.ListadoProveedor_ErrorFiltrar, ex.Message), true);
            }
        }

        private void Filtrar(COMMON.Filters.FiltroProveedor oFiltroProveedor)
        {
            var oProveedores = new BLL.Proveedores();
            lsvProveedores.DataSource = oProveedores.GetByFilter(oFiltroProveedor);
            lsvProveedores.DataBind();
            TotalFilasProveedores(lsvProveedores.Items.Count);
            CrearSessionFiltroProveedor(oFiltroProveedor);
        }

        private void TotalFilasProveedores(int total)
        {
            switch (lsvProveedores.Items.Count)
            {
                case 0:
                    lblTotalFilasProveedores.Text = COMMON.Mensajes.ListadoProveedor_FiltrarTotalFilaCero;
                    break;
                case 1:
                    lblTotalFilasProveedores.Text = String.Format(COMMON.Mensajes.ListadoProveedor_FiltrarTotalFila, total);
                    break;
                default:
                    lblTotalFilasProveedores.Text = String.Format(COMMON.Mensajes.ListadoProveedor_FiltrarTotalFilas, total);
                    break;
            }

            lblTotalFilasProveedores.Visible = true;
        }

        private void CrearSessionFiltroProveedor(COMMON.Filters.FiltroProveedor oFiltroProveedor)
        {
            Session["oFiltroProveedor"] = oFiltroProveedor;
        }

        private void CargarSessionFiltroProveedor()
        {
            if (Session["oFiltroProveedor"] == null) return;

            const string fechaVacia = "01/01/0001";
            var oFiltroProveedor = (COMMON.Filters.FiltroProveedor)Session["oFiltroProveedor"];

            if (oFiltroProveedor.PIdProveedor != 0)
            {
                txtIdProveedor.Text = oFiltroProveedor.PIdProveedor.ToString(CultureInfo.InvariantCulture);
            }

            if (!String.IsNullOrEmpty(oFiltroProveedor.PCuit))
            {
                txtCuit.Text = oFiltroProveedor.PCuit;
            }

            if (!oFiltroProveedor.PFechaAltaDesde.Equals(fechaVacia))
            {
                txtFechaAltaDesde.Text = oFiltroProveedor.PFechaAltaDesde;
            }

            if (!oFiltroProveedor.PFechaAltaHasta.Equals(fechaVacia))
            {
                txtFechaAltaHasta.Text = oFiltroProveedor.PFechaAltaHasta;
            }

            if (!String.IsNullOrEmpty(oFiltroProveedor.PRazonSocial))
            {
                txtRazonSocial.Text = oFiltroProveedor.PRazonSocial;
            }

            Filtrar(oFiltroProveedor);
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            LimpiarControles();
        }

        private void LimpiarControles()
        {
            txtIdProveedor.Text = String.Empty;
            txtCuit.Text = String.Empty;
            txtFechaAltaDesde.Text = String.Empty;
            txtFechaAltaHasta.Text = String.Empty;
            txtRazonSocial.Text = String.Empty;
            lblTotalFilasProveedores.Visible = false;
            lsvProveedores.DataSource = null;
            lsvProveedores.DataBind();
            ManejoSessionFiltroProveedor();
        }

        private void ManejoSessionFiltroProveedor()
        {
            if (Request.UrlReferrer != null)
            {
                var paginaAnterior = Request.UrlReferrer.Segments[2];
                if (paginaAnterior != "Proveedor.aspx" && paginaAnterior != "VisualizarProveedor.aspx")
                {
                    Session["oFiltroProveedor"] = null;
                }
                else
                {
                    if (paginaAnterior != "Proveedor.aspx") return;
                    if (Session["NuevoProveedor"] == null || !(bool)Session["NuevoProveedor"]) return;
                    /*Esta acción se realiza si es una nueva alta de proveedor. 
                     *Se limpia los campos del filtro y se modifica las fechas 
                     *con la fecha actual de sistema.*/
                    var oFiltroProveedor = (COMMON.Filters.FiltroProveedor)Session["oFiltroProveedor"];
                    oFiltroProveedor.PIdProveedor = 0;
                    oFiltroProveedor.PCuit = String.Empty;
                    oFiltroProveedor.PFechaAltaDesde = oFiltroProveedor.PFechaAltaHasta = DateTime.Today.ToShortDateString();
                    oFiltroProveedor.PRazonSocial = String.Empty;
                    Session["oFiltroProveedor"] = oFiltroProveedor;
                    Session["NuevoProveedor"] = null;
                }
            }
            else
            {
                Session["oFiltroProveedor"] = null;
            }
        }

        protected void lsvProveedores_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType != ListViewItemType.DataItem) return;

            var idProveedor = ((COMMON.Entities.Proveedor)(e.Item.DataItem)).PIdProveedor;
            var cuit = ((COMMON.Entities.Proveedor)(e.Item.DataItem)).PCuit;
            var btnVisualizar = (System.Web.UI.HtmlControls.HtmlButton)e.Item.FindControl("btnVisualizar");
            var btnModificar = (System.Web.UI.HtmlControls.HtmlButton)e.Item.FindControl("btnModificar");
            var btnEliminar = (System.Web.UI.HtmlControls.HtmlButton)e.Item.FindControl("btnEliminar");
            btnVisualizar.Attributes.Add("value", Convert.ToString(idProveedor));
            btnModificar.Attributes.Add("value", Convert.ToString(idProveedor));
            btnEliminar.Attributes.Add("value", Convert.ToString(idProveedor));
            btnEliminar.Attributes.Add("data-content", String.Format(COMMON.Mensajes.ListadoProveedor_PreguntaEliminar, cuit));
        }

        protected void btnVisualizar_Click(object sender, EventArgs e)
        {
            var oProveedores = new BLL.Proveedores();
            Session["oProveedor"] = oProveedores.GetById(Convert.ToInt32(((System.Web.UI.HtmlControls.HtmlButton)sender).Attributes["value"]));
            Response.Redirect("VisualizarProveedor.aspx", false);
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            var oProveedores = new BLL.Proveedores();
            Session["oProveedor"] = oProveedores.GetById(Convert.ToInt32(((System.Web.UI.HtmlControls.HtmlButton)sender).Attributes["value"]));
            Response.Redirect("Proveedor.aspx", false);
        }

        [WebMethod]
        public static string EliminarProveedor(int idProveedor)
        {
            try
            {
                var oProveedores = new BLL.Proveedores();
                return oProveedores.Delete(idProveedor) ? "1" : String.Format(COMMON.Mensajes.ListadoProveedor_FailureEliminarProveedor, "0");
            }
            catch (Exception ex)
            {
                return String.Format(COMMON.Mensajes.ListadoProveedor_ErrorEliminarProveedor, "-1", ex.Message);
            }
        }
    }
}