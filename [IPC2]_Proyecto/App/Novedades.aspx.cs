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
    public partial class Novedades : System.Web.UI.Page
    {

        public void boton_artista()
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

        protected void Page_Load(object sender, EventArgs e)
        {
            boton_artista();
            Generar_novedades();
        }

        private void Generar_novedades()
        {
            string query = "select * from Novedades WHERE id_Estado = 1";
            DataSet DS = Utilidades.ejecutar(query);

            if (DS.Tables[0].Rows.Count != 0)
            {
                //EventHandler evh = new EventHandler(btn_Click);
                //int conta = 0;
                for (int a = DS.Tables[0].Rows.Count-1; a >= 0 ; a--)
                {
                    //conta++;
                    //if (conta == 7)
                    //{
                    //    Panel_Principal.Controls.Add(new LiteralControl("<br />"));
                    //    Panel_Principal.Controls.Add(new LiteralControl("<br />"));
                    //    conta = 1;
                    //}
                    Panel pn = new Panel();
                    Image img = new Image();
                    Label Titulo = new Label();
                    Label cuerpo = new Label();

                    pn.ID = (a).ToString();
                    img.ID = (a).ToString();
                    Titulo.ID = (a).ToString();
                    cuerpo.ID = (a).ToString();

                    img.ImageUrl = DS.Tables[0].Rows[a]["Foto"].ToString();
                    img.Height = 200;
                    img.Width = 200;
                    Titulo.Text = DS.Tables[0].Rows[a]["Titulo"].ToString();
                    cuerpo.Text = DS.Tables[0].Rows[a]["Contenido"].ToString();

                    pn.Controls.Add(new LiteralControl("<table class= 'w - 100'>")); //1
                    pn.Controls.Add(new LiteralControl("<tr>")); //2
                    pn.Controls.Add(new LiteralControl("<td>")); //3

                    //------------------------ imagen-----------------
                    pn.Controls.Add(img);

                    pn.Controls.Add(new LiteralControl("</td>")); //3
                    pn.Controls.Add(new LiteralControl("<td>")); //4
                    pn.Controls.Add(new LiteralControl("<table class= 'w - 100'>")); //5
                    pn.Controls.Add(new LiteralControl("<tr>")); //6
                    pn.Controls.Add(new LiteralControl("<td>")); //7

                    //---------------------Titulo-----------------------
                    pn.Controls.Add(Titulo);

                    pn.Controls.Add(new LiteralControl("</td>")); //7
                    pn.Controls.Add(new LiteralControl("</tr>")); //6
                    pn.Controls.Add(new LiteralControl("<tr>")); //8
                    pn.Controls.Add(new LiteralControl("<td>")); //9

                    //----------------------Contenido-------------------
                    pn.Controls.Add(cuerpo);

                    pn.Controls.Add(new LiteralControl("</td>")); //9
                    pn.Controls.Add(new LiteralControl("</tr>")); //8
                    pn.Controls.Add(new LiteralControl("</table>")); //5
                    pn.Controls.Add(new LiteralControl("</td>")); //4
                    pn.Controls.Add(new LiteralControl("</tr>")); //2
                    pn.Controls.Add(new LiteralControl("</table>")); //1



                    Panel_Principal.Controls.Add(pn);
                    Panel_Principal.Controls.Add(new LiteralControl("&nbsp"));
                    Panel_Principal.Controls.Add(new LiteralControl("&nbsp"));
                }
            }
        }

        protected void btInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pag_Principal_Usuario.aspx");
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
    }
}