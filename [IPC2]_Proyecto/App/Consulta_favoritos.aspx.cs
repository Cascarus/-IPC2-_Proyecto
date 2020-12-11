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
    public partial class Consulta_favoritos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "SELECT TOP 100  Titulo, MAX(Favorito) AS 'favs' FROM Album WHERE id_Estado = 1" +
                "GROUP BY Titulo ORDER BY MAX(Favorito) DESC";
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