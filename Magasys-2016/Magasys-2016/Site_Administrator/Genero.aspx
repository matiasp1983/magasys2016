<%@ Page Title="" Language="C#" MasterPageFile="~/Site_Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="Genero.aspx.cs" Inherits="Magasys_2016.Site_Administrator.Genero" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-pink">
        <div class="panel-heading">Registrar Género</div>
        <div class="panel-body pan">
            <form class="form-horizontal" runat="server">
                <div class="form-body pal">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputNombreGenenro" class="col-md-3 control-label">Nombre del Género: <span class="require">*</span></label>

                                <div class="col-md-9">
                                    <input id="inputNombreGenenro" type="text" placeholder=" " class="form-control">
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

                    <div class="form-actions text-right pal">
                        <button type="submit" class="btn btn-primary">Guardar</button>
                        &nbsp;
                                                        <button type="button" class="btn btn-green">Cancelar</button>
                    </div>
            </form>
        </div>
    </div>
</asp:Content>
