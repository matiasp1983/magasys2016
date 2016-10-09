<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="Proveedor.aspx.cs" Inherits="Magasys_2016.Site_Administrator.Proveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" />
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function ValidateEmptyDepartamento(oSrc, args) {
            var piso = document.getElementById('<%= txtPiso.ClientID %>');
            var departamento = document.getElementById('<%= txtDepartamento.ClientID %>');
            if (piso.value.length != 0) {
                if (departamento.value.length <= 0) {
                    args.IsValid = false;
                    departamento.focus();
                }
            } else {
                departamento.value = "";
            }
        }

        function ValidateEmptyDepartamentoChange(departamento) {

            var cvDepartamento = document.getElementById('<%= cvDepartamento.ClientID %>');

            /*Consulta si el departamento tiene valor y oculta el mensaje de validación.*/
            if (departamento.value.length > 0) {
                cvDepartamento.style.display = "none"; 
            } else {
                /*Consulta si el piso tiene valor y si el departamento no tiene valor 
                en caso afirmativo muestra el mensaje de validación. */
                var piso = document.getElementById('<%= txtPiso.ClientID %>');
                if (piso.value.length != 0) {
                    if (departamento.value.length <= 0) {
                        cvDepartamento.style.display = "inline";
                    }
                }
            }
        }

        function GetFocus() {
            var rfvProvincia = document.getElementById('<%= rfvProvincia.ClientID %>');
            var provincia = document.getElementById('<%= ddlProvincia.ClientID %>');
            var rfvLocalidad = document.getElementById('<%= rfvLocalidad.ClientID %>');
            var localidad = document.getElementById('<%= ddlLocalidad.ClientID %>');
            var rfvBarrio = document.getElementById('<%= rfvBarrio.ClientID %>');
            var barrio = document.getElementById('<%= ddlBarrio.ClientID %>');
            var rfvCodigoPostal = document.getElementById('<%= rfvCodigoPostal.ClientID %>');
            var codigoPostal = document.getElementById('<%= txtCodigoPostal.ClientID %>');

            /*Se controla si los mensajes de validación de 
            Provincia, Localidad, Barrio y Código Postal se estan mostrando*/
            if (rfvProvincia.style.display == "inline") {
                provincia.focus();
                return;
            }

            if (rfvLocalidad.style.display == "inline") {
                localidad.focus();
                return;
            }

            if (rfvBarrio.style.display == "inline") {
                barrio.focus();
                return;
            }

            if (rfvCodigoPostal.style.display == "inline") {
                codigoPostal.focus();
                return;
            }

        }
    </script>
    <div class="panel panel-pink">
        <div class="panel-heading">Registrar Proveedor</div>
        <div class="panel-body pan">
            <form class="form-horizontal" runat="server">
                <div class="form-body pal">
                    <h3>Proveedor</h3>

                    <div id="divFilaSinMod" class="row" runat="server" visible="False">
                        <!--fila para la caja sin modificacion-->
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblIdProveedor" runat="server" CssClass="col-md-3 control-label" Text="C&oacute;digo">
                                    <asp:Label ID="lblRqrIdProveedor" runat="server" CssClass="require" Text="&nbsp;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtIdProveedor" runat="server" Enabled="False" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblFechaAlta" runat="server" CssClass="col-md-3 control-label" Text="Fecha Alta">
                                    <asp:Label ID="lblRqrFechaAlta" runat="server" CssClass="require" Text="&nbsp;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtFechaAlta" runat="server" Enabled="False" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblCuit" runat="server" CssClass="col-md-3 control-label" Text="N&uacute;mero de CUIT">
                                    <asp:Label ID="lblRqrCuit" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtCuit" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCuit" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtCuit" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" />
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblRazonSocial" runat="server" CssClass="col-md-3 control-label" Text="Raz&oacute;n Social">
                                    <asp:Label ID="lblRqrRazonSocial" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtRazonSocial" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvRazonSocial" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtRazonSocial" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblNombreResponsable" runat="server" CssClass="col-md-3 control-label" Text="Nombre Responsable">
                                    <asp:Label ID="lblRqrNombreResponsable" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtNombreResponsable" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNombreResponsable" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtNombreResponsable" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblApellidoResponsable" runat="server" CssClass="col-md-3 control-label" Text="Apellido Responsable">
                                    <asp:Label ID="lblRqrApellidoResponsable" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtApellidoResponsable" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvApellidoResponsable" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtApellidoResponsable" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblTelefonoMovil" runat="server" CssClass="col-md-3 control-label" Text="Tel&eacute;fono M&oacute;vil">
                                    <asp:Label ID="lblRqrTelefonoMovil" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <div class="input-icon">
                                        <i class="fa fa-mobile-phone"></i>
                                        <asp:TextBox ID="txtTelefonoMovil" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvTelefonoMovil" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtTelefonoMovil" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblTelefonoFijo" runat="server" CssClass="col-md-3 control-label" Text="Tel&eacute;fono Fijo">
                                    <asp:Label ID="lblRqrTelefonoFijo" runat="server" CssClass="require" Text="&nbsp;" /></asp:Label>
                                <div class="col-md-9">
                                    <div class="input-icon">
                                        <i class="fa fa-phone"></i>
                                        <asp:TextBox ID="txtTelefonoFijo" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblEmail" runat="server" CssClass="col-md-3 control-label" Text="Email">
                                    <asp:Label ID="lblRqrEmail" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <div class="input-icon">
                                        <i class="fa fa-envelope"></i>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtEmail" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <h3>Dirección</h3>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblCalle" runat="server" CssClass="col-md-3 control-label" Text="Calle">
                                    <asp:Label ID="lblRqrCalle" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtCalle" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCalle" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtCalle" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblNumero" runat="server" CssClass="col-md-3 control-label" Text="N&uacute;mero">
                                    <asp:Label ID="lblRqrNumero" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtNumero" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNumero" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtNumero" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblPiso" runat="server" CssClass="col-md-3 control-label" Text="Piso">
                                    <asp:Label ID="lblRqrPiso" runat="server" CssClass="require" Text="&nbsp;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtPiso" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblDepartamento" runat="server" CssClass="col-md-3 control-label" Text="Departamento">
                                    <asp:Label ID="lblRqrDepartamento" runat="server" CssClass="require" Text="&nbsp;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtDepartamento" runat="server" CssClass="form-control" onchange="ValidateEmptyDepartamentoChange(this);"></asp:TextBox>
                                    <asp:CustomValidator ID="cvDepartamento" runat="server" ErrorMessage="Campo obligatorio" ClientValidationFunction="ValidateEmptyDepartamento" ForeColor="Red" Display="Dynamic" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblProvincia" runat="server" CssClass="col-md-3 control-label" Text="Provincia">
                                    <asp:Label ID="lblRqrProvincia" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:DropDownList ID="ddlProvincia" runat="server" CssClass="form-control">
                                        <asp:ListItem Selected="True" Value=" "></asp:ListItem>
                                        <asp:ListItem Value="a">prueba</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="ddlProvincia" ForeColor="Red" Display="Dynamic" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblLocalidad" runat="server" CssClass="col-md-3 control-label" Text="Localidad">
                                    <asp:Label ID="lblRqrLocalidad" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:DropDownList ID="ddlLocalidad" runat="server" CssClass="form-control">
                                        <asp:ListItem Selected="True" Value=" "></asp:ListItem>
                                        <asp:ListItem Value="a">prueba</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="ddlLocalidad" ForeColor="Red" Display="Dynamic" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblBarrio" runat="server" CssClass="col-md-3 control-label" Text="Barrio">
                                    <asp:Label ID="lblRqrBarrio" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:DropDownList ID="ddlBarrio" runat="server" CssClass="form-control">
                                        <asp:ListItem Selected="True" Value=" "></asp:ListItem>
                                        <asp:ListItem Value="a">prueba</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvBarrio" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="ddlBarrio" ForeColor="Red" Display="Dynamic" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblCodigoPostal" runat="server" CssClass="col-md-3 control-label" Text="C&oacute;digo Postal">
                                    <asp:Label ID="lblRqrCodigoPostal" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtCodigoPostal" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCodigoPostal" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtCodigoPostal" ForeColor="Red" Display="Dynamic" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-actions text-right pal">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="btnGuardar_Click" OnClientClick="GetFocus();" />
                    &nbsp;
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-green" />
                </div>
            </form>
        </div>
    </div>
</asp:Content>
