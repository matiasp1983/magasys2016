using System.Web.UI;

namespace COMMON
{
    public class Message
    {
        public static void Show(Page pagina, Enums.TipoMensaje tipoMensaje, string mensaje = "", string paginaDestino = "")
        {
            var modal = string.Format(@"$('#modal-alert').modal('show');
                                        <div id='modal-alert' tabindex='-1' role='dialog' aria-hidden='true' class='modal fade'>
                                        <div class='modal-dialog'>
                                        <div class='modal-content'>
                                        <div class='modal-body'>{0}</div>
                                        <div class='modal-footer'>
                                        <button type='button' data-dismiss='modal' class='btn btn-primary'>{1}</button>'
                                        </div>
                                        </div>
                                        </div>
                                        </div>", mensaje, "Aceptar");
            switch (tipoMensaje)
            {
                case Enums.TipoMensaje.Mensaje:
                    ScriptManager.RegisterStartupScript(pagina, pagina.GetType(), "Modal", modal, true);
                    //pagina.Response.Redirect(paginaDestino, false);
                    break;
                case Enums.TipoMensaje.Advertencia:
                    ScriptManager.RegisterStartupScript(pagina, pagina.GetType(), "Modal", modal, true);
                    pagina.Response.Redirect(paginaDestino, false);
                    break;
                case Enums.TipoMensaje.Pregunta:
                    ScriptManager.RegisterStartupScript(pagina, pagina.GetType(), "Modal", modal, true);
                    pagina.Response.Redirect(paginaDestino, false);
                    break;
                case Enums.TipoMensaje.Error:
                    ScriptManager.RegisterStartupScript(pagina, pagina.GetType(), "Modal", modal, true);
                    break;
                default:
                    pagina.Response.Redirect(paginaDestino, false);
                    break;
            }
        }
    }
}
