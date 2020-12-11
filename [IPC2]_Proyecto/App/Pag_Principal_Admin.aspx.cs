using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2__Proyecto.App
{
    public partial class Pag_Principal_Admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btGestionar_Usuarios_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Gestion_Usuario.aspx");
        }

        protected void btSalir_Click(object sender, EventArgs e)
        {
            Session.Remove("id_Usuario");
            Session.Remove("Usuario");
            Session.Remove("id_Artista");
            Session.RemoveAll();
            Response.Redirect("login.aspx");
        }

        protected void btGestionar_Generos_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("G_Generos.aspx");
        }

        protected void btAlbumesP_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Consulta_Albumes_Eliminados.aspx");
        }

        protected void btArtistas_Eliminados_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Consulta_Artistas_Eliminados.aspx");
        }

        protected void btNovedades_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("G_Novedades.aspx");
        }

        protected void btReportes_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Reportes.aspx");
        }
    }
}