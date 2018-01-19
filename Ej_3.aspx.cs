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
        int totalUv = 0, newUv = 0; //Variable para la suma de las UV's y para guardar el valor de las cantidad de UV's que puede inscribir según el CUM
        decimal totalUm = 0; //Total de Unidades de Mérito = Nota de cada asignatura * UV de dicha asignatura
        float cum = 0; //CUM = Total UM / Tota UV
        string[] subjects = new string[] { "", "", "", "", "" }; //Arreglo que guardará el nombre de las 5 materias
        decimal[] grades = new decimal[] { 0, 0, 0, 0, 0 }; // Arreglo que guardará las notas de las 5 materias
        int[] uvs = new int[] { 0, 0, 0, 0, 0 }; //Arreglo que guardará las UV's de las 5 materias

        subjects[0] = subjectName_1.Text; //Nombre de la 1er materia
        subjects[1] = subjectName_2.Text; //Nombre de la 2da materia
        subjects[2] = subjectName_3.Text; //Nombre de la 3er materia
        subjects[3] = subjectName_4.Text; //Nombre de la 4ta materia
        subjects[4] = subjectName_5.Text; //Nombre de la 5ta materia

        decimal.TryParse(txtGrade_1.Text, out grades[0]); //Nota de la 1er materia
        decimal.TryParse(txtGrade_2.Text, out grades[1]); //Nota de la 2da materia
        decimal.TryParse(txtGrade_3.Text, out grades[2]); //Nota de la 3er materia
        decimal.TryParse(txtGrade_4.Text, out grades[3]); //Nota de la 4ta materia
        decimal.TryParse(txtGrade_5.Text, out grades[4]); //Nota de la 5ta materia

        int.TryParse(cmbUV_1.Text, out uvs[0]); //UV's de la 1er materia
        int.TryParse(cmbUV_2.Text, out uvs[1]); //UV's de la 2da materia
        int.TryParse(cmbUV_3.Text, out uvs[2]); //UV's de la 3er materia
        int.TryParse(cmbUV_4.Text, out uvs[3]); //UV's de la 4ta materia
        int.TryParse(cmbUV_5.Text, out uvs[4]); //UV's de la 5ta materia

        for (int i = 0; i < 5; i++) //Recorrer los distintos arreglos que contienen los datos de las 5 materias
        {
            if (grades[i] < 0 || grades[i] > 10) //Verifica sí las notras ingresadas son válidas
            {
                alertContainer.InnerHtml = "<div class='alert alert-danger' role='alert'>Ingrese notas entre 0 y 10!</div>";
                return;
            }
            else if (uvs[i] == 0) //Verificar sí las UV's seleccionadas son válidas
            {
                alertContainer.InnerHtml = "<div class='alert alert-danger' role='alert'>Seleccione UV's para todas las materias!</div>";
                return;
            }
            else if(subjects[i] == "") //Verificar sí los nombres ingresados son válidos
            {
                alertContainer.InnerHtml = "<div class='alert alert-danger' role='alert'>Ingrese un nombre para todas las materias!</div>";
                return;
            }

            totalUv += uvs[i];
            totalUm += grades[i] * uvs[i];
        }

        float.TryParse((totalUm / totalUv) + "", out cum); //Cálculo del CUM

        //Condiciones de las UV's nuevas según el CUM.
        newUv = cum >= 7.5 ? 35 : cum >= 7.0 && cum < 7.5 ? 24 : cum >= 6.0 && cum < 7.0 ? 20 : 16;

        mainCont.InnerHtml = "<br/><div class='container text-center'><table class='table table-bordered'><thead><th class='text-center'>Materia</th><th class='text-center'>Nota</th><th class='text-center'>UV</th></thead><tbody>";

        for (int i = 0; i < 5; i++) //Creación de la tabla con los datos de la materia
        {
            mainCont.InnerHtml += "<tr><td>" + subjects[i] + "</td><td>" + grades[i] + "</td><td>" + uvs[i] + "</td></tr>";
        }

        //Información extra
        mainCont.InnerHtml += @"</tbody></table></div>
            <br><h3 class='text-center'>El CUM del alumno es de: <b>" + String.Format("{0:0.00}", cum) + @"</b><h3><h5 class='text-center'>[Puede cursar un total de " + newUv + @" UV en siguiente ciclo.]</h5>
            <br/>
            <center><a href='/Ej_3.aspx' class='btn btn-primary'>Regresar</a></center>
            ";
    }
}