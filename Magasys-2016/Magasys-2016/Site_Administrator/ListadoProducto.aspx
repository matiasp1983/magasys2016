﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="ListadoProducto.aspx.cs" Inherits="Magasys_2016.Site_Administrator.ListadoProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-pink">
        <div class="panel-heading">Listado Productos</div>
        <div class="panel-body pan">
            <form class="form-horizontal" runat="server">
                <div class="form-body pal">
                    <h3>Buscar por:</h3>
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
                                <label for="inputNombreProducto" class="col-md-3 control-label">Nombre del Producto<span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputNombreProducto" type="text" placeholder=" " class="form-control">
                                </div>
                            </div>
                        </div>
                    </div>


                    <hr class="mtxl mbxl">
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="box-heading">Listado de Productos</h4>

                            <div class="table-container">
                                <div class="row mbm">
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
                                <table class="table table-hover table-striped table-bordered table-advanced tablesorter">
                                    <thead>
                                        <tr>
                                            <th width="3%">
                                                <div style="position: relative;" class="icheckbox_minimal-grey">
                                                    <input style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% rgb(255, 255, 255); border: 0px none; opacity: 0;" class="checkall" type="checkbox">
                                                    <ins style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% rgb(255, 255, 255); border: 0px none; opacity: 0;" class="iCheck-helper"></ins>
                                                </div>
                                            </th>
                                            <th width="9%">Record #</th>
                                            <th>N° Producto</th>
                                            <th width="10%">Nombre</th>
                                            <th width="10%">Descripción</th>
                                            <th width="7%">Tipo Producto</th>
                                            <th width="12%">Nombre Proveedor</th>
                                            <th width="10%">---</th>
                                            <th width="9%">---</th>
                                            <th width="12%">Acción</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div style="position: relative;" class="icheckbox_minimal-grey">
                                                    <input style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% rgb(255, 255, 255); border: 0px none; opacity: 0;" type="checkbox">
                                                    <ins style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% rgb(255, 255, 255); border: 0px none; opacity: 0;" class="iCheck-helper"></ins>
                                                </div>
                                            </td>
                                            <td>1</td>
                                            <td>Henry</td>
                                            <td>United States</td>
                                            <td>Male</td>
                                            <td>32</td>
                                            <td>20-05-2014</td>
                                            <td>$240.50</td>
                                            <td><span class="label label-sm label-success">Approved</span></td>
                                            <td>
                                                <button type="button" class="btn btn-default btn-xs">
                                                    <i class="fa fa-edit"></i>&nbsp;
                                                            Modificar
                                                </button>
                                                <button type="button" class="btn btn-danger btn-xs">
                                                    <i class="fa fa-trash-o"></i>&nbsp;
                                                Borrar
                                                </button>
                                                <button class="btn btn-xs btn-success filter-submit">
                                                    <i class="fa fa-search"></i>&nbsp;
                                                    Visualizar
                                                </button>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div style="position: relative;" class="icheckbox_minimal-grey">
                                                    <input style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% rgb(255, 255, 255); border: 0px none; opacity: 0;" type="checkbox">
                                                    <ins style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% rgb(255, 255, 255); border: 0px none; opacity: 0;" class="iCheck-helper"></ins>
                                                </div>
                                            </td>
                                            <td>2</td>
                                            <td>John</td>
                                            <td>United States</td>
                                            <td>Female</td>
                                            <td>45</td>
                                            <td>20-05-2014</td>
                                            <td>$240.50</td>
                                            <td><span class="label label-sm label-info">Pending</span></td>
                                            <td>
                                                <button type="button" class="btn btn-default btn-xs">
                                                    <i class="fa fa-edit"></i>&nbsp;
                                                            Edit
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div style="position: relative;" class="icheckbox_minimal-grey">
                                                    <input style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% rgb(255, 255, 255); border: 0px none; opacity: 0;" type="checkbox">
                                                    <ins style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% rgb(255, 255, 255); border: 0px none; opacity: 0;" class="iCheck-helper"></ins>
                                                </div>
                                            </td>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>United States</td>
                                            <td>Female</td>
                                            <td>40</td>
                                            <td>20-05-2014</td>
                                            <td>$240.50</td>
                                            <td><span class="label label-sm label-warning">Suspended</span></td>
                                            <td>
                                                <button type="button" class="btn btn-default btn-xs">
                                                    <i class="fa fa-edit"></i>&nbsp;
                                                            Edit
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div style="position: relative;" class="icheckbox_minimal-grey">
                                                    <input style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% rgb(255, 255, 255); border: 0px none; opacity: 0;" type="checkbox">
                                                    <ins style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% rgb(255, 255, 255); border: 0px none; opacity: 0;" class="iCheck-helper"></ins>
                                                </div>
                                            </td>
                                            <td>4</td>
                                            <td>Lahm</td>
                                            <td>United States</td>
                                            <td>Female</td>
                                            <td>15</td>
                                            <td>20-05-2014</td>
                                            <td>$240.50</td>
                                            <td><span class="label label-sm label-danger">Blocked</span></td>
                                            <td>
                                                <button type="button" class="btn btn-default btn-xs">
                                                    <i class="fa fa-edit"></i>&nbsp;
                                                            Edit
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div style="position: relative;" class="icheckbox_minimal-grey">
                                                    <input style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% rgb(255, 255, 255); border: 0px none; opacity: 0;" type="checkbox">
                                                    <ins style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% rgb(255, 255, 255); border: 0px none; opacity: 0;" class="iCheck-helper"></ins>
                                                </div>
                                            </td>
                                            <td>5</td>
                                            <td>Henry</td>
                                            <td>United States</td>
                                            <td>Male</td>
                                            <td>32</td>
                                            <td>20-05-2014</td>
                                            <td>$240.50</td>
                                            <td><span class="label label-sm label-success">Approved</span></td>
                                            <td>
                                                <button type="button" class="btn btn-default btn-xs">
                                                    <i class="fa fa-edit"></i>&nbsp;
                                                            Edit
                                                </button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
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
            </form>
        </div>
    </div>
</asp:Content>
