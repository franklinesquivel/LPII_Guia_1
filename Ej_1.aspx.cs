using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ej_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double salary = 0, result = 0; //Guardar salario e inicializar el resultado
        double.TryParse(txtSalary.Text, out salary); //Guardar el dato del salario {Sí da error se toma como '0}

        if (salary >= 0 && salary <= 300)
        {
            result = salary * 1.2; //20% de bono
        }
        else if (salary > 300 && salary <= 500)
        {
            result = salary * 1.15; //15% de bono
        }
        else if (salary > 500 && salary <= 1000)
        {
            result = salary * 1.10; //10% de bono
        }
        else if (salary > 1000)
        {
            result = salary; //0% de bono
        }

        //Se muestra el resultado en el contenedor
        contResult.InnerHtml = "<div class='alert alert-info' role='alert'>El nuevo sueldo del empleado es de <b>$" + String.Format("{0:0.00}", result) + "</b></div>";
    }
}