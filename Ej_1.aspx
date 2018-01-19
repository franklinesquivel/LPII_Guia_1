<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ej_1.aspx.cs" Inherits="Ej_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ejercicio #1</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <br />
    <div class="container">
        <div class="panel panel-primary">
			<div class="panel-heading">
				<h2>Aumento de Salario</h2>
			</div>
			<div class="panel-body">
				<form id="frm" runat="server">
					<div class="form-group">
						<label for="txtSalary">Salario Actual: </label>
						<asp:TextBox ID="txtSalary" runat="server" />
					</div>

                    <asp:Button Text="Calcular" ID="btnCalculate" onclick="btnCalculate_Click" CssClass="btn btn-primary" runat="server" />
				</form>
			</div>
		</div>
    </div>

    <div id="contResult" class="container" runat="server"></div>
    <div class="panel panel-primary">
            <div class="panel-heading text-center"> <h3>Menú</h3> </div>
            <div class="panel-body">
                <ul class="list-group">
                    <li class="list-group-item"><a href="Ej_2.aspx">Ejercicio 2</a></li>
                    <li class="list-group-item"><a href="Ej_3.aspx">Ejercicio 3</a></li>
                </ul> 
            </div>
    </div>
</body>
</html>
