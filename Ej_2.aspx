<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ej_2.aspx.cs" Inherits="Ej_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ejercicio #2</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <form id="form1" runat="server" class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-primary">
                    <div class="panel-heading text-center"> <h3>Taquilla de Cine</h3> </div>
                    <div class="panel-body">
                        <div  class="form-group"> <!-- Número de personas que ingresa  -->
                            <label for="txtNumPersons" class="control-label">Número de personas: </label>
                            <asp:TextBox ID="txtNumPersons" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div  class="form-group"><!-- Día de la funcion-->
                            <label for="cmbDay" class="control-label">Día de la función: </label>
                            <asp:DropDownList ID="cmbDay" runat="server" CssClass="form-control">
                                <asp:ListItem text="Seleccionar día de la película" Selected="True" disabled="true"/>
                                <asp:ListItem text="Lunes"/>
                                <asp:ListItem text="Martes"/>
                                <asp:ListItem text="Miércoles"/>
                                <asp:ListItem text="Juves"/>
                                <asp:ListItem text="Viernes"/>
                                <asp:ListItem text="Sábado"/>
                            </asp:DropDownList>
                        </div>
                        <div class="row">
                            <div  class="form-group col-md-5 col-md-offset-1"><!-- Turno de la película  -->
                                <label for="rdbTurn" class="control-label">Hora de la función: </label>
                                <asp:RadioButtonList ID="rdbTurn" runat="server">
                                    <asp:ListItem Text="AM" Selected="True"/>    
                                    <asp:ListItem Text="PM" />
                                </asp:RadioButtonList>
                            </div>
                            <div  class="form-group col-md-5  col-md-offset-1"> <!-- Formato de la película -->
                                <label for="rdbFormat" class="control-label">Formato de la película: </label>
                                <asp:RadioButtonList ID="rdbFormat" runat="server" >
                                    <asp:ListItem Text="2D" Selected="True"/>    
                                    <asp:ListItem Text="3D" />
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="row">    
                            <div  class="form-group col-md-5 col-md-offset-1"> <!-- Radio Buttons para saber si es estudiante  -->
                                <label for="rdbStudent" class="control-label">¿Estudiante?</label>
                                <asp:RadioButtonList ID="rdbStudent" runat="server">
                                    <asp:ListItem Text="Si" Selected="True"/>    
                                    <asp:ListItem Text="No" />
                                </asp:RadioButtonList>
                            </div>
                            <div  class="form-group col-md-5 col-md-offset-1"> <!-- Radio Buttons para saber si es la persona posee membresía  -->
                                <label for="rdbMembership" class="control-label">¿Membresía?</label>
                                <asp:RadioButtonList ID="rdbMembership" runat="server">
                                    <asp:ListItem Text="Si" Selected="True"/>    
                                    <asp:ListItem Text="No" />
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                </div> 
                <div class="text-center">
                    <asp:Button ID="btnSend" runat="server" Text="Enviar" cssClass="btn btn-primary" onclick="btnSend_Click"/> <!-- Botón de enviar -->
                </div>
            </div>
        </form><br />
        <div class="col-md-6 col-md-offset-3 text-center" id="contentResult" runat="server">
            <!-- Contenedor del resultado -->
        </div>
        <br />
        <div class="panel panel-primary">
            <div class="panel-heading text-center"> <h3>Menú</h3> </div>
            <div class="panel-body">
                <ul class="list-group">
                    <li class="list-group-item"><a href="Ej_1.aspx">Ejercicio 1</a></li>
                    <li class="list-group-item"><a href="Ej_3.aspx">Ejercicio 3</a></li>
                </ul> 
            </div>
        </div>
    </div>
</body>
</html>
