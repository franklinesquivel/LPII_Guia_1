using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ej_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        const double MEMBERSHIP = 0.10, STUDENT = 0.25; //Constantes de descuentos
        double price2D = 0, price3D = 0; //Variables para guardar los precios de las entradas
        int day = cmbDay.SelectedIndex, persons = 0; //Se guarda el indice del combo del día y se declara la variable para guardar el número de personas
        int.TryParse(txtNumPersons.Text, out persons);

        if (persons == 0)
        {
            contentResult.InnerHtml = "<h2>Por favor ingresar un número de personas</h2>";
        }
        else
        {
            switch (day)
            {
                case 0: //Ningún día
                    contentResult.InnerHtml = "Por favor elegir un día";
                    break;
                case 3: //Miercoles
                    //Se establecen precios
                    price2D = 3.50;
                    price3D = 5;
                    //Respuesta y condicional para ver en que formato es la película (2D / 3D) 
                    contentResult.InnerHtml = "Total a cancelar: $" + ((rdbFormat.SelectedIndex == 0) ? Math.Round(price2D * persons, 2) : Math.Round(price3D * persons, 2));
                    break;
                case 1://Los demás días - Lunes, Martes, Juves, Viernes, Sábado y Domingo
                case 2:
                case 4:
                case 5:
                case 6:
                    if (rdbTurn.SelectedIndex == 1) //Se establecen los precios según el turno (AM ó PM)
                    {//Turno PM
                        price2D = 3.75;
                        price3D = 7;
                    }
                    else
                    {//Turno AM
                        price2D = 3.50;
                        price3D = 6;
                    }

                    //Se guarda el total a cancelar dependiendo el formato de la película (2D / 3D)
                    double total = ((rdbFormat.SelectedIndex == 0) ? Math.Round(price2D, 2) : Math.Round(price3D, 2)); //Guardamos el precio de la entrada
                    if (rdbStudent.SelectedIndex == 0)
                    { //Si es estudiante
                        total -= total * STUDENT;
                    }

                    if (rdbMembership.SelectedIndex == 0)
                    { //Si tiene membresía
                        total -= total * MEMBERSHIP;
                    }
                    contentResult.InnerHtml = "Total a cancelar: $ " + Math.Round((total * persons), 2);
                    break;
                default:
                    contentResult.InnerHtml = "Por favor elegir un día";
                    break;
            } //Fin Switch
        }//fin de if
    }
}