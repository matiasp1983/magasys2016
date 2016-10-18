<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ModalMensaje.ascx.cs" Inherits="Magasys_2016.Site_Administrator.UserControls.ModalMensaje" %>
<asp:ScriptManager ID="ScriptManager" runat="server" />
<div id="modal-header-primary" tabindex="-1" role="dialog" aria-labelledby="modal-header-primary-label" aria-hidden="true" class="modal fade" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
        <asp:UpdatePanel ID="upModalMensaje" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="modal-content">
                    <div class="modal-header modal-header-primary" style="background-color: #428bca">
                        <asp:Button ID="btnModalMensajex" runat="server" Text="x" data-dismiss="modal" aria-hidden="true" CssClass="close" CausesValidation="False" />
                        <h4 id="modal-header-primary-label" class="modal-title">Mensaje</h4>
                    </div>
                    <div class="modal-body" style="padding: 15px">
                        <div id="divModalMensajeBody"></div>
                    </div>
                    <div class="modal-footer" style="background-color: #e5e5e5; padding: 10px 20px 10px">
                        <asp:Button ID="btnModalMensajeAceptar" runat="server" Text="Aceptar" data-dismiss="modal" CssClass="btn btn-primary" CausesValidation="False" />
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</div>
