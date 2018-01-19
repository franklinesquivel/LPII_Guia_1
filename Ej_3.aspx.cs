using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ej_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        int totalUv = 0, newUv = 0;
        decimal totalUm = 0;
        float cum = 0;
        string[] subjects = new string[] { "", "", "", "", "" };
        decimal[] grades = new decimal[] { 0, 0, 0, 0, 0 };
        int[] uvs = new int[] { 0, 0, 0, 0, 0 };

        subjects[0] = subjectName_1.Text;
        subjects[1] = subjectName_2.Text;
        subjects[2] = subjectName_3.Text;
        subjects[3] = subjectName_4.Text;
        subjects[4] = subjectName_5.Text;

        decimal.TryParse(txtGrade_1.Text, out grades[0]);
        decimal.TryParse(txtGrade_2.Text, out grades[1]);
        decimal.TryParse(txtGrade_3.Text, out grades[2]);
        decimal.TryParse(txtGrade_4.Text, out grades[3]);
        decimal.TryParse(txtGrade_5.Text, out grades[4]);

        int.TryParse(cmbUV_1.Text, out uvs[0]);
        int.TryParse(cmbUV_2.Text, out uvs[1]);
        int.TryParse(cmbUV_3.Text, out uvs[2]);
        int.TryParse(cmbUV_4.Text, out uvs[3]);
        int.TryParse(cmbUV_5.Text, out uvs[4]);

        for (int i = 0; i < 5; i++)
        {
            totalUv += uvs[i];
            totalUm += grades[i] * uvs[i];
        }

        float.TryParse((totalUm / totalUv) + "", out cum);

        newUv = cum >= 7.5 ? 35 : cum >= 7.0 && cum < 7.5 ? 24 : cum >= 6.0 && cum < 7.0 ? 20 : 16;

        body.InnerHtml = "<br/><div class='container text-center'><table class='table table-bordered'><thead><th class='text-center'>Materia</th><th class='text-center'>Nota</th><th class='text-center'>UV</th></thead><tbody>";

        for (int i = 0; i < 5; i++)
        {
            body.InnerHtml += "<tr><td>" + subjects[i] + "</td><td>" + grades[i] + "</td><td>" + uvs[i] + "</td></tr>";
        }

        body.InnerHtml += @"</tbody></table></div>
            <br><h3 class='text-center'>El CUM del alumno es de: <b>" + String.Format("{0:0.00}", cum) + @"</b><h3><h5 class='text-center'>[Puede cursar un total de " + newUv + @" UV en siguiente ciclo.]</h5>
        ";
    }
}