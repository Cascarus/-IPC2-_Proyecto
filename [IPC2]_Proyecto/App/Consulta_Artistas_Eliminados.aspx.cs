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
    public partial class Consulta_Artistas_Eliminados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "SELECT Artista.Nombre_Artista, Artista.Año, Pais.Nombre " +
                "FROM Artista, Pais WHERE Artista.id_Pais = Pais.id_Pais AND Artista.id_Estado = 2";

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