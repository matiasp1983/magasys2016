<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ModalCuitProveedor.ascx.cs" Inherits="Magasys_2016.Site_Administrator.UserControls.ModalCuitProveedor" %>

<script type="text/javascript">
    function FieldClear() {
        var cuit = document.getElementById('<%= txtProveedorCuit.ClientID %>');
        var rfvCuit = document.getElementById('<%= rfvCuit.ClientID %>');
        var revCuit = document.getElementById('<%= revCuit.ClientID %>');
        var mensaje = document.getElementById('<%= lblMensaje.ClientID %>');

        if (cuit.value.trim().length > 0) {
            cuit.value = "";
        }

        if (rfvCuit.style.display == "inline") {
            rfvCuit.style.display = "none";
        }

        if (revCuit.style.display == "inline") {
            revCuit.style.display = "none";
        }

        if (mensaje != null) {
            mensaje.style.display = "none";
        }
    }

    function GetFocus() {
        var cuit = document.getElementById('<%= txtProveedorCuit.ClientID %>');
        setTimeout(function () { $(cuit).focus(); }, 1000);
    }
    
    function MessageHidden() {
        var rfvCuit = document.getElementById('<%= rfvCuit.ClientID %>');
        var revCuit = document.getElementById('<%= revCuit.ClientID %>');
        var mensaje = document.getElementById('<%= lblMensaje.ClientID %>');

        var inline = "inline";

        if (rfvCuit.style.display == inline || revCuit.style.display == inline) {
            mensaje.style.display = "none";
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
                                <asp:TextBox ID="txtProveedorCuit" runat="server" CssClass="form-control" MaxLength="13" onchange="MessageHidden();"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCuit" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtProveedorCuit" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error"/>
                                <asp:RegularExpressionValidator ID="revCuit" runat="server" ErrorMessage="Formato incorrecto (ej: 99-99999999-9)" ValidationExpression="^[0-9]{2}-[0-9]{8}-[0-9]$" ControlToValidate="txtProveedorCuit" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error"/>
                                <asp:Label ID="lblMensaje" runat="server" Visible="False" CssClass="custom-error">El CUIT ingresado ya existe</asp:Label>
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