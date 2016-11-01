<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="Proveedor.aspx.cs" Inherits="Magasys_2016.Site_Administrator.Proveedor" %>

<%@ Register Src="~/Site_Administrator/UserControls/ModalMensaje.ascx" TagPrefix="uc1" TagName="ModalMensaje" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" />
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            /*Esta función se utiliza para cargar los styles de los combos luego de hacer el POSTBACK.*/
            Sys.WebForms.PageRequestManager.getInstance().add_pageLoaded(PageLoaded);
        });

        function PageLoaded(sender, args) {
            $("#<%=ddlProvincia.ClientID%>").chosen();
            $("#<%=ddlLocalidad.ClientID%>").chosen();
            $("#<%=txtTelefonoMovil.ClientID%>").mask("(999) 999-9999");
            $("#<%=txtTelefonoFijo.ClientID%>").mask("(999) 999-9999");
        }

        function ValidateEmptyDepartamento(oSrc, args) {
            var piso = document.getElementById('<%= txtPiso.ClientID %>');
            var departamento = document.getElementById('<%= txtDepartamento.ClientID %>');
            if (piso.value.trim().length != 0) {
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
            if (departamento.value.trim().length > 0) {
                cvDepartamento.style.display = "none";
            } else {
                /*Consulta si el piso tiene valor y si el departamento no tiene valor 
                en caso afirmativo muestra el mensaje de validación. */
                var piso = document.getElementById('<%= txtPiso.ClientID %>');
                if (piso.value.trim().length != 0) {
                    if (departamento.value.trim().length <= 0) {
                        cvDepartamento.style.display = "inline";
                    }
                }
            }
        }

        function GetFocus() {
            var razonSocial = document.getElementById('<%= txtRazonSocial.ClientID %>');
            var nombreResponsable = document.getElementById('<%= txtNombreResponsable.ClientID %>');
            var apellidoResponsable = document.getElementById('<%= txtApellidoResponsable.ClientID %>');
            var telefonoMovil = document.getElementById('<%= txtTelefonoMovil.ClientID %>');
            var email = document.getElementById('<%= txtEmail.ClientID %>');
            var calle = document.getElementById('<%= txtCalle.ClientID %>');
            var numero = document.getElementById('<%= txtNumero.ClientID %>');
            var piso = document.getElementById('<%= txtPiso.ClientID %>');
            var departamento = document.getElementById('<%= txtDepartamento.ClientID %>');
            var provincia = $("#ContentPlaceHolder1_ddlProvincia_chzn");
            var localidad = $("#ContentPlaceHolder1_ddlLocalidad_chzn");
            var rfvBarrio = document.getElementById('<%= rfvBarrio.ClientID %>');
            var revBarrio = document.getElementById('<%= revBarrio.ClientID %>');
            var barrio = document.getElementById('<%= txtBarrio.ClientID %>');
            var rfvCodigoPostal = document.getElementById('<%= rfvCodigoPostal.ClientID %>');
            var codigoPostal = document.getElementById('<%= txtCodigoPostal.ClientID %>');

            /*Verificamos que los validadores anteriores a los combos no esten activados.*/
            if (razonSocial.value.trim().length == 0 || nombreResponsable.value.trim().length == 0
            || apellidoResponsable.value.trim().length == 0 || telefonoMovil.value.trim().length == 0
            || email.value.trim().length == 0 || calle.value.trim().length == 0 || numero.value.trim().length == 0) {
                return;
            }

            /*Verificamos que los validadores anteriores a los combos no esten activados.*/
            if (piso.value.trim().length > 0) {
                if (departamento.value.trim().length == 0) {
                    return;
                }
            }

            /*Si se llega a este punto se cargaron todos los campos obligatorios.*/

            var id = 1;

            /*Recorremos los links que tiene el texto de "Seleccione una opción" de los combos.*/
            /*Le agregamos un "id" a los tags <span> que tienen los links.*/
            $(".chzn-container-single .chzn-single").each(function () {
                if (id == 1) {
                    /*Agregamos un id al tag de <span> del Provincia.*/
                    this.children[0].setAttribute("id", "spn" + id);
                    id += 1;
                } else {
                    /*Agregamos un id al tag de <span> del Localidad.*/
                    this.children[0].setAttribute("id", "spn" + id);
                }
            });

            /*Obtenemos los elementos con id "spn1" y "spn2"*/
            var spn1 = document.getElementById("spn1");
            var spn2 = document.getElementById("spn2");

            /*Combo de Provincia*/
            if (spn1.innerText == "Seleccione una opción") {
                /*Eliminamos dinamicamente una clase de style y la reemplazamos por otra para que de la sensación de Foco.*/
                provincia.removeClass("chzn-container-single chzn-default").addClass("chzn-container chzn-container-single chzn-container-active");
                return;
            }

            /*Combo de Localidad*/
            if (spn2.innerText == "Seleccione una opción") {
                /*Eliminamos dinamicamente una clase de style y la reemplazamos por otra para que de la sensación de Foco.*/
                localidad.removeClass("chzn-container-single chzn-default").addClass("chzn-container chzn-container-single chzn-container-active");
                return;
            }
            

            /*Se controla si los mensajes de validación del Barrio se estan mostrando*/
            var inline = "inline";
            
            if (rfvBarrio.style.display == inline || revBarrio.style.display == inline) {
                barrio.focus();
                return;
            }

            /*Se controla si el mensaje de validación de Código Postal se esta mostrando*/
            if (rfvCodigoPostal.style.display == inline) {
                codigoPostal.focus();
                return;
            }
        }
    </script>
    <div class="panel panel-pink">
        <div id="divTitleHeading" class="panel-heading" runat="server">Registrar Proveedor</div>
        <div class="panel-body pan">
            <form class="form-horizontal" runat="server">
                <asp:ScriptManager ID="ScriptManager" runat="server" />
                <div class="form-body pal">
                    <h3>Proveedor</h3>

                    <div id="divRowHidden" class="row" runat="server" visible="False">
                        <!--fila para la caja sin modificacion-->
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblIdProveedor" runat="server" CssClass="col-md-3 control-label" Text="C&oacute;digo">
                                    <asp:Label ID="lblRqrIdProveedor" runat="server" CssClass="require" Text="&nbsp;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtIdProveedor" runat="server" ReadOnly="True" CssClass="form-control" style="cursor: default" TabIndex="1"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblFechaAlta" runat="server" CssClass="col-md-3 control-label" Text="Fecha Alta">
                                    <asp:Label ID="lblRqrFechaAlta" runat="server" CssClass="require" Text="&nbsp;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtFechaAlta" runat="server" Enabled="False" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblCuit" runat="server" CssClass="col-md-3 control-label" Text="CUIT">
                                    <asp:Label ID="lblRqrCuit" runat="server" CssClass="require" Text="&nbsp;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtCuit" runat="server" ReadOnly="True" CssClass="form-control" style="cursor: default" TabIndex="2"/>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblRazonSocial" runat="server" CssClass="col-md-3 control-label" Text="Raz&oacute;n Social">
                                    <asp:Label ID="lblRqrRazonSocial" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtRazonSocial" runat="server" CssClass="form-control" MaxLength="50" TabIndex="3" />
                                    <asp:RequiredFieldValidator ID="rfvRazonSocial" runat="server" ErrorMessage="Campo obligatorio." ControlToValidate="txtRazonSocial" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error" />
                                    <asp:RegularExpressionValidator ID="revRazonSocial" runat="server" ErrorMessage="Tipo de dato incorrecto." ValidationExpression="[a-zA-ZñÑáéíóúÁÉÍÓÚ.\s]{2,50}" ControlToValidate="txtRazonSocial" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error" />
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
                                    <asp:TextBox ID="txtNombreResponsable" runat="server" CssClass="form-control" MaxLength="50" TabIndex="4" />
                                    <asp:RequiredFieldValidator ID="rfvNombreResponsable" runat="server" ErrorMessage="Campo obligatorio." ControlToValidate="txtNombreResponsable" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error" />
                                    <asp:RegularExpressionValidator ID="revNombreResponsable" runat="server" ErrorMessage="Tipo de dato incorrecto." ValidationExpression="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]{2,50}" ControlToValidate="txtNombreResponsable" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblApellidoResponsable" runat="server" CssClass="col-md-3 control-label" Text="Apellido Responsable">
                                    <asp:Label ID="lblRqrApellidoResponsable" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtApellidoResponsable" runat="server" CssClass="form-control" MaxLength="50" TabIndex="5" />
                                    <asp:RequiredFieldValidator ID="rfvApellidoResponsable" runat="server" ErrorMessage="Campo obligatorio." ControlToValidate="txtApellidoResponsable" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error" />
                                    <asp:RegularExpressionValidator ID="revApellidoResponsable" runat="server" ErrorMessage="Tipo de dato incorrecto." ValidationExpression="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]{2,50}" ControlToValidate="txtApellidoResponsable" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error" />
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
                                        <asp:TextBox ID="txtTelefonoMovil" runat="server" CssClass="form-control" MaxLength="13" TabIndex="6" />
                                        <asp:RequiredFieldValidator ID="rfvTelefonoMovil" runat="server" ErrorMessage="Campo obligatorio." ControlToValidate="txtTelefonoMovil" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error" />                                        
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
                                        <asp:TextBox ID="txtTelefonoFijo" runat="server" CssClass="form-control" MaxLength="11" TabIndex="7" />                                        
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
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" MaxLength="50" TabIndex="8" />
                                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Campo obligatorio." ControlToValidate="txtEmail" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error" />
                                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Formato incorrecto." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error" />
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
                                    <asp:TextBox ID="txtCalle" runat="server" CssClass="form-control" MaxLength="50" TabIndex="9" />
                                    <asp:RequiredFieldValidator ID="rfvCalle" runat="server" ErrorMessage="Campo obligatorio." ControlToValidate="txtCalle" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error" />
                                    <asp:RegularExpressionValidator ID="revCalle" runat="server" ErrorMessage="Tipo de dato incorrecto." ValidationExpression="^[[a-zA-ZñÑáéíóúÁÉÍÓÚ0-9]{2,50}]*$" ControlToValidate="txtCalle" Display="Dynamic" CssClass="custom-error" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblNumero" runat="server" CssClass="col-md-3 control-label" Text="N&uacute;mero">
                                    <asp:Label ID="lblRqrNumero" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtNumero" runat="server" CssClass="form-control" MaxLength="4" TabIndex="10" />
                                    <asp:RequiredFieldValidator ID="rfvNumero" runat="server" ErrorMessage="Campo obligatorio." ControlToValidate="txtNumero" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error" />
                                    <asp:RegularExpressionValidator ID="revNumero" runat="server" ErrorMessage="Tipo de dato incorrecto." ValidationExpression="^[0-9]*" ControlToValidate="txtNumero" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error" />
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
                                    <asp:TextBox ID="txtPiso" runat="server" CssClass="form-control" MaxLength="3" TabIndex="11" />
                                    <asp:RegularExpressionValidator ID="revPiso" runat="server" ErrorMessage="Tipo de dato incorrecto." ValidationExpression="[a-zA-ZñÑ0-9]{1,3}" ControlToValidate="txtPiso" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblDepartamento" runat="server" CssClass="col-md-3 control-label" Text="Departamento">
                                    <asp:Label ID="lblRqrDepartamento" runat="server" CssClass="require" Text="&nbsp;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtDepartamento" runat="server" CssClass="form-control" onchange="ValidateEmptyDepartamentoChange(this);" MaxLength="3" TabIndex="12" />
                                    <asp:CustomValidator ID="cvDepartamento" runat="server" ErrorMessage="Campo obligatorio." ClientValidationFunction="ValidateEmptyDepartamento" Display="Dynamic" CssClass="custom-error" />
                                    <asp:RegularExpressionValidator ID="revDepartamento" runat="server" ErrorMessage="Tipo de dato incorrecto." ValidationExpression="[a-zA-ZñÑ]{1,3}" ControlToValidate="txtDepartamento" SetFocusOnError="True" Display="Dynamic" CssClass="custom-error" />
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
                                    <asp:UpdatePanel ID="upProvincia" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="ddlProvincia" runat="server" CssClass="customSelect" AutoPostBack="True" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged" data-rel="chosen" Style="width: 100%;" TabIndex="13" />
                                            <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ErrorMessage="Campo obligatorio." ControlToValidate="ddlProvincia" Display="Dynamic" CssClass="custom-error" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblLocalidad" runat="server" CssClass="col-md-3 control-label" Text="Localidad">
                                    <asp:Label ID="lblRqrLocalidad" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:UpdatePanel ID="upLocalidad" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="ddlLocalidad" runat="server" CssClass="customSelect" AutoPostBack="True" data-rel="chosen" Style="width: 100%;" TabIndex="14" />
                                            <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ErrorMessage="Campo obligatorio." ControlToValidate="ddlLocalidad" Display="Dynamic" CssClass="custom-error" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
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
                                    <asp:TextBox ID="txtBarrio" runat="server" CssClass="form-control" MaxLength="50" TabIndex="15" />
                                    <asp:RequiredFieldValidator ID="rfvBarrio" runat="server" ErrorMessage="Campo obligatorio." ControlToValidate="txtBarrio" Display="Dynamic" CssClass="custom-error" />
                                    <asp:RegularExpressionValidator ID="revBarrio" runat="server" ErrorMessage="Tipo de dato incorrecto." ValidationExpression="^[[a-zA-ZñÑáéíóúÁÉÍÓÚ0-9]{2,50}]*$" ControlToValidate="txtBarrio" Display="Dynamic" CssClass="custom-error" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="lblCodigoPostal" runat="server" CssClass="col-md-3 control-label" Text="C&oacute;digo Postal">
                                    <asp:Label ID="lblRqrCodigoPostal" runat="server" CssClass="require" Text="&nbsp;&lowast;" /></asp:Label>
                                <div class="col-md-9">
                                    <asp:TextBox ID="txtCodigoPostal" runat="server" CssClass="form-control" MaxLength="8" TabIndex="16" />
                                    <asp:RequiredFieldValidator ID="rfvCodigoPostal" runat="server" ErrorMessage="Campo obligatorio." ControlToValidate="txtCodigoPostal" Display="Dynamic" CssClass="custom-error" />
                                    <asp:RegularExpressionValidator ID="revCodigoPostal" runat="server" ErrorMessage="Tipo de dato incorrecto." ValidationExpression="^[a-zA-ZñÑ[0-9]{2,8}]*$" ControlToValidate="txtCodigoPostal" Display="Dynamic" CssClass="custom-error" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-actions text-right pal">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="btnGuardar_Click" OnClientClick="GetFocus();" TabIndex="17" />
                    &nbsp;
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-green" OnClick="btnCancelar_Click" CausesValidation="False" TabIndex="18" />
                </div>
                <uc1:ModalMensaje runat="server" ID="ModalMensaje" />
            </form>
        </div>
    </div>
</asp:Content>
