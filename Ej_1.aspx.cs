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
        double salary = 0, result = 0;
        double.TryParse(txtSalary.Text, out salary);

        if (salary >= 0 && salary <= 300)
        {
            result = salary * 1.2;
        }
        else if (salary > 300 && salary <= 500)
        {
            result = salary * 1.15;
        }
        else if (salary > 500 && salary <= 1000)
        {
            result = salary * 1.10;
        }
        else if (salary > 1000)
        {
            result = salary;
        }

        contResult.InnerHtml = "<div class='alert alert-info' role='alert'>El nuevo sueldo del empleado es de <b>$" + String.Format("{0:0.00}", result) + "</b></div>";
    }
}