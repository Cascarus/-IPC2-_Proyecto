using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Mi_Libreria;
using System.Web.UI.HtmlControls;

namespace _IPC2__Proyecto.App
{
    public partial class Ver_Albumes : System.Web.UI.Page
    {
        static Boolean bandera = false;

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
            Generar_Albumes();
        }

        public void Generar_Albumes()
        {
            string query = "SELECT * FROM Album WHERE id_Estado = 1";
            DataSet DS = Utilidades.ejecutar(query);

            if (DS.Tables[0].Rows.Count != 0)
            {
                
                for (int a = 0; a < DS.Tables[0].Rows.Count; a++)
                {
                    var btn = new ImageButton();
                    btn.Height = 200;
                    btn.Width = 200;
                    btn.ImageUrl = DS.Tables[0].Rows[a]["Portada"].ToString();
                    btn.ID = DS.Tables[0].Rows[a]["Titulo"].ToString();
                    btn.CommandArgument = a.ToString();
                    btn.Click += new ImageClickEventHandler(btn_Click);
                    

                    Label lb = new Label();
                    lb.ID = (a + 1).ToString();
                    lb.Text = DS.Tables[0].Rows[a]["Titulo"].ToString();


                    PlaceHolder1.Controls.Add(btn);
                    PlaceHolder1.Controls.Add(new LiteralControl("<br />"));
                    PlaceHolder1.Controls.Add(lb);
                    PlaceHolder1.Controls.Add(new LiteralControl("<br />"));
                    PlaceHolder1.Controls.Add(new LiteralControl("<br />"));

                }
            }
        }

        void btn_Click(object sender, EventArgs e)
        {
            ImageButton btnClic = (ImageButton)sender;
            //Response.Write("<script>alert('Es el Boton " + btnClic.ID + "')</script>");

            string query = "SELECT id_Album FROM Album WHERE Titulo = '" + btnClic.ID + "'";
            DataSet DS = Utilidades.ejecutar(query);

            if (DS.Tables[0].Rows.Count != 0)
            {
                Session["id_Album"] = DS.Tables[0].Rows[0]["id_Album"].ToString();
            }

            Response.Redirect("Album_S.aspx");
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

        protected void btInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pag_Principal_Usuario.aspx");
        }
    }
}