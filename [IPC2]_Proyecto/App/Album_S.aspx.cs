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
    public partial class Album_S : System.Web.UI.Page
    {
        static string id_artista = "";
        private void Cargar_datos()
        {
            string query = "select  * from Album where  id_Album ='" + Session["id_Album"].ToString() + "' AND id_Estado = 1";
            //string query = "select  * from Album where  id_Album ='" + 1 + "' AND id_Estado = 1";

            DataSet DS = Utilidades.ejecutar(query);

            if (DS.Tables[0].Rows.Count != 0)
            {

                string Titulo = DS.Tables[0].Rows[0]["Titulo"].ToString();
                string Portada = DS.Tables[0].Rows[0]["Portada"].ToString();
                id_artista = DS.Tables[0].Rows[0]["id_Artista"].ToString();


                lbTitulo.Text = Titulo;
                imgPortada.ImageUrl = Portada;
            }
            else
            {
                Response.Write("<script>alert('No se ha encontrado al usuario:" + Session["id_Artista"].ToString() + "')</script>");
            }
        }

        private void generar_Comentarios()
        {
            string query = "SELECT Usuario.Nombre_Usuario, Comentario.Comentario FROM Usuario, Comentario " +
                "WHERE Comentario.id_Album =" + Session["id_Album"].ToString() + " and Comentario.id_Usuario = Usuario.id_Usuario";

            //string query = "SELECT Usuario.Nombre_Usuario, Comentario.Comentario FROM Usuario, Comentario " +
            //    "WHERE Comentario.id_Album = " + 1 + " and Comentario.id_Usuario = Usuario.id_Usuario";
            DataSet DS = Utilidades.ejecutar(query);

            if (DS.Tables[0].Rows.Count != 0)
            {
                for (int a = DS.Tables[0].Rows.Count - 1; a >= 0; a--)
                {
                    Panel pn = new Panel();
                    Image img = new Image();
                    Label nombre = new Label();
                    TextBox comentario = new TextBox();

                    pn.ID = (a).ToString();
                    img.ID = (a).ToString();
                    nombre.ID = (a).ToString();
                    comentario.ID = (a).ToString();

                    img.ImageUrl = "~/App/images/usuario.png";
                    img.Height = 30;
                    img.Width = 30;
                    nombre.Text = DS.Tables[0].Rows[a]["Nombre_Usuario"].ToString();

                    comentario.Text = DS.Tables[0].Rows[a]["Comentario"].ToString();
                    comentario.Height = 100;
                    comentario.Width = 595;
                    comentario.TextMode = TextBoxMode.MultiLine;
                    comentario.Enabled = false;
                    comentario.CssClass = "form - control";

                    pn.Controls.Add(new LiteralControl("<table class= 'w-100'>")); //1
                    pn.Controls.Add(new LiteralControl("<tr>")); //2
                    pn.Controls.Add(new LiteralControl("<td class='auto-style30'>")); //3
                    pn.Controls.Add(new LiteralControl("<table class= 'w-100'>")); //5
                    pn.Controls.Add(new LiteralControl("<tr>")); //6
                    pn.Controls.Add(new LiteralControl("<td class='text-center'>")); //7

                    //---------------------Imagen-----------------------
                    pn.Controls.Add(img);

                    pn.Controls.Add(new LiteralControl("</td>")); //7
                    pn.Controls.Add(new LiteralControl("</tr>")); //6
                    pn.Controls.Add(new LiteralControl("<tr>")); //8
                    pn.Controls.Add(new LiteralControl("<td class='text-center'>")); //9

                    //----------------------Usuario-------------------
                    pn.Controls.Add(nombre);

                    pn.Controls.Add(new LiteralControl("</td>")); //9
                    pn.Controls.Add(new LiteralControl("</tr>")); //8
                    pn.Controls.Add(new LiteralControl("</table>")); //5
                    pn.Controls.Add(new LiteralControl("</td>")); //3
                    pn.Controls.Add(new LiteralControl("<td>")); //4

                    //----------------------Comentario-----------------
                    pn.Controls.Add(comentario);
                    
                    pn.Controls.Add(new LiteralControl("</td>")); //4
                    pn.Controls.Add(new LiteralControl("</tr>")); //2
                    pn.Controls.Add(new LiteralControl("</table>")); //1



                    Panel_Principal.Controls.Add(pn);
                    Panel_Principal.Controls.Add(new LiteralControl("&nbsp"));
                    Panel_Principal.Controls.Add(new LiteralControl("&nbsp"));
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Cargar_datos();
            generar_Comentarios();
        }

        protected void btnPublicar_Click(object sender, EventArgs e)
        {
            if (txtComentario.Text != "")
            {
                string comentario = txtComentario.Text;
                string id_usuario = Session["id_Usuario"].ToString();
                string id_album = Session["id_Album"].ToString();

                string query = "INSERT INTO Comentario(id_Usuario, id_Album, Comentario)" + 
                    "VALUES(" + id_usuario + ", " + id_album + ", '" + comentario + "')";

                DataSet DS = Utilidades.ejecutar(query);

                txtComentario.Text = "";
                Response.Redirect("Album_S.aspx");

            }
            else
            {
                Response.Write("<script>alert('Debe escribir un comentario')</script>");
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

        protected void btInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pag_Principal_Usuario.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            string query = "UPDATE Artista SET Likes = Likes + 1 WHERE id_Artista = " + id_artista;

            DataSet DS = Utilidades.ejecutar(query);
        }
    }
}