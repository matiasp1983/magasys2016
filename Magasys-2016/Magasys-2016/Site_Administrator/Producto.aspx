<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="Magasys_2016.Site_Administrator.Producto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-pink">
        <div class="panel-heading">Registrar Producto</div>
        <div class="panel-body pan">
            <form class="form-horizontal" runat="server">
                <div class="form-body pal">


                    <div class="row">
                        <h3>Seleccionar Tipo Producto</h3>
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
                        <!--fila para la caja sin modificacion-->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputCodigoProducto" class="col-md-3 control-label">Código del Producto <span class="require"></span></label>

                                <div class="col-md-9">
                                    <input id="inputCodigoProducto" type="text" placeholder="" disabled="disabled" class="form-control" />
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputNombre" class="col-md-3 control-label">Nombre del Producto: <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputNombre" type="text" placeholder=" " class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group mbn">
                                <label for="inputDescripcion" class="col-md-3 control-label">Descripción:<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <textarea id="inputDescripcion" rows="3" class="form-control"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="selDiario" class="col-md-3 control-label">Diario<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <select id="selDiario" class="form-control">
                                        <option value="">La Voz</option>
                                        <option value="">Editor</option>
                                        <option value="">Dia</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="selProveedor" class="col-md-3 control-label">Proveedor<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <select id="selProveedor" class="form-control">
                                        <option value="">La Voz</option>
                                        <option value="">Editor</option>
                                        <option value="">Dia</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="selGenero" class="col-md-3 control-label">Género<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <select id="selGenero" class="form-control">
                                        <option value="">--</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="selSemana" class="col-md-3 control-label">Dia de la Semana<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <select id="selSemana" class="form-control">
                                        <option value="">--</option>
                                        <option value="">--</option>
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
                                <label for="selPeriodicidad" class="col-md-3 control-label">Periodicidad<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <select id="selPeriodicidad" class="form-control">
                                        <option value="">Mensual</option>
                                        <option value="">Semanal</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputPrecio" class="col-md-3 control-label">Precio <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputPrecio" type="text" placeholder=" " class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputCantidadEntregas" class="col-md-3 control-label">Cantidad de Entregas <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputCantidadEntregas" type="text" placeholder=" " class="form-control">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="selA" class="col-md-3 control-label">Año<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <select id="selA" class="form-control">
                                        <option value="">.---</option>
                                        <option value="">---</option>
                                        <option value="">---</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                        <option value="">--</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputAutor" class="col-md-3 control-label">Autor <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputAutor" type="text" placeholder=" " class="form-control">
                                </div>
                            </div>
                        </div>

                    </div>
                    <h3>Precio</h3>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputLunes" class="col-md-3 control-label">Lunes <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputLunes" type="text" placeholder="" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputMartes" class="col-md-3 control-label">Martes <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputMartes" type="text" placeholder="" class="form-control">
                                </div>
                            </div>
                        </div>              
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputMiercoles" class="col-md-3 control-label">Miercoles <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputMiercoles" type="text" placeholder="" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputJueves" class="col-md-3 control-label">Jueves <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputJueves" type="text" placeholder="" class="form-control">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputViernes" class="col-md-3 control-label">Viernes <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputViernes" type="text" placeholder="" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputSabado" class="col-md-3 control-label">Sabado <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputSabado" type="text" placeholder="" class="form-control">
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="row">
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputDomingo" class="col-md-3 control-label">Domingo <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputDomingo" type="text" placeholder="" class="form-control">
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
