<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="ReclamoProveedor.aspx.cs" Inherits="Magasys_2016.Site_Administrator.ReclamoProveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-pink">
        <div class="panel-heading">Registrar Reclamo Proveedor</div>
        <div class="panel-body pan">
            <form class="form-horizontal" runat="server">
                <div class="form-body pal">

                  <div class="row">
                        <!--fila para la caja sin modificacion-->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputNumReclamo" class="col-md-3 control-label">Numero de Reclamo  <span class="require"></span></label>

                                <div class="col-md-9">
                                    <input id="inputNumReclamo" type="text" placeholder="-------" disabled="disabled" class="form-control" />
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
                        <h3>Seleccionar Proveedor y Tipo Producto</h3>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="selProveedor" class="col-md-3 control-label"> Proveedor <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <select id="selProveedor" class="form-control">
                                        <option value="">la voz</option>
                                        <option value="">clarin</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="selTipoProducto" class="col-md-3 control-label">Tipo Producto <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <select id="selTipoProducto" class="form-control">
                                        <option value="">Revista</option>
                                        <option value="">Coleccion</option>
                                        <option value="">Pelicula</option>
                                        <option value="">Libro</option>
                                        <option value="">Diario</option>
                                        <option value="">Suplemento</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="mtxl mbxl">
                    <h3>Ingrese los siguientes Datos</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="selEstado" class="col-md-3 control-label"> Estado <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <select id="selEstado" class="form-control">
                                        <option value="">Nuevo</option>
                                        <option value="">Finalizado</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group mbn">
                                <label for="inputDescripcion" class="col-md-3 control-label">Descripcion del Reclamo:<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <textarea id="inputDescripcion" rows="3" class="form-control"></textarea>
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
