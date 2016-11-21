<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="ListadoProveedor.aspx.cs" Inherits="Magasys_2016.Site_Administrator.ListadoProveedor" %>

<%@ Register Src="~/Site_Administrator/UserControls/ModalCuitProveedor.ascx" TagPrefix="uc1" TagName="ModalCuitProveedor" %>
<%@ Register Src="~/Site_Administrator/UserControls/ModalMensajeHTML.ascx" TagPrefix="uc2" TagName="ModalMensajeHTML" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=txtCuit.ClientID%>").mask("99-99999999-9");
            $("#dpFechaAlta").datepicker();

            $('[data-toggle=confirmation-singleton]').confirmation({
                singleton: true,
                rootSelector: '[data-toggle=confirmation-singleton]',
                container: 'body'
            }).on('confirmed.bs.confirmation', function () { eliminarProveedor(); });
        });

        function eliminarProveedor() {
            var params = new Object();
            params.idProveedor = $("#<%=hfIdProveedor.ClientID%>").val();
            params = JSON.stringify(params);
            $.ajax({
                type: "POST", url: "ListadoProveedor.aspx/EliminarProveedor",
                data: params, contentType: "application/json; charset=utf-8",
                dataType: "json", success: Resultado
            });
        }

        function setValue(boton) {
            document.getElementById("<%=hfIdProveedor.ClientID %>").value = boton.value;
        }

        function Resultado(result) {
            if (result.d.match("^0")) {
                $('#divModalMensajeHTMLBody').addClass('warning');
                $('#divModalMensajeHTMLBody').html(result.d.substring(1, result.d.length));
            }
            if (result.d.match("^-1")) {
                $('#divModalMensajeHTMLBody').addClass('error');
                $('#divModalMensajeHTMLBody').html(result.d.substring(2, result.d.length));
            }
            $('#modal-header-primary-html').modal('show');
        }
    </script>
    <div class="panel panel-pink">
        <div class="panel-heading">Listado Proveedores</div>
        <div class="panel-body pan">
            <form class="form-horizontal" runat="server">
                <asp:ScriptManager ID="ScriptManager" runat="server" />
                <div class="form-body pal">
                    <h3>Buscar por:</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblIdProveedor" runat="server" CssClass="col-md-3 control-label" Text="C&oacute;digo" />
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtIdProveedor" runat="server" CssClass="form-control" TabIndex="1" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblCuit" runat="server" CssClass="col-md-3 control-label" Text="CUIT" />
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtCuit" runat="server" CssClass="form-control" TabIndex="2" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblFechaAlta" runat="server" CssClass="col-md-3 control-label" Text="Fecha Alta" />
                                <div class="col-md-9">
                                    <div class="input-group input-daterange" id='dpFechaAlta'>
                                        <asp:TextBox ID="txtFechaAltaDesde" runat="server" CssClass="form-control" ToolTip="Fecha Alta Desde" TabIndex="3" />
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        <asp:TextBox ID="txtFechaAltaHasta" runat="server" CssClass="form-control" ToolTip="Fecha Alta Hasta" TabIndex="4" />
                                    </div>
                                    <asp:CompareValidator
                                        ID="cvFechaAlta"
                                        runat="server"
                                        ErrorMessage="La Fecha Alta Hasta no puede ser menor a la Fecha Alta Desde."
                                        Operator="GreaterThanEqual"
                                        ControlToCompare="txtFechaAltaDesde"
                                        ControlToValidate="txtFechaAltaHasta"
                                        Type="Date"
                                        SetFocusOnError="True"
                                        Display="Dynamic"
                                        CssClass="custom-error" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblRazonSocial" runat="server" CssClass="col-md-3 control-label" Text="Raz&oacute;n Social" />
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtRazonSocial" runat="server" CssClass="form-control" MaxLength="50" TabIndex="4" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4" style="top: 20px">
                        <button type="button" id="btnFiltrar" runat="server" class="btn btn-primary start" onserverclick="btnFiltrar_Click"><i class="fa fa-filter"></i>&nbsp;<span>Filtrar</span></button>
                        <button type="button" id="btnLimpiar" runat="server" class="btn btn-warning cancel" causesvalidation="False" onserverclick="btnLimpiar_Click"><i class="fa fa-ban"></i>&nbsp;<span>Limpiar</span></button>
                    </div>
                    <br />
                    <br />
                    <hr class="mtxl mbxl" />
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="tableactionTabContent" class="tab-content" style="border: 0">
                                <div id="table-panel-tab" class="tab-pane fade active in">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="portlet portlet-white">
                                                <div class="portlet-header pam mbn">
                                                    <div class="caption">Listado de Proveedores</div>
                                                    <div class="actions">
                                                        <uc1:ModalCuitProveedor runat="server" ID="ModalCuitProveedor" />
                                                    </div>
                                                </div>
                                                <div class="portlet-body pan">
                                                    <asp:ListView ID="lsvProveedores" runat="server" DataKeyNames="PIdProveedor" OnItemDataBound="lsvProveedores_ItemDataBound">
                                                        <%-- Plantilla del contenedor del listview --%>
                                                        <LayoutTemplate>
                                                            <table class="table table-hover table-striped table-bordered table-advanced tablesorter mbn">
                                                                <thead>
                                                                    <tr>
                                                                        <th style="width: 10%;">C&oacute;digo Proveedor</th>
                                                                        <th style="width: 10%;">CUIT</th>
                                                                        <th style="width: 7%;">Fecha Alta</th>
                                                                        <th style="width: 12%;">Raz&oacute;n Social</th>
                                                                        <th style="width: 12%;">Nombre Responsable</th>
                                                                        <th style="width: 12%;">Apellido Responsable</th>
                                                                        <th style="width: 12%; text-align: center">Acci&oacute;n</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr id="itemPlaceholder" runat="server">
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </LayoutTemplate>
                                                        <%-- Plantilla para las lineas de detalle del listview --%>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="lblIdProveedorColumna" runat="server" Text='<%#Bind("PIdProveedor")%>' />
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblCuitColumna" runat="server" Text='<%#Bind("PCuit")%>' /></td>
                                                                <td>
                                                                    <asp:Label ID="lblFechaAltaColumna" runat="server" Text='<%#Bind("PFechaAlta")%>' /></td>
                                                                <td>
                                                                    <asp:Label ID="lblRazonSocialColumna" runat="server" Text='<%#Bind("PRazonSocial")%>' /></td>
                                                                <td>
                                                                    <asp:Label ID="lblNombreResponsableColumna" runat="server" Text='<%#Bind("PNombre")%>' /></td>
                                                                <td>
                                                                    <asp:Label ID="lblApellidoResponsableColumna" runat="server" Text='<%#Bind("PApellido")%>' /></td>
                                                                <td style="text-align: center">
                                                                    <button id="btnVisualizar" runat="server" type="button" class="btn btn-xs btn-success filter-submit" title="Visualizar" onserverclick="btnVisualizar_Click">
                                                                        <i class="fa fa-search"></i>
                                                                    </button>
                                                                    <button id="btnModificar" runat="server" type="button" class="btn btn-xs btn-info filter-cancel" title="Modificar" onserverclick="btnModificar_Click">
                                                                        <i class="fa fa-edit"></i>
                                                                    </button>
                                                                    <button id="btnEliminar" runat="server" type="button" class="btn btn-danger btn-xs"
                                                                        data-toggle="confirmation-singleton" data-singleton="true" data-btn-ok-label="Aceptar" data-btn-ok-icon="fa fa-check"
                                                                        data-btn-cancel-label="Cancelar" data-btn-cancel-icon="fa fa-times" data-title="Mensaje" onclick="setValue(this)">
                                                                        <i class="fa fa-trash-o"></i>
                                                                    </button>
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                                        <%-- Plantilla para cuando no se devuelven registros --%>
                                                        <EmptyDataTemplate>
                                                            Ver el mensaje que se le pone cuando está vacio.
                                                        </EmptyDataTemplate>
                                                    </asp:ListView>
                                                    <asp:HiddenField runat="server" ID="hfIdProveedor" Value="" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="pagination-panel">
                                                Page
                                                        &nbsp;<a href="#" class="btn btn-sm btn-default btn-prev"><i class="fa fa-angle-left"></i></a>&nbsp;<input maxlenght="5" value="1" class="pagination-panel-input form-control input-mini input-inline input-sm text-center" type="text">&nbsp;<a href="#" class="btn btn-sm btn-default btn-prev"><i class="fa fa-angle-right"></i></a>&nbsp;
                                                        of 6 | View
                                                        &nbsp;<select class="form-control input-xsmall input-sm input-inline">
                                                            <option value="20" selected="selected">20</option>
                                                            <option value="50">50</option>
                                                            <option value="100">100</option>
                                                            <option value="150">150</option>
                                                            <option value="-1">All</option>
                                                        </select>&nbsp;
                                                        records | Found total 58 records
                                            </div>
                                        </div>
                                        <div class="col-lg-6 text-right">
                                            <div class="pagination-panel">
                                                <ul class="pagination pagination-sm man">
                                                    <li><a href="#">«</a></li>
                                                    <li><a href="#">1</a></li>
                                                    <li><a href="#">2</a></li>
                                                    <li><a href="#">3</a></li>
                                                    <li><a href="#">4</a></li>
                                                    <li><a href="#">5</a></li>
                                                    <li><a href="#">»</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <uc2:ModalMensajeHTML runat="server" ID="ModalMensajeHTML" />
            </form>
        </div>
    </div>
</asp:Content>
