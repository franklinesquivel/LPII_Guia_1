<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ej_3.aspx.cs" Inherits="Ej_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ejercicio #3</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body id="body" runat="server">
    <!--Menú-->
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">LP II - Guía 1</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="Ej_1.aspx">Aumento de Salario [Ejercicio 1]</a></li>
                    <li><a href="/Ej_2.aspx">Taquilla de Cine [Ejercicio 2]</a></li>
                    <li class="active"><a href="/Ej_3.aspx">Cálculo de UV [Ejercicio 3] <span class="sr-only">(current)</span></a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!--FIN Menú-->
    <br />
    <div class="container" id="mainCont" runat="server">
        <form id="frm" runat="server" class="row">
            <!--Materia 1-->
            <div class="panel panel-default col-md-3 col-md-offset-2">
                <div class="panel-body">
                    <div class="form-group">
                        <label for="subjectName_1" class="control-label">Nombre de materia</label>
                        <asp:TextBox CssClass="form-control" ID="subjectName_1" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="cmbUV_1" class="control-label">Unidades Valorativas (UV): </label>
                        <asp:DropDownList runat="server" ID="cmbUV_1" CssClass="form-control">
                            <asp:ListItem Text="Selecciona las UV de la materia" disabled="true" Selected="True" />
                            <asp:ListItem Text="2" />
                            <asp:ListItem Text="3" />
                            <asp:ListItem Text="4" />
                            <asp:ListItem Text="5" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="txtGrade_1" class="control-label">Nota: </label>
                        <asp:TextBox ID="txtGrade_1" TextMode="Number" CssClass="form-control" runat="server" Text="0" />
                    </div>
                </div>
            </div>
            <!--FIN Materia 1-->

            <!--Materia 2-->
            <div class="panel panel-default col-md-3 col-md-offset-2">
                <div class="panel-body">
                    <div class="form-group">
                        <label for="subjectName_2" class="control-label">Nombre de materia</label>
                        <asp:TextBox CssClass="form-control" ID="subjectName_2" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="cmbUV_2" class="control-label">Unidades Valorativas (UV): </label>
                        <asp:DropDownList runat="server" ID="cmbUV_2" CssClass="form-control">
                            <asp:ListItem Text="Selecciona las UV de la materia" disabled="true" Selected="True" />
                            <asp:ListItem Text="2" />
                            <asp:ListItem Text="3" />
                            <asp:ListItem Text="4" />
                            <asp:ListItem Text="5" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="txtGrade_2" class="control-label">Nota: </label>
                        <asp:TextBox ID="txtGrade_2" TextMode="Number" CssClass="form-control" runat="server" Text="0" />
                    </div>
                </div>
            </div>
            <!--FIN Materia 2-->

            <!--Materia 3-->
            <div class="panel panel-default col-md-3 col-md-offset-2">
                <div class="panel-body">
                    <div class="form-group">
                        <label for="subjectName_3" class="control-label">Nombre de materia</label>
                        <asp:TextBox CssClass="form-control" ID="subjectName_3" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="cmbUV_3" class="control-label">Unidades Valorativas (UV): </label>
                        <asp:DropDownList runat="server" ID="cmbUV_3" CssClass="form-control">
                            <asp:ListItem Text="Selecciona las UV de la materia" disabled="true" Selected="True" />
                            <asp:ListItem Text="2" />
                            <asp:ListItem Text="3" />
                            <asp:ListItem Text="4" />
                            <asp:ListItem Text="5" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="txtGrade_3" class="control-label">Nota: </label>
                        <asp:TextBox ID="txtGrade_3" TextMode="Number" CssClass="form-control" runat="server" Text="0" />
                    </div>
                </div>
            </div>
            <!--FIN Materia 3-->

            <!--Materia 4-->
            <div class="panel panel-default col-md-3 col-md-offset-2">
                <div class="panel-body">
                    <div class="form-group">
                        <label for="subjectName_4" class="control-label">Nombre de materia</label>
                        <asp:TextBox CssClass="form-control" ID="subjectName_4" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="cmbUV_4" class="control-label">Unidades Valorativas (UV): </label>
                        <asp:DropDownList runat="server" ID="cmbUV_4" CssClass="form-control">
                            <asp:ListItem Text="Selecciona las UV de la materia" disabled="true" Selected="True" />
                            <asp:ListItem Text="2" />
                            <asp:ListItem Text="3" />
                            <asp:ListItem Text="4" />
                            <asp:ListItem Text="5" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="txtGrade_4" class="control-label">Nota: </label>
                        <asp:TextBox ID="txtGrade_4" TextMode="Number" CssClass="form-control" runat="server" />
                    </div>
                </div>
            </div>
            <!--FIN Materia 4-->

            <!--Materia 5-->
            <div class="panel panel-default col-md-3 col-md-offset-2">
                <div class="panel-body">
                    <div class="form-group">
                        <label for="subjectName_5" class="control-label">Nombre de materia</label>
                        <asp:TextBox CssClass="form-control" ID="subjectName_5" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="cmbUV_5" class="control-label">Unidades Valorativas (UV): </label>
                        <asp:DropDownList runat="server" ID="cmbUV_5" CssClass="form-control">
                            <asp:ListItem Text="Selecciona las UV de la materia" disabled="true" Selected="True" />
                            <asp:ListItem Text="2" />
                            <asp:ListItem Text="3" />
                            <asp:ListItem Text="4" />
                            <asp:ListItem Text="5" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="txtGrade_5" class="control-label">Nota: </label>
                        <asp:TextBox ID="txtGrade_5" TextMode="Number" CssClass="form-control" runat="server" Text="0" />
                    </div>
                </div>
            </div>
            <!--FIN Materia 5-->

            <div class="col-md-3 col-md-offset-2 row">
                <asp:Button Text="Calcular" ID="btnCalculate" CssClass="btn btn-primary col-md-12" OnClick="btnCalculate_Click" runat="server" />
                <div class="col-md-12"></div>
                <!--Contenedor para mostrar posibles excepciones-->
                <div runat="server" id="alertContainer" class="col-md-12"></div>
            </div>
        </form>
    </div>
</body>
</html>
