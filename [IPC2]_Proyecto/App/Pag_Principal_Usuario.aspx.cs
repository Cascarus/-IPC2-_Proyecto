using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Mi_Libreria;
using _IPC2__Proyecto.App.App_Code;

namespace _IPC2__Proyecto.App
{
    public partial class Pag_Principal_Usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["id_Usuario"] != null)
            {
                string id_Usuario = Session["id_Usuario"].ToString();
                lbSesion.Text = "Bienvenido " + Session["Usuario"].ToString();
                string query = "select * from Artista Where id_Usuario = " + id_Usuario + " AND id_Estado = 1";

                DataSet DS = Utilidades.ejecutar(query);

                if (DS.Tables[0].Rows.Count != 0)
                {
                    if (DS.Tables[0].Rows[0]["id_Estado"].ToString() == "1")
                    {
                        Session["id_Artista"] = DS.Tables[0].Rows[0]["id_Artista"];
                        btModArtista.Text = DS.Tables[0].Rows[0]["Nombre_Artista"].ToString();
                        btModArtista.Visible = true;
                        btArtista.Visible = false;
                    }
                    else
                    {
                        btArtista.Visible = true;
                        btModArtista.Visible = false;
                    }

                }
            }

        }

        protected void btSalir_Click(object sender, EventArgs e)
        {
            Session.Remove("id_Usuario");
            Session.Remove("Usuario");
            Session.Remove("id_Artista");
            Session.RemoveAll();
            Response.Redirect("login.aspx");
        }

        protected void btArtista_Click(object sender, EventArgs e)
        {
            Response.Redirect("Crear_Artista.aspx");
        }

        protected void btModArtista_Click(object sender, EventArgs e)
        {
            Response.Redirect("Modificar_Artista.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Novedades.aspx");
        }

        protected void btGeneros_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Ver_Albumes.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Favoritos.aspx");
        }
    }
}