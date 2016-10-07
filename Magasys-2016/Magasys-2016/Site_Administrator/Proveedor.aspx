<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="Proveedor.aspx.cs" Inherits="Magasys_2016.Site_Administrator.Proveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-pink">
        <div class="panel-heading">Registrar Proveedor</div>
        <div class="panel-body pan">
            <form class="form-horizontal" runat="server">
                <div class="form-body pal">
                    <h3>Proveedor</h3>

                    <div class="row">
                        <!--fila para la caja sin modificacion-->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputNumProveedor" class="col-md-3 control-label">Numero  <span class="require"></span></label>

                                <div class="col-md-9">
                                    <input id="inputNumProveedor" type="text" placeholder="-------" disabled="disabled" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputFechaAlta" class="col-md-3 control-label">Fecha Alta  <span class="require"></span></label>

                                <div class="col-md-9">
                                    <input id="inputFechaAlta" type="text" placeholder="" disabled="disabled" class="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputCUIT" class="col-md-3 control-label">Numero de CUIT <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputCUIT" type="text" placeholder=" " class="form-control"/>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputRazon" class="col-md-3 control-label">Razón Social <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputRazon" type="text" placeholder=" " class="form-control"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputNombreR" class="col-md-3 control-label">Nombre del Responsable <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputNombreR" type="text" placeholder="" class="form-control"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputLastName" class="col-md-3 control-label">Apellido <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputLastName" type="text" placeholder="" class="form-control"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputMovil" class="col-md-3 control-label">Telefono Movil<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputMovil" type="text" placeholder="" class="form-control"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputFijo" class="col-md-3 control-label">Telefono Fijo<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputFijo" type="text" placeholder="" class="form-control"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail" class="col-md-3 control-label">Email <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <div class="input-icon">
                                        <i class="fa fa-envelope"></i>
                                        <input id="inputEmail" type="text" placeholder="" class="form-control"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <h3>Dirección</h3>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputCalle" class="col-md-3 control-label">Calle <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputCalle" type="text" placeholder="" class="form-control"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputNumero" class="col-md-3 control-label">Número<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputNumero" type="text" placeholder="" class="form-control"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputPiso" class="col-md-3 control-label">Piso<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputPiso" type="text" placeholder="" class="form-control"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputDepartamento" class="col-md-3 control-label">Departamento <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputDepartamento" type="text" placeholder="" class="form-control"/>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="selProvincia" class="col-md-3 control-label">Provincia<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <select id="selProvincia" class="form-control">
                                        <option value="">Cordoba</option>
                                        <option value="">Buenos Aires</option>

                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="selLocalidad" class="col-md-3 control-label">Localidad<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <select id="selLocalidad" class="form-control">
                                        <option value="">Capital</option>

                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="selBarrio" class="col-md-3 control-label">Barrio<span class="require">*</span></label>

                            <div class="col-md-9">
                                <select id="selBarrio" class="form-control">
                                    <option value="">S</option>
                                    <option value="">Un</option>
                                    <option value="">E</option>
                                    <option value="">F</option>
                                    <option value="">S</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputCodigoPostal" class="col-md-3 control-label">Código Postal<span class="require">*</span></label>

                            <div class="col-md-9">
                                <input id="inputCodigoPostal" type="text" placeholder="" class="form-control"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-actions text-right pal">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="btnGuardar_Click" />
                    &nbsp;
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar"  CssClass="btn btn-green"/>
                </div>
            </form>
        </div>
    </div>
</asp:Content>
