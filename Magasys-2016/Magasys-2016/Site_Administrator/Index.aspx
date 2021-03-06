﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Magasys_2016.Site_Administrator.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sum_box" class="row mbl">
        <div class="col-sm-6 col-md-3">
            <div class="panel profit db mbm">
                <div class="panel-body">
                    <p class="icon">
                        <i class="icon fa fa-shopping-cart"></i>
                    </p>
                    <h4 class="value">
                        <span data-counter="" data-start="10" data-end="50" data-step="1" data-duration="0"></span><span>$</span></h4>
                    <p class="description">
                        Profit description
                    </p>
                    <div class="progress progress-sm mbn">
                        <div role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
                            style="width: 80%;" class="progress-bar progress-bar-success">
                            <span class="sr-only">80% Complete (success)</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-3">
            <div class="panel income db mbm">
                <div class="panel-body">
                    <p class="icon">
                        <i class="icon fa fa-money"></i>
                    </p>
                    <h4 class="value">
                        <span>215</span><span>$</span></h4>
                    <p class="description">
                        Income detail
                    </p>
                    <div class="progress progress-sm mbn">
                        <div role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                            style="width: 60%;" class="progress-bar progress-bar-info">
                            <span class="sr-only">60% Complete (success)</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-3">
            <div class="panel task db mbm">
                <div class="panel-body">
                    <p class="icon">
                        <i class="icon fa fa-signal"></i>
                    </p>
                    <h4 class="value">
                        <span>215</span></h4>
                    <p class="description">
                        Task completed
                    </p>
                    <div class="progress progress-sm mbn">
                        <div role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
                            style="width: 50%;" class="progress-bar progress-bar-danger">
                            <span class="sr-only">50% Complete (success)</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-3">
            <div class="panel visit db mbm">
                <div class="panel-body">
                    <p class="icon">
                        <i class="icon fa fa-group"></i>
                    </p>
                    <h4 class="value">
                        <span>128</span></h4>
                    <p class="description">
                        Visitor description
                    </p>
                    <div class="progress progress-sm mbn">
                        <div role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
                            style="width: 70%;" class="progress-bar progress-bar-warning">
                            <span class="sr-only">70% Complete (success)</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mbl">
        <div class="col-lg-8">
            <div class="panel">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-8">
                            <h4 class="mbs">Ventas del mes</h4>
                            <p class="help-block">
                            </p>
                            <div id="area-chart-spline" style="width: 100%; height: 300px">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
