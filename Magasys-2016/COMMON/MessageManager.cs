using System;
using System.Web.UI;

namespace COMMON
{
    public class MessageManager
    {
        public static void Show(Page pagina, Enums.TipoMensaje tipoMensaje, string mensaje)
        {
            mensaje = Utilities.ReemplazaAxB(mensaje, "'", "\"");

            const string modal = "$('#divModalMensajeBody').addClass({0});$('#divModalMensajeBody').html('{1}');$('#modal-header-primary').modal('show');";
            switch (tipoMensaje)
            {
                case Enums.TipoMensaje.Info:
                    ScriptManager.RegisterStartupScript(pagina, pagina.GetType(), "ModalInfo", String.Format(modal, "'info'", mensaje), true);
                    break;
                case Enums.TipoMensaje.Success:
                    ScriptManager.RegisterStartupScript(pagina, pagina.GetType(), "ModalSuccess", String.Format(modal, "'success'", mensaje), true);
                    break;
                case Enums.TipoMensaje.Warning:
                    ScriptManager.RegisterStartupScript(pagina, pagina.GetType(), "ModalWarning", String.Format(modal, "'warning'", mensaje), true);
                    break;
                case Enums.TipoMensaje.Error:
                    ScriptManager.RegisterStartupScript(pagina, pagina.GetType(), "ModalError", String.Format(modal, "'error'", mensaje), true);
                    break;
            }
        }
    }
}
