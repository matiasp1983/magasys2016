<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="VisualizarProveedor.aspx.cs" Inherits="Magasys_2016.Site_Administrator.VisualizarProveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="tab-two-columns-readonly" class="tab-pane fade active in">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-pink">
                    <div class="panel-heading">Proveedor</div>
                    <div class="panel-body pan">
                        <form class="form-horizontal" runat="server">
                            <div class="form-body pal">
                                <h3>Proveedor</h3>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblIdProveedor" runat="server" CssClass="col-md-3 control-label" Text="C&oacute;digo" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPIdProveedor" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblFechaAlta" runat="server" CssClass="col-md-3 control-label" Text="Fecha Alta" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPFechaAlta" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblCuit" runat="server" CssClass="col-md-3 control-label" Text="CUIT" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPCuit" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblRazonSocial" runat="server" CssClass="col-md-3 control-label" Text="Raz&oacute;n Social" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPRazonSocial" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblNombreResponsable" runat="server" CssClass="col-md-3 control-label" Text="Nombre Responsable" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPNombreResponsable" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblApellidoResponsable" runat="server" CssClass="col-md-3 control-label" Text="Apellido Responsable" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPApellidoResponsable" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblTelefonoMovil" runat="server" CssClass="col-md-3 control-label" Text="Tel&eacute;fono M&oacute;vil" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPTelefonoMovil" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblTelefonoFijo" runat="server" CssClass="col-md-3 control-label" Text="Tel&eacute;fono Fijo" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPTelefonoFijo" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblEmail" runat="server" CssClass="col-md-3 control-label" Text="Email" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPEmail" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <h3>Direcci&oacute;n</h3>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblCalle" runat="server" CssClass="col-md-3 control-label" Text="Calle" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPCalle" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblNumero" runat="server" CssClass="col-md-3 control-label" Text="N&uacute;mero" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPNumero" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblPiso" runat="server" CssClass="col-md-3 control-label" Text="Piso" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPPiso" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblDepartamento" runat="server" CssClass="col-md-3 control-label" Text="Departamento" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPDepartamento" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblProvincia" runat="server" CssClass="col-md-3 control-label" Text="Provincia" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPProvincia" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblLocalidad" runat="server" CssClass="col-md-3 control-label" Text="Localidad" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPLocalidad" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblBarrio" runat="server" CssClass="col-md-3 control-label" Text="Barrio" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPBarrio" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="lblCodigoPostal" runat="server" CssClass="col-md-3 control-label" Text="C&oacute;digo Postal" />
                                            <div class="col-md-9">
                                                <p class="form-control-static">
                                                    <asp:Label ID="lblPCodigoPostal" runat="server" Font-Bold="True" />
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions text-right pal">
                                <asp:Button ID="btnModificar" runat="server" CssClass="btn btn-primary" Text="Modificar" OnClick="btnModificar_Click" />
                                &nbsp;
                                <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-green" Text="Cancelar" OnClick="btnCancelar_Click" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
