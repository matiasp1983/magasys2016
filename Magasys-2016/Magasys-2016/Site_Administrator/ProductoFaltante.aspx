<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="ProductoFaltante.aspx.cs" Inherits="Magasys_2016.Site_Administrator.ProductoFaltante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-pink">
        <div class="panel-heading"> Faltantes </div>
        <div class="panel-body pan">
            <form class="form-horizontal" runat="server">
                <div class="form-body pal">
                    <div class="row">
                        <!--fila para la caja sin modificacion-->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputCodigoVenta" class="col-md-3 control-label">Número de Pedido  <span class="require"></span></label>

                                <div class="col-md-9">
                                    <input id="inputCodigoVenta" type="text" placeholder="" disabled="disabled" class="form-control" />
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="row">
                        <h3>Seleccionar Tipo Producto o Proveedor</h3>
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
                    </div>
                   
                    <hr class="mtxl mbxl">
                    
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="box-heading">Seleccionar Productos Faltantes y Agregar Cantidad</h4>
                            <div id="tableactionTabContent" class="tab-content">
                            <div id="table-table-tab" class="tab-pane fade">
                                
                            </div>
                            <div id="table-row-tab" class="tab-pane fade active in">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <table class="table table-hover table-striped table-bordered table-advanced tablesorter">
                                            <thead>
                                            <tr>
                                                <th width="3%"><div class="icheckbox_minimal-grey" style="position: relative;"><input type="checkbox" class="checkall" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></th>
                                                <th width="7%">Numero #</th>
                                                <th>Nombre</th>
                                                <th width="10%">Descripcion</th>
                                                <th width="10%">Tipo de Producto</th>
                                                <th width="7%">Cantidad</th>
                                                <th width="10%">Proveedor</th>
                                                <th width="15%">--</th>
                                                <th width="7%">---</th>
                                                <th width="12%">Accion</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td><div class="icheckbox_minimal-grey" style="position: relative;"><input type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></td>
                                                <td>1</td>
                                                <td>Henry</td>
                                                <td>United States</td>
                                                <td><select class="form-control">
                                                    <option>Male</option>
                                                    <option>Female</option>
                                                    <option>Other</option>
                                                </select></td>
                                                <td><span class="ui-spinner ui-widget ui-widget-content ui-corner-all"><input type="text" value="32" class="spinner input-mini ui-spinner-input" aria-valuenow="32" autocomplete="off" role="spinbutton"><a class="ui-spinner-button ui-spinner-up ui-corner-tr" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-n">▲</span></a><a class="ui-spinner-button ui-spinner-down ui-corner-br" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-s">▼</span></a></span></td>
                                                <td>20-05-2014</td>
                                                <td>
                                                    <div data-hover="tooltip" title="" class="progress progress-xs mbs" data-original-title="75%">
                                                        <div role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;" class="progress-bar progress-bar-green"><span class="sr-only">75% Complete</span></div>
                                                    </div>
                                                </td>
                                                <td><span class="label label-sm label-success">Approved</span></td>
                                                <td>
                                                    <button type="button" class="btn btn-default btn-xs"><i class="fa fa-edit"></i>&nbsp;
                                                        Edit
                                                    </button>
                                                    &nbsp;
                                                    <button type="button" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>&nbsp;
                                                        Delete
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><div class="icheckbox_minimal-grey" style="position: relative;"><input type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></td>
                                                <td>2</td>
                                                <td>John</td>
                                                <td>United States</td>
                                                <td><select class="form-control">
                                                    <option>Male</option>
                                                    <option>Female</option>
                                                    <option>Other</option>
                                                </select></td>
                                                <td><span class="ui-spinner ui-widget ui-widget-content ui-corner-all"><input type="text" value="45" class="spinner input-mini ui-spinner-input" aria-valuenow="45" autocomplete="off" role="spinbutton"><a class="ui-spinner-button ui-spinner-up ui-corner-tr" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-n">▲</span></a><a class="ui-spinner-button ui-spinner-down ui-corner-br" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-s">▼</span></a></span></td>
                                                <td>20-05-2014</td>
                                                <td>
                                                    <div data-hover="tooltip" title="" class="progress progress-xs mbs" data-original-title="40%">
                                                        <div role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;" class="progress-bar progress-bar-red six-sec-ease-in-out"><span class="sr-only">40% Complete</span></div>
                                                    </div>
                                                </td>
                                                <td><span class="label label-sm label-info">Pending</span></td>
                                                <td>
                                                    <button type="button" class="btn btn-default btn-xs"><i class="fa fa-edit"></i>&nbsp;
                                                        Edit
                                                    </button>
                                                    &nbsp;
                                                    <button type="button" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>&nbsp;
                                                        Delete
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><div class="icheckbox_minimal-grey" style="position: relative;"><input type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></td>
                                                <td>3</td>
                                                <td>Larry</td>
                                                <td>United States</td>
                                                <td><select class="form-control">
                                                    <option>Male</option>
                                                    <option selected="selected">Female</option>
                                                    <option>Other</option>
                                                </select></td>
                                                <td><span class="ui-spinner ui-widget ui-widget-content ui-corner-all"><input type="text" value="40" class="spinner input-mini ui-spinner-input" aria-valuenow="40" autocomplete="off" role="spinbutton"><a class="ui-spinner-button ui-spinner-up ui-corner-tr" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-n">▲</span></a><a class="ui-spinner-button ui-spinner-down ui-corner-br" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-s">▼</span></a></span></td>
                                                <td>20-05-2014</td>
                                                <td>
                                                    <div data-hover="tooltip" title="" class="progress progress-xs mbs" data-original-title="80%">
                                                        <div role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;" class="progress-bar progress-bar-yellow"><span class="sr-only">80% Complete</span></div>
                                                    </div>
                                                </td>
                                                <td><span class="label label-sm label-warning">Suspended</span></td>
                                                <td>
                                                    <button type="button" class="btn btn-default btn-xs"><i class="fa fa-edit"></i>&nbsp;
                                                        Edit
                                                    </button>
                                                    &nbsp;
                                                    <button type="button" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>&nbsp;
                                                        Delete
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><div class="icheckbox_minimal-grey" style="position: relative;"><input type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></td>
                                                <td>4</td>
                                                <td>Lahm</td>
                                                <td>United States</td>
                                                <td><select class="form-control">
                                                    <option>Male</option>
                                                    <option>Female</option>
                                                    <option>Other</option>
                                                </select></td>
                                                <td><span class="ui-spinner ui-widget ui-widget-content ui-corner-all"><input type="text" value="15" class="spinner input-mini ui-spinner-input" aria-valuenow="15" autocomplete="off" role="spinbutton"><a class="ui-spinner-button ui-spinner-up ui-corner-tr" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-n">▲</span></a><a class="ui-spinner-button ui-spinner-down ui-corner-br" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-s">▼</span></a></span></td>
                                                <td>20-05-2014</td>
                                                <td>
                                                    <div data-hover="tooltip" title="" class="progress progress-xs mbs" data-original-title="60%">
                                                        <div role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;" class="progress-bar progress-bar-violet"><span class="sr-only">60% Complete</span></div>
                                                    </div>
                                                </td>
                                                <td><span class="label label-sm label-danger">Blocked</span></td>
                                                <td>
                                                    <button type="button" class="btn btn-default btn-xs"><i class="fa fa-edit"></i>&nbsp;
                                                        Edit
                                                    </button>
                                                    &nbsp;
                                                    <button type="button" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>&nbsp;
                                                        Delete
                                                    </button>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div id="table-panel-tab" class="tab-pane fade">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="portlet portlet-white">
                                            <div class="portlet-header pam mbn">
                                                <div class="caption">Customer Listing</div>
                                                <div class="actions"><a href="#" class="btn btn-info btn-sm"><i class="fa fa-plus"></i>&nbsp;
                                                    New Customer</a>&nbsp;
                                                    <div class="btn-group"><a href="#" data-toggle="dropdown" class="btn btn-warning btn-sm dropdown-toggle"><i class="fa fa-wrench"></i>&nbsp;
                                                        Tools</a>
                                                        <ul class="dropdown-menu pull-right">
                                                            <li><a href="#">Export to Excel</a></li>
                                                            <li><a href="#">Export to CSV</a></li>
                                                            <li><a href="#">Export to XML</a></li>
                                                            <li class="divider"></li>
                                                            <li><a href="#">Print Invoices</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="portlet-body pan">
                                                <table class="table table-hover table-striped table-bordered table-advanced tablesorter mbn">
                                                    <thead>
                                                    <tr>
                                                        <th width="3%"><div class="icheckbox_minimal-grey" style="position: relative;"><input type="checkbox" class="checkall" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></th>
                                                        <th width="9%">Record #</th>
                                                        <th>Username</th>
                                                        <th width="10%">Country</th>
                                                        <th width="10%">Gender</th>
                                                        <th width="7%">Order</th>
                                                        <th width="12%">Date</th>
                                                        <th width="10%">Price</th>
                                                        <th width="9%">Status</th>
                                                        <th width="12%">Actions</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td><div class="icheckbox_minimal-grey" style="position: relative;"><input type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></td>
                                                        <td>1</td>
                                                        <td>Henry</td>
                                                        <td>United States</td>
                                                        <td>Male</td>
                                                        <td>32</td>
                                                        <td>20-05-2014</td>
                                                        <td>$240.50</td>
                                                        <td><span class="label label-sm label-success">Approved</span></td>
                                                        <td>
                                                            <button type="button" class="btn btn-default btn-xs"><i class="fa fa-edit"></i>&nbsp;
                                                                Edit
                                                            </button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><div class="icheckbox_minimal-grey" style="position: relative;"><input type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></td>
                                                        <td>2</td>
                                                        <td>John</td>
                                                        <td>United States</td>
                                                        <td>Female</td>
                                                        <td>45</td>
                                                        <td>20-05-2014</td>
                                                        <td>$240.50</td>
                                                        <td><span class="label label-sm label-info">Pending</span></td>
                                                        <td>
                                                            <button type="button" class="btn btn-default btn-xs"><i class="fa fa-edit"></i>&nbsp;
                                                                Edit
                                                            </button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><div class="icheckbox_minimal-grey" style="position: relative;"><input type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></td>
                                                        <td>3</td>
                                                        <td>Larry</td>
                                                        <td>United States</td>
                                                        <td>Female</td>
                                                        <td>40</td>
                                                        <td>20-05-2014</td>
                                                        <td>$240.50</td>
                                                        <td><span class="label label-sm label-warning">Suspended</span></td>
                                                        <td>
                                                            <button type="button" class="btn btn-default btn-xs"><i class="fa fa-edit"></i>&nbsp;
                                                                Edit
                                                            </button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><div class="icheckbox_minimal-grey" style="position: relative;"><input type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></td>
                                                        <td>4</td>
                                                        <td>Lahm</td>
                                                        <td>United States</td>
                                                        <td>Female</td>
                                                        <td>15</td>
                                                        <td>20-05-2014</td>
                                                        <td>$240.50</td>
                                                        <td><span class="label label-sm label-danger">Blocked</span></td>
                                                        <td>
                                                            <button type="button" class="btn btn-default btn-xs"><i class="fa fa-edit"></i>&nbsp;
                                                                Edit
                                                            </button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><div class="icheckbox_minimal-grey" style="position: relative;"><input type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div></td>
                                                        <td>5</td>
                                                        <td>Henry</td>
                                                        <td>United States</td>
                                                        <td>Male</td>
                                                        <td>32</td>
                                                        <td>20-05-2014</td>
                                                        <td>$240.50</td>
                                                        <td><span class="label label-sm label-success">Approved</span></td>
                                                        <td>
                                                            <button type="button" class="btn btn-default btn-xs"><i class="fa fa-edit"></i>&nbsp;
                                                                Edit
                                                            </button>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
