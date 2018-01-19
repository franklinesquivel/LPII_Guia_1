<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ej_1.aspx.cs" Inherits="Ej_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ejercicio #1</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <!-- Menú -->
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
                    <li class="active"><a href="Ej_1.aspx">Aumento de Salario [Ejercicio 1] <span class="sr-only">(current)</span></a></li>
                    <li><a href="/Ej_2.aspx">Taquilla de Cine [Ejercicio 2]</a></li>
                    <li><a href="/Ej_3.aspx">Cálculo de UV [Ejercicio 3]</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- FIN Menú -->
    <br />
    <div class="container">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h2>Aumento de Salario</h2>
            </div>
            <div class="panel-body">
                <!-- Formulario general -->
                <form id="frm" runat="server">
                    <div class="form-group">
                        <label for="txtSalary">Salario Actual: </label>
                        <asp:TextBox ID="txtSalary" runat="server" />
                    </div>

                    <asp:Button Text="Calcular" ID="btnCalculate" OnClick="btnCalculate_Click" CssClass="btn btn-primary" runat="server" />
                </form>
            </div>
        </div>
    </div>

    <!-- Contenedor para el resultado -->
    <div id="contResult" class="container" runat="server"></div>
</body>
</html>
