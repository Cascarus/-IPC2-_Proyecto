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
    public partial class Consulta_Artista_Influyente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "SELECT TOP 20  Nombre_Artista, MAX(Likes) AS 'Likes' FROM Artista WHERE id_Estado = 1" + 
                "GROUP BY Nombre_Artista ORDER BY MAX(Likes)DESC";

            DataSet DS = Utilidades.ejecutar(query);
            gvConsulta_Artistas.DataSource = DS;
            gvConsulta_Artistas.DataBind();
        }

        protected void btAceptar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pag_Principal_Admin.aspx");
        }
    }
}