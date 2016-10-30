﻿using System;
using System.Web.UI.WebControls;

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
                Response.Redirect("ListadoProveedor.aspx", false);
            }

            /*Comprueba si es una alta*/
            if (String.IsNullOrEmpty(txtIdProveedor.Text))
            {
                LoadProvincia();
            }
            else
            {
                Modificacion();
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            /*Verifica que todas las validaciones de la página dieron OK*/
            if (!Page.IsValid) return;

            var oProveedor = CargarProveedor();
            var oProveedores = new BLL.Proveedores();

            try
            {
                var resultado = oProveedor.PIdProveedor == 0 ? oProveedores.Insert(oProveedor) : oProveedores.Update(oProveedor);

                if (resultado)
                {
                    COMMON.MessageManager.Show(Page, COMMON.Enums.TipoMensaje.Success, COMMON.Mensajes.Proveedor_Success);
                }
                else
                {
                    COMMON.MessageManager.Show(Page, COMMON.Enums.TipoMensaje.Warning, COMMON.Mensajes.Proveedor_Failure);
                }
            }
            catch (Exception ex)
            {
                COMMON.MessageManager.Show(Page, COMMON.Enums.TipoMensaje.Error, String.Format(COMMON.Mensajes.Proveedor_Error, ex.Message));
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

            if (!String.IsNullOrEmpty(txtBarrio.Text))
                oProveedor.PBarrio = txtBarrio.Text;

            if (!String.IsNullOrEmpty(txtCodigoPostal.Text))
                oProveedor.PCodigoPostal = txtCodigoPostal.Text;

            return oProveedor;
        }

        internal void Modificacion()
        {
            divTitleHeading.InnerText = "Modificar Proveedor";
            divRowHidden.Visible = true;
        }

        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlProvincia.SelectedValue != String.Empty)
            {
                var idProvincia = Convert.ToInt32(ddlProvincia.SelectedValue);
                LoadLocalidad(idProvincia);
            }
            else
            {
                ddlLocalidad.Items.Clear();
                txtBarrio.Text = String.Empty;
            }
        }

        private void LoadProvincia()
        {
            var oProvincias = new BLL.Provincias();

            try
            {
                ddlProvincia.DataSource = oProvincias.GetAll();
                ddlProvincia.DataTextField = "PNombre";
                ddlProvincia.DataValueField = "PIdProvincia";
                ddlProvincia.DataBind();
                ddlProvincia.Items.Insert(0, new ListItem(String.Empty, String.Empty));
                ddlProvincia.SelectedIndex = 0;
            }
            catch (Exception ex)
            {
                COMMON.MessageManager.Show(Page, COMMON.Enums.TipoMensaje.Error, String.Format(COMMON.Mensajes.Sistema_Error, ex.Message));
            }

        }

        private void LoadLocalidad(int idProvincia)
        {
            var oLocalidades = new BLL.Localidades();

            try
            {
                ddlLocalidad.DataSource = oLocalidades.GetLocalidadByProvincia(idProvincia);
                ddlLocalidad.DataTextField = "PNombre";
                ddlLocalidad.DataValueField = "PIdLocalidad";
                ddlLocalidad.DataBind();
                ddlLocalidad.Items.Insert(0, new ListItem(String.Empty, String.Empty));
                ddlLocalidad.SelectedIndex = 0;
            }
            catch (Exception ex)
            {
                COMMON.MessageManager.Show(Page, COMMON.Enums.TipoMensaje.Error, String.Format(COMMON.Mensajes.Sistema_Error, ex.Message));
            }
        }
    }
}