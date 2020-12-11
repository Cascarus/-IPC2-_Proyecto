using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _IPC2__Proyecto.App
{
    public partial class Reportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btRegresar_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Pag_Principal_Admin.aspx");
        }

        protected void btCrearUsuario_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Consulta_Artista_Influyente.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}