<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ej_2.aspx.cs" Inherits="Ej_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ejercicio #2</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
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
                    <li class="active"><a href="/Ej_2.aspx">Taquilla de Cine [Ejercicio 2] <span class="sr-only">(current)</span></a></li>
                    <li><a href="/Ej_3.aspx">Cálculo de UV [Ejercicio 3]</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <form id="form1" runat="server" class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-primary">
                    <div class="panel-heading text-center">
                        <h3>Taquilla de Cine</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <!-- Número de personas que ingresa  -->
                            <label for="txtNumPersons" class="control-label">Número de personas: </label>
                            <asp:TextBox ID="txtNumPersons" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <!-- Día de la funcion-->
                            <label for="cmbDay" class="control-label">Día de la función: </label>
                            <asp:DropDownList ID="cmbDay" runat="server" CssClass="form-control">
                                <asp:ListItem Text="Seleccionar día de la película" Selected="True" disabled="true" />
                                <asp:ListItem Text="Lunes" />
                                <asp:ListItem Text="Martes" />
                                <asp:ListItem Text="Miércoles" />
                                <asp:ListItem Text="Juves" />
                                <asp:ListItem Text="Viernes" />
                                <asp:ListItem Text="Sábado" />
                            </asp:DropDownList>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-5 col-md-offset-1">
                                <!-- Turno de la película  -->
                                <label for="rdbTurn" class="control-label">Hora de la función: </label>
                                <asp:RadioButtonList ID="rdbTurn" runat="server">
                                    <asp:ListItem Text="AM" Selected="True" />
                                    <asp:ListItem Text="PM" />
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-5  col-md-offset-1">
                                <!-- Formato de la película -->
                                <label for="rdbFormat" class="control-label">Formato de la película: </label>
                                <asp:RadioButtonList ID="rdbFormat" runat="server">
                                    <asp:ListItem Text="2D" Selected="True" />
                                    <asp:ListItem Text="3D" />
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-5 col-md-offset-1">
                                <!-- Radio Buttons para saber si es estudiante  -->
                                <label for="rdbStudent" class="control-label">¿Estudiante?</label>
                                <asp:RadioButtonList ID="rdbStudent" runat="server">
                                    <asp:ListItem Text="Si" Selected="True" />
                                    <asp:ListItem Text="No" />
                                </asp:RadioButtonList>
                            </div>
                            <div class="form-group col-md-5 col-md-offset-1">
                                <!-- Radio Buttons para saber si es la persona posee membresía  -->
                                <label for="rdbMembership" class="control-label">¿Membresía?</label>
                                <asp:RadioButtonList ID="rdbMembership" runat="server">
                                    <asp:ListItem Text="Si" Selected="True" />
                                    <asp:ListItem Text="No" />
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center">
                    <asp:Button ID="btnSend" runat="server" Text="Enviar" CssClass="btn btn-primary" OnClick="btnSend_Click" />
                    <!-- Botón de enviar -->
                </div>
            </div>
        </form>
        <br />
        <div class="col-md-6 col-md-offset-3 text-center" id="contentResult" runat="server">
            <!-- Contenedor del resultado -->
        </div>
    </div>
</body>
</html>
