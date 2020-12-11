using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Mi_Libreria;

namespace _IPC2__Proyecto.App
{
    public partial class Consulta_usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "  SELECT CONCAT(Nombre, Apellido)as Nombre,Nombre_Usuario As Usuario, id_Estado As Estado FROM Usuario";

            DataSet DS = Utilidades.ejecutar(query);
            gvConsulta_Usuarios.DataSource = DS;
            gvConsulta_Usuarios.DataBind();
        }

        protected void btAceptar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gestion_Usuario.aspx");
        }
    }
}