using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Mi_Libreria;
using System.Drawing;
using System.Collections;
using _IPC2__Proyecto.App.App_Code;

namespace _IPC2__Proyecto.App
{
    public partial class Crear_Artista : System.Web.UI.Page
    {
        Boolean ElbNombre, ElbDescripcion, ElbGenero, ErrorGeneral;
        static ArrayList generosS = new ArrayList();
        static String Portada = "~/App/Images/Defecto.png";
        //static byte[] imgoriginal;

        private void inicializar()
        {
            ElbNombre = false;
            ElbDescripcion = false;
            ElbGenero = false;
            ErrorGeneral = false;
            


            for (int a = 1985; a < 2018; a++)
            {
                dplAño.Items.Add(a.ToString());
            }
        }

        private void cargar_paises()
        {
            string query = "select * from pais";
            DataSet DS = Utilidades.ejecutar(query);

            if (DS.Tables[0].Rows.Count != 0)
            {
                for (int a = 0; a < DS.Tables[0].Rows.Count; a++)
                {
                    dplPais.Items.Add(DS.Tables[0].Rows[a]["Nombre"].ToString());
                }
            }
        }

        private void Crear_botones()
        {
            string query = "select * from Genero";
            DataSet DS = Utilidades.ejecutar(query);

            if (DS.Tables[0].Rows.Count != 0)
            {
                EventHandler evh = new EventHandler(btn_Click);
                int conta = 0;
                for (int a = 0; a < DS.Tables[0].Rows.Count; a++)
                {
                    conta++;
                    if (conta == 7)
                    {
                        PanelBotones.Controls.Add(new LiteralControl("<br />"));
                        PanelBotones.Controls.Add(new LiteralControl("<br />"));
                        conta = 1;
                    }
                    Button btn = new Button();

                    btn.Text = DS.Tables[0].Rows[a]["Genero"].ToString();
                    btn.ID = (a + 1).ToString();
                    btn.ControlStyle.CssClass = "btn btn-primary";
                    btn.Click += evh;
                    PanelBotones.Controls.Add(btn);
                    PanelBotones.Controls.Add(new LiteralControl("&nbsp"));
                    PanelBotones.Controls.Add(new LiteralControl("&nbsp"));
                }
            }
        }

        private void verificar_Error()
        {

            if (txtNombre.Text == "")
            {
                lbEnombre.Visible = true;
                txtNombre.BorderColor = System.Drawing.Color.Red;
                ElbNombre = true;

            }
            else
            {
                lbEnombre.Visible = false;
                txtNombre.BorderColor = System.Drawing.Color.Empty;
                ElbNombre = false;
            }

            if (txtDescripcion.Text == "")
            {
                lbEdescripcion.Visible = true;
                txtDescripcion.BorderColor = System.Drawing.Color.Red;
                ElbDescripcion = true;

            }
            else
            {
                lbEdescripcion.Visible = false;
                txtDescripcion.BorderColor = System.Drawing.Color.Empty;
                ElbDescripcion = false;

            }
            if (generosS.Count == 0)
            {
                lbEgenero.Visible = true;
                PanelBotones.BorderColor = System.Drawing.Color.Red;
                ElbGenero = true;
            }
            else
            {
                lbEgenero.Visible = false;
                PanelBotones.BorderColor = System.Drawing.Color.Empty;
                ElbGenero = false;
            }



            if (ElbDescripcion == true | ElbNombre == true | ElbGenero == true)
            {
                ErrorGeneral = true;
            }
            else
            {
                ErrorGeneral = false;
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {

            inicializar();
            cargar_paises();
            Crear_botones();

        }

        void btn_Click(object sender, EventArgs e)
        {
            Button b = sender as Button;
            if (b != null)
            {
                // Save the last pressed ID for later
                PressedButton.Value = b.ID;
            }
            if (PressedButton.Value != null)
            {
                b = (Button)(PanelBotones.FindControl((string)PressedButton.Value));
                if (b != null)
                {
                    //Response.Write("<script>alert('Es el Boton " + b.ID +"')</script>");
                    generosS.Add(b.ID);
                    //txtFacebook.Text = generosS[0].ToString();
                    b.Enabled = false;
                }
            }

        }

        protected void btCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pag_Principal_Usuario.aspx");
            generosS.Clear();
        }

        protected void btSubir_Click(object sender, EventArgs e)
        {

            if (fuImagenes.HasFile)
            {
                Portada = "~/App/images/Artista/" + fuImagenes.FileName;
                fuImagenes.SaveAs(Server.MapPath(Portada));
                imgPerfil.ImageUrl = Portada;
            }
        }

        protected void btAceptar_Click(object sender, EventArgs e)
        {
            verificar_Error();
            if (ErrorGeneral == false)
            {
                string id_Usuario = Session["id_Usuario"].ToString();
                string nombre = txtNombre.Text;
                string anio = dplAño.Text;
                string pais = (dplPais.SelectedIndex + 1).ToString();
                string descrip = txtDescripcion.Text;
                string facebook = txtFacebook.Text;
                string twitter = txtTwitter.Text;
                string youtube = txtYoutube.Text;
                string pagina = txtPag.Text;

                SqlConnection conecionSQL = Conexion.enviarCon();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "insert into Artista(id_Usuario,Nombre_Artista,Año,id_Pais,Descripcion,Foto,Facebook,Twitter,Youtube,Pagina_Web,id_Estado)" + 
                                  "values(@idUsuario,@nombreArtista,@anio,@idPais,@Descripcion,@Foto, @facebook,@twitter,@Youtube,@Pagina, 1)";

                cmd.Parameters.Add("@idUsuario", SqlDbType.Int).Value = id_Usuario;
                cmd.Parameters.Add("@nombreArtista", SqlDbType.Text).Value = nombre;
                cmd.Parameters.Add("@anio", SqlDbType.Int).Value = anio;
                cmd.Parameters.Add("@idPais", SqlDbType.Int).Value = pais;
                cmd.Parameters.Add("@Descripcion", SqlDbType.Text).Value = descrip;
                cmd.Parameters.Add("@Foto", SqlDbType.Text).Value = Portada;
                cmd.Parameters.Add("@facebook", SqlDbType.Text).Value = facebook;
                cmd.Parameters.Add("@twitter", SqlDbType.Text).Value = twitter;
                cmd.Parameters.Add("@Youtube", SqlDbType.Text).Value = youtube;
                cmd.Parameters.Add("@Pagina", SqlDbType.Text).Value = pagina;

                cmd.CommandType = CommandType.Text;
                cmd.Connection = conecionSQL;
                conecionSQL.Open();
                cmd.ExecuteNonQuery();
                conecionSQL.Close();

                string query = "select id_Artista from Artista where id_Usuario = " + id_Usuario;
                DataSet DS = Utilidades.ejecutar(query);

                if (DS.Tables[0].Rows.Count != 0)
                {
                    string id_Artista = DS.Tables[0].Rows[0]["id_Artista"].ToString();
                    for (int a = 0; a < generosS.Count; a++)
                    {
                        query = "insert into Artista_Genero(id_Artista,id_Genero) " +
                        "values(" + id_Artista + "," + generosS[a].ToString() + ")";
                        Utilidades.ejecutar(query);
                    }
                }



                Response.Write("<script>alert('Artista ha sido creado')</script>");
            }
        }
    }
}