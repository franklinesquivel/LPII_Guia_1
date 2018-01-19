<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ej_3.aspx.cs" Inherits="Ej_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ejercicio #3</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body id="body" runat="server">
    <br />
    <div class="container">
	    <form id="frm" runat="server" class="row">
            <div class="panel panel-default col-md-3 col-md-offset-2">
			    <div class="panel-body">
                    <div class="form-group">
                        <label for="subjectName_1" class="control-label">Nombre de materia</label>
                        <asp:TextBox CssClass="form-control" ID="subjectName_1" runat="server" />
                    </div>
                    <div class="form-group">
				        <label for="cmbUV_1" class="control-label">Unidades Valorativas (UV): </label>
                        <asp:DropDownList runat="server" ID="cmbUV_1" CssClass="form-control">
                            <asp:ListItem Text="Selecciona las UV de la materia" disabled="true" Selected="True"/>
                            <asp:ListItem Text="2" />
                            <asp:ListItem Text="3" />
                            <asp:ListItem Text="4" />
                            <asp:ListItem Text="5" />
                        </asp:DropDownList>
					</div>
				    <div class="form-group">
				        <label for="txtGrade_1" class="control-label">Salario Actual: </label>
					    <asp:TextBox ID="txtGrade_1" TextMode="Number" CssClass="form-control" runat="server" />
					</div>
			    </div>
		    </div>

            <div class="panel panel-default col-md-3 col-md-offset-2">
			    <div class="panel-body">
                    <div class="form-group">
                        <label for="subjectName_2" class="control-label">Nombre de materia</label>
                        <asp:TextBox CssClass="form-control" ID="subjectName_2" runat="server" />
                    </div>
                    <div class="form-group">
				        <label for="cmbUV_2" class="control-label">Unidades Valorativas (UV): </label>
                        <asp:DropDownList runat="server" ID="cmbUV_2" CssClass="form-control">
                            <asp:ListItem Text="Selecciona las UV de la materia" disabled="true" Selected="True"/>
                            <asp:ListItem Text="2" />
                            <asp:ListItem Text="3" />
                            <asp:ListItem Text="4" />
                            <asp:ListItem Text="5" />
                        </asp:DropDownList>
					</div>
				    <div class="form-group">
				        <label for="txtGrade_2" class="control-label">Nota: </label>
					    <asp:TextBox ID="txtGrade_2" TextMode="Number" CssClass="form-control" runat="server" />
					</div>
			    </div>
		    </div>

            <div class="panel panel-default col-md-3 col-md-offset-2">
			    <div class="panel-body">
                    <div class="form-group">
                        <label for="subjectName_3" class="control-label">Nombre de materia</label>
                        <asp:TextBox CssClass="form-control" ID="subjectName_3" runat="server" />
                    </div>
                    <div class="form-group">
				        <label for="cmbUV_3" class="control-label">Unidades Valorativas (UV): </label>
                        <asp:DropDownList runat="server" ID="cmbUV_3" CssClass="form-control">
                            <asp:ListItem Text="Selecciona las UV de la materia" disabled="true" Selected="True"/>
                            <asp:ListItem Text="2" />
                            <asp:ListItem Text="3" />
                            <asp:ListItem Text="4" />
                            <asp:ListItem Text="5" />
                        </asp:DropDownList>
					</div>
				    <div class="form-group">
				        <label for="txtGrade_3" class="control-label">Nota: </label>
					    <asp:TextBox ID="txtGrade_3" TextMode="Number" CssClass="form-control" runat="server" />
					</div>
			    </div>
		    </div>

            <div class="panel panel-default col-md-3 col-md-offset-2">
			    <div class="panel-body">
                    <div class="form-group">
                        <label for="subjectName_4" class="control-label">Nombre de materia</label>
                        <asp:TextBox CssClass="form-control" ID="subjectName_4" runat="server" />
                    </div>
                    <div class="form-group">
				        <label for="cmbUV_4" class="control-label">Unidades Valorativas (UV): </label>
                        <asp:DropDownList runat="server" ID="cmbUV_4" CssClass="form-control">
                            <asp:ListItem Text="Selecciona las UV de la materia" disabled="true" Selected="True"/>
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

            <div class="panel panel-default col-md-3 col-md-offset-2">
			    <div class="panel-body">
                    <div class="form-group">
                        <label for="subjectName_5" class="control-label">Nombre de materia</label>
                        <asp:TextBox CssClass="form-control" ID="subjectName_5" runat="server" />
                    </div>
                    <div class="form-group">
				        <label for="cmbUV_5" class="control-label">Unidades Valorativas (UV): </label>
                        <asp:DropDownList runat="server" ID="cmbUV_5" CssClass="form-control">
                            <asp:ListItem Text="Selecciona las UV de la materia" disabled="true" Selected="True"/>
                            <asp:ListItem Text="2" />
                            <asp:ListItem Text="3" />
                            <asp:ListItem Text="4" />
                            <asp:ListItem Text="5" />
                        </asp:DropDownList>
					</div>
				    <div class="form-group">
				        <label for="txtGrade_5" class="control-label">Nota: </label>
					    <asp:TextBox ID="txtGrade_5" TextMode="Number" CssClass="form-control" runat="server" />
					</div>
			    </div>
		    </div>

            <asp:Button Text="Calcular" ID="btnCalculate" CssClass="btn btn-primary" onclick="btnCalculate_Click" runat="server" />
		</form>
    </div>

    <div id="contResult" class="container" runat="server"></div>

    <div class="panel panel-primary">
        <div class="panel-heading text-center"> <h3>Menú</h3> </div>
            <div class="panel-body">
                <ul class="list-group">
                    <li class="list-group-item"><a href="Ej_1.aspx">Ejercicio 1</a></li>
                    <li class="list-group-item"><a href="Ej_2.aspx">Ejercicio 2</a></li>
                </ul> 
            </div>
    </div>
</body>
</html>
