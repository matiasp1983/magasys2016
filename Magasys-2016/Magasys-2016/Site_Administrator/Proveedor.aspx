<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="Proveedor.aspx.cs" Inherits="Magasys_2016.Site_Administrator.Proveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="panel panel-pink">
        <div class="panel-heading">Registrar Proveedor</div>
        <div class="panel-body pan">
            <form class="form-horizontal" runat="server">
                <div class="form-body pal">
                    <h3> Proveedor</h3>
                   
                    <div class="row">
                        <!--fila para la caja sin modificacion-->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputNumProveedor" class="col-md-3 control-label">Numero <span class="require"></span></label>

                                <div class="col-md-9">
                                    <input id="inputNumProveedor" type="text" placeholder="-------" disabled="disabled" class="form-control"/></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="selTipo" class="col-md-3 control-label">Tipo DNI <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <select id="selTIPO" class="form-control">
                                        <option value="">DNI</option>
                                        <option value="">CE</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputDNI" class="col-md-3 control-label">Numero DNI <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <div class="input-icon"><i class="fa fa-envelope"></i>
                                        <input type="text" placeholder="Numero DNI" class="form-control"/></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputFirstName" class="col-md-3 control-label">Nombre <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputFirstName" type="text" placeholder="Nombre " class="form-control"></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputLastName" class="col-md-3 control-label">Apellido <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputLastName" type="text" placeholder="Apellido" class="form-control"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!--fila para la caja sin modificacion-->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputAlias" class="col-md-3 control-label">Alias<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputAlias" type="text" placeholder="Alias" class="form-control"/></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail" class="col-md-3 control-label">Email <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <div class="input-icon"><i class="fa fa-envelope"></i>
                                        <input type="text" placeholder="Email" class="form-control"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="selSexo" class="col-md-3 control-label">Sexo <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <select id="selSexo" class="form-control">
                                        <option value="">Masculino</option>
                                        <option value="">Femenino</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputBirthday" class="col-md-3 control-label">Fecha de Nacimiento<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputBirthday" type="text" placeholder="dd/mm/yyyy" class="form-control"></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputPhone" class="col-md-3 control-label">Telefono<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputPhone" type="text" placeholder="" class="form-control"></div>
                            </div>
                        </div>
                    </div>
                    <h3>Dirección</h3>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputCalle" class="col-md-3 control-label">Calle <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputCalle" type="text" placeholder="" class="form-control"></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputNumero" class="col-md-3 control-label">Número<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputNumero" type="text" placeholder="" class="form-control"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputPiso" class="col-md-3 control-label">Piso<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputPiso" type="text" placeholder="" class="form-control"></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputDepartamento" class="col-md-3 control-label">Departamento <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputDepartamento" type="text" placeholder="" class="form-control"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputCodigoPostal" class="col-md-3 control-label">Código Postal<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputCodigoPostal" type="text" placeholder="" class="form-control"></div>
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
                    </div>
                <div class="form-actions text-right pal">
                    <button type="submit" class="btn btn-primary">Guardar</button>
                    &nbsp;
                                                        <button type="button" class="btn btn-green">Cancelar</button>
                </div>
            </form>
        </div>
    </div>
</asp:Content>
