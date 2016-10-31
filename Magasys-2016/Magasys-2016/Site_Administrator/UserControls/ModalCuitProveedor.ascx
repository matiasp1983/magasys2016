<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ModalCuitProveedor.ascx.cs" Inherits="Magasys_2016.Site_Administrator.UserControls.ModalCuitProveedor" %>

<script type="text/javascript">
    $(document).ready(function () {
        /*Esta función se utiliza para cargar la máscara del CUIT luego de hacer el POSTBACK.*/
        Sys.WebForms.PageRequestManager.getInstance().add_pageLoaded(PageLoaded);
    });

    function PageLoaded(sender, args) {
        $("#<%=txtProveedorCuit.ClientID%>").mask("99-99999999-9");
    }


    function FieldClear() {
        var cuit = document.getElementById('<%= txtProveedorCuit.ClientID %>');
        var mensajeVacio = document.getElementById('<%= lblMensajeVacio.ClientID %>');
        var mensaje = document.getElementById('<%= lblMensaje.ClientID %>');
        var mensajeError = document.getElementById('<%= lblMensajeError.ClientID %>');

        if (cuit.value.trim().length > 0) {
            cuit.value = "__-________-_";
        }

        if (mensajeVacio != null) {
            mensajeVacio.style.display = "none";
        }

        if (mensaje != null) {
            mensaje.style.display = "none";
        }

        if (mensajeError != null) {
            mensajeError.style.display = "none";
        }
    }

    function GetFocus() {
        var cuit = document.getElementById('<%= txtProveedorCuit.ClientID %>');
        setTimeout(function () { $(cuit).focus(); }, 1000);
    }

    function MessageHidden() {
        var mensajeVacio = document.getElementById('<%= lblMensajeVacio.ClientID %>');
        var mensaje = document.getElementById('<%= lblMensaje.ClientID %>');
        var mensajeError = document.getElementById('<%= lblMensajeError.ClientID %>');

        if (mensajeVacio != null) {
            mensajeVacio.style.display = "none";
        }

        if (mensaje != null) {
            mensaje.style.display = "none";
        }

        if (mensajeError != null) {
            mensajeError.style.display = "none";
        }
    }
</script>

<div id="modal-header-primary" tabindex="-1" role="dialog" aria-labelledby="modal-header-primary-label" aria-hidden="true" class="modal fade" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
        <asp:UpdatePanel ID="upModalCuitProveedor" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="modal-content">
                    <div class="modal-header modal-header-primary">
                        <asp:Button ID="btnCerrar" runat="server" CausesValidation="False" Text="x" data-dismiss="modal" aria-hidden="true" CssClass="close" OnClientClick="FieldClear();" />
                        <h4 id="modal-header-primary-label" class="modal-title">Proveedor - Ingrese el CUIT</h4>
                    </div>
                    <div class="modal-body">
                        <asp:Label ID="lblProveedorCuit" runat="server" CssClass="col-md-3 control-label" Text="CUIT">
                            <asp:Label ID="lblRqrCuit" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label><div class="col-md-9" style="width: 65%">
                                <asp:TextBox ID="txtProveedorCuit" runat="server" CssClass="form-control" MaxLength="13" onchange="MessageHidden();" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                <asp:Label ID="lblMensajeVacio" runat="server" Visible="False" CssClass="custom-error">Campo obligatorio.</asp:Label>
                                <asp:Label ID="lblMensaje" runat="server" Visible="False" CssClass="custom-error" Style="color: #00529B; background-color: #5897fb; background-color: rgba(88,151,251,0.35);" />
                                <asp:Label ID="lblMensajeError" runat="server" Visible="False" CssClass="custom-error" Style="position: fixed; left: 1%; right: 1%" />
                            </div>
                    </div>
                    <div class="modal-footer" style="margin-top: 50px">
                        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" />
                        <asp:Button ID="btnCancelar" runat="server" data-dismiss="modal" Text="Cancelar" CssClass="btn btn-default" CausesValidation="False" OnClientClick="FieldClear();" />
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</div>
<button type="button" data-target="#modal-header-primary" data-toggle="modal" class="btn btn-primary" onclick="GetFocus();">Nuevo Proveedor</button>