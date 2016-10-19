using System;

namespace Magasys_2016.Site_Administrator.UserControls
{
	public partial class ModalMensaje : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnModalMensajeAceptar_Click(object sender, EventArgs e)
        {
            GetRedirect(Request.Url.Segments[Request.Url.Segments.Length - 1]);
        }

        protected void btnModalMensajex_Click(object sender, EventArgs e)
        {
            GetRedirect(Request.Url.Segments[Request.Url.Segments.Length - 1]);
        }

	    private void GetRedirect(string currentPage)
	    {
            if (currentPage.Equals("Proveedor.aspx"))
            {
                Response.Redirect("ListadoProveedor.aspx");
            }
	    }
	}
}