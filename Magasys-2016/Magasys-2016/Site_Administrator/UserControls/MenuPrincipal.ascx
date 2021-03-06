﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuPrincipal.ascx.cs" Inherits="Magasys_2016.Site_Administrator.UserControls.MenuPrincipal" %>
<nav class="navbar-default navbar-static-side" id="sidebar" role="navigation" style="min-height: 100%;" data-step="2" data-position="right" data-intro="Template has <b>many navigation styles</b>">
    <div class="sidebar-collapse menu-scroll">
        <ul class="nav" id="side-menu">
            <div class="clearfix"></div>
            <li class="active"><a href="/Site_Administrator/index.aspx"><i class="fa fa-tachometer fa-fw">
                <div class="icon-bg bg-orange"></div>
            </i><span class="menu-title">Administracion</span></a></li>

            <li><a href="#"><i class="fa fa-desktop fa-fw">
                <div class="icon-bg bg-pink"></div>
            </i><span class="menu-title">Clientes</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse" style="height: 0px;">
                      <li><a href="/Site_Administrator/Cliente.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Registrar Cliente</span></a></li>
                     <li><a href="/Site_Administrator/ListadoCliente.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Listado Cliente</span></a></li>
                </ul>
            </li>

            <li><a href="#"><i class="fa fa-desktop fa-fw">
                <div class="icon-bg bg-pink"></div>
            </i><span class="menu-title">Ventas</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse" style="height: 0px;">
                      <li><a href="/Site_Administrator/Venta.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Registrar Venta</span></a></li>
                     <li><a href="/Site_Administrator/ListadoVenta.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Listado Venta</span></a></li>
                </ul>
            </li>

               <li><a href="#"><i class="fa fa-desktop fa-fw">
                <div class="icon-bg bg-pink"></div>
            </i><span class="menu-title">Cobros</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse" style="height: 0px;">
                      <li><a href="/Site_Administrator/Cobro.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Registrar Cobro</span></a></li>
                     <li><a href="/Site_Administrator/ListadoCobro.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Listado Cobro</span></a></li>
                </ul>
            </li>
            
               <li><a href="#"><i class="fa fa-desktop fa-fw">
                <div class="icon-bg bg-pink"></div>
            </i><span class="menu-title">Deposito</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse" style="height: 0px;">
                      <li><a href="/Site_Administrator/IngresoProducto.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Ingreso Producto</span></a></li>
                     <li><a href="/Site_Administrator/Devoluciones.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Devoluciones</span></a></li>
                </ul>
            </li>
            
               <li><a href="#"><i class="fa fa-desktop fa-fw">
                <div class="icon-bg bg-pink"></div>
            </i><span class="menu-title">Reservas</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse" style="height: 0px;">
                      <li><a href="/Site_Administrator/Reserva.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Registrar Reserva</span></a></li>
                     <li><a href="/Site_Administrator/ListadoReserva.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Listado Reserva</span></a></li>
                    <li><a href="/Site_Administrator/Reparto.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Registrar Reparto</span></a></li>
                </ul>
            </li>

             <li><a href="#"><i class="fa fa-desktop fa-fw">
                <div class="icon-bg bg-pink"></div>
            </i><span class="menu-title">Productos</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse" style="height: 0px;">
                      <li><a href="/Site_Administrator/Producto.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Registrar Producto</span></a></li>
                     <li><a href="/Site_Administrator/ListadoProducto.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Listado Producto</span></a></li>
                    <li><a href="/Site_Administrator/Genero.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Registrar Genero</span></a></li>
                <li><a href="/Site_Administrator/ListadoGenero.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Listado Genero</span></a></li>
                      <li><a href="/Site_Administrator/ProductoFaltante.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Registrar Pedido Producto Faltante</span></a></li>
                 <li><a href="/Site_Administrator/ListadoProductoFaltante.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Listado de Pedodos de Productos Faltantes</span></a></li>
                </ul>
            </li>

                <li><a href="#"><i class="fa fa-desktop fa-fw">
                <div class="icon-bg bg-pink"></div>
            </i><span class="menu-title">Proveedor</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse" style="height: 0px;">
                      <li><a href="/Site_Administrator/Proveedor.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Registrar Proveedor</span></a></li>
                     <li><a href="/Site_Administrator/ListadoProveedor.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Listado Proveedor</span></a></li>
                    <li><a href="/Site_Administrator/ReclamoProveedor.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Reclamo a Proveedor</span></a></li>
                    <li><a href="/Site_Administrator/ListadoReclamoProveedor.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Listado de Reclamos a Proveedor</span></a></li>
                </ul>
            </li>

            <li><a href="#"><i class="fa fa-desktop fa-fw">
                <div class="icon-bg bg-pink"></div>
            </i><span class="menu-title">Empleados</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse" style="height: 0px;">
                      <li><a href="/Site_Administrator/Empleado.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Registrar Empleado</span></a></li>
                     <li><a href="/Site_Administrator/ListadoEmpleado.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Listado Empleados</span></a></li>
                </ul>
            </li>

             <li><a href="#"><i class="fa fa-desktop fa-fw">
                <div class="icon-bg bg-pink"></div>
            </i><span class="menu-title">Portal</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse" style="height: 0px;">
                      <li><a href="/Site_Administrator/Publicacion.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Registrar Publicación</span></a></li>
                     <li><a href="/Site_Administrator/ListadoPublicacion.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Listado Publicaciones</span></a></li>
                </ul>
            </li>


            <li><a href="#"><i class="fa fa-desktop fa-fw">
                <div class="icon-bg bg-pink"></div>
            </i><span class="menu-title">Informes y Reportes</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse" style="height: 0px;">
                      <li><a href="/Site_Administrator/InformeCliente.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Informe de Clientes</span></a></li>
                     <li><a href="/Site_Administrator/InformeDeudasCliente.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Informe de Deudas de Clientes </span></a></li>
                    <li><a href="/Site_Administrator/InformePorcentual.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Informe Porcentual de Productos y Devoluciones</span></a></li>
                <li><a href="/Site_Administrator/ReporteReservas.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Reporte de Reservas</span></a></li>
                </ul>
            </li>

             <li><a href="#"><i class="fa fa-desktop fa-fw">
                <div class="icon-bg bg-pink"></div>
            </i><span class="menu-title">Usuario</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse" style="height: 0px;">
                      <li><a href="/Site_Administrator/Usuario.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Registrar Usuario</span></a></li>
                     <li><a href="/Site_Administrator/ListadoUsuario.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Listado Usuario</span></a></li>
                <li><a href="/Site_Administrator/Permiso.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Registrar Permiso</span></a></li>
                     <li><a href="/Site_Administrator/ListadoPermiso.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Listado Permiso</span></a></li>
                    <li><a href="/Site_Administrator/Rol.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Registrar Rol Usuario</span></a></li>
                     <li><a href="/Site_Administrator/ListadoRol.aspx"><i class="fa fa-th-large"></i><span class="submenu-title">Listado Rol Usuario</span></a></li>
                </ul>
            </li>
            

        </ul>
    </div>
</nav>
