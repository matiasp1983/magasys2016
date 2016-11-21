<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ModalMensajeHTML.ascx.cs" Inherits="Magasys_2016.Site_Administrator.UserControls.ModalMensajeHTML" %>
<div id="modal-header-primary-html" tabindex="-1" role="dialog" aria-labelledby="modal-header-primary-label" aria-hidden="true" class="modal fade" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
        <asp:UpdatePanel ID="upModalMensajeHTML" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="modal-content">
                    <div class="modal-header modal-header-primary" style="background-color: #428bca">
                        <input id="btnModalMensajeHTMLx" type="button" value="x" class="close" data-dismiss="modal" />
                        <h4 id="modal-header-primary-label" class="modal-title">Mensaje</h4>
                    </div>
                    <div class="modal-body" style="padding: 15px">
                        <div id="divModalMensajeHTMLBody"></div>
                    </div>
                    <div class="modal-footer" style="background-color: #e5e5e5; padding: 10px 20px 10px">
                        <input id="btnModalMensajeHTMLAceptar" type="button" value="Aceptar" class="btn btn-primary" data-dismiss="modal" />
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</div>
