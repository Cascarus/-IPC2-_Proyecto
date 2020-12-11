using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Mi_Libreria;
using System.Collections;

namespace _IPC2__Proyecto.App
{
    public partial class Modificar_Artista : System.Web.UI.Page
    {
        Boolean ElbNombre, ElbDescripcion, ElbGenero, ErrorGeneral;
        static ArrayList generosS = new ArrayList();
        static String Portada = "~/App/Images/Defecto.png";
        static Boolean bandera = false;

        private void inicializar()
        {
            ElbNombre = false;
            ElbDescripcion = false;
            ElbGenero = false;
            ErrorGeneral = false;


            if (bandera == false)
            {
                for (int a = 1985; a < 2018; a++)
                {
                    dplAño.Items.Add(a.ToString());
                }

                cargar_paises();
                Cargar_datos();

                bandera = true;
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
            string query = "select * from Artista_Genero WHERE id_Artista = " + Session["id_Artista"].ToString();
            DataSet DS = Utilidades.ejecutar(query);

            if (DS.Tables[0].Rows.Count != 0)
            {
                //EventHandler evh = new EventHandler(btn_Click);
                int conta = 0;
                int filas = DS.Tables[0].Rows.Count;
                ArrayList fil = new ArrayList();

                for (int a = 0; a< filas; a++)
                {
                    fil.Add(DS.Tables[0].Rows[a]["id_Genero"]);
                }


                for (int a = 0; a < filas; a++)
                {
                    string query2 = "select Genero from Genero WHERE id_Genero = " + fil[a].ToString();
                    DataSet DS2 = Utilidades.ejecutar(query2);
                    conta++;
                    if (conta == 7)
                    {
                        PanelBotones.Controls.Add(new LiteralControl("<br />"));
                        PanelBotones.Controls.Add(new LiteralControl("<br />"));
                        conta = 1;
                    }
                    Button btn = new Button();

                    btn.Text = DS2.Tables[0].Rows[0]["Genero"].ToString();
                    btn.ID = (a + 1).ToString();
                    btn.ControlStyle.CssClass = "btn btn-primary";
                    //btn.Click += evh;
                    PanelBotones.Controls.Add(btn);
                    PanelBotones.Controls.Add(new LiteralControl("&nbsp"));
                    PanelBotones.Controls.Add(new LiteralControl("&nbsp"));
                }
                fil.Clear();
            }
        }

        private void Cargar_datos()
        {
            string query = "select  * from Artista where  id_Artista ='" + Session["id_Artista"].ToString() + "' AND id_Estado = 1";

            DataSet DS = Utilidades.ejecutar(query);

            if (DS.Tables[0].Rows.Count != 0)
            {

                string nombre = DS.Tables[0].Rows[0]["Nombre_Artista"].ToString();
                string año_formacion = DS.Tables[0].Rows[0]["Año"].ToString();
                int pais = Convert.ToInt32(DS.Tables[0].Rows[0]["id_Pais"]);
                string descripcion = DS.Tables[0].Rows[0]["Descripcion"].ToString();
                Portada = DS.Tables[0].Rows[0]["Foto"].ToString();
                string facebook = DS.Tables[0].Rows[0]["Facebook"].ToString();
                string twitter = DS.Tables[0].Rows[0]["Twitter"].ToString();
                string youtube = DS.Tables[0].Rows[0]["Youtube"].ToString();
                string pagina = DS.Tables[0].Rows[0]["Pagina_Web"].ToString();

                txtNombre.Text = nombre;
                txtDescripcion.Text = descripcion;
                txtFacebook.Text = facebook;
                txtTwitter.Text = twitter;
                txtYoutube.Text = youtube;
                txtPag.Text = pagina;
                imgPerfil.ImageUrl = Portada;

                Crear_botones();
                buscar(año_formacion, pais);
            }
            else
            {
                Response.Write("<script>alert('No se ha encontrado al usuario:" + Session["id_Artista"].ToString() + "')</script>");
            }
        }

        private void buscar(string año, int pais)
        {
            for(int a = 0; a < dplAño.Items.Count; a++)
            {
                if (dplAño.Items[a].ToString() == año)
                {
                    dplAño.SelectedIndex = a;
                    break;
                }
            }

            for (int b = 0; b < dplPais.Items.Count; b++)
            {
                if (b == pais-1)
                {
                    dplPais.SelectedIndex = b;
                    break;
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
            
        }

        protected void btCancelar_Click(object sender, EventArgs e)
        {
            bandera = false;
            Response.Redirect("Pag_Principal_Usuario.aspx");
            
        }

        protected void btnAlbumes_Click(object sender, EventArgs e)
        {
            bandera = false;
            Response.Redirect("Album.aspx");
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

                string query = "UPDATE Artista SET Nombre_Artista = '" + nombre +"', Año = " + anio + ", id_Pais = " + pais + ", Descripcion = '" + descrip + "', " +
                    "Foto = '" + Portada + "', Facebook = '" + facebook +"', Twitter = '" + twitter + "', Youtube = '" + youtube + "', Pagina_Web = '" + pagina + "'  WHERE id_Artista = " + Session["id_Artista"].ToString();

                Utilidades.ejecutar(query);
                Response.Write("<script>alert('Artista ha modificado!')</script>");

            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            bandera = false;
            string query = "UPDATE Artista SET id_Estado = 2 WHERE id_Artista = " + Session["id_Artista"].ToString();
            Utilidades.ejecutar(query);
            Response.Write("<script>alert('Artista ha eliminado!')</script>");
            Response.Redirect("Pag_Principal_Usuario.aspx");
        }
    }
}