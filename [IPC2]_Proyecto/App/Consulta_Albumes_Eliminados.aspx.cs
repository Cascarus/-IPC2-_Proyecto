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
    public partial class Consulta_Albumes_Eliminados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "SELECT Album.Titulo, Album.Fecha_Eliminacion, Artista.Nombre_Artista " +
                "FROM Album, Artista WHERE Album.id_Artista = Artista.id_Artista AND Album.id_Estado = 2";

            DataSet DS = Utilidades.ejecutar(query);
            gvConsulta_Albumes.DataSource = DS;
            gvConsulta_Albumes.DataBind();

            query = "SELECT Album.id_Album FROM Album, Artista WHERE Album.id_Artista = Artista.id_Artista AND Album.id_Estado = 2";
            DS = Utilidades.ejecutar(query);
        }

        protected void btAceptar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pag_Principal_Admin.aspx");
        }
    }
}