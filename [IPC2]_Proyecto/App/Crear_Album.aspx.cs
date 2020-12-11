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
    public partial class Crear_Album : System.Web.UI.Page
    {
        Boolean ElbNombre, ElbDescripcion, ErrorGeneral;
        static Boolean bandera;
        static String Portada = "~/App/Images/Defecto.png";

        private void inicializar()
        {
            ElbNombre = false;
            ElbDescripcion = false;
            ErrorGeneral = false;
            if (bandera == false)
            {
                for (int a = 1985; a < 2018; a++)
                {
                    dplAño.Items.Add(a.ToString());
                }

                for (int b = 1; b < 32; b++)
                {
                    dplDia.Items.Add(b.ToString());
                }

                for (int c = 1; c < 13; c++)
                {
                    dplMes.Items.Add(c.ToString());
                }
                bandera = true;
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

            if (ElbDescripcion == true | ElbNombre == true)
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

        protected void btCancion_Click(object sender, EventArgs e)
        {

           // Response.Write("<script>alert('" + System.DateTime.Now.ToString("dd/MM/yyyy") + "')</script>");
        }

        protected void btCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Album.aspx");
        }

        protected void btSubir_Click(object sender, EventArgs e)
        {
            if (fuImagenes.HasFile)
            {
                Portada = "~/App/images/Album/" + fuImagenes.FileName;
                fuImagenes.SaveAs(Server.MapPath(Portada));
                imgAlbum.ImageUrl = Portada;
            }
        }

        protected void btAceptar_Click(object sender, EventArgs e)
        {
            verificar_Error();
            if (ErrorGeneral == false)
            {
                string id = Session["id_Artista"].ToString();
                string titulo = txtNombre.Text;
                string fecha = System.DateTime.Now.ToString("dd/MM/yyyy");
                string reseña = txtDescripcion.Text;

                string query = "INSERT INTO Album(id_Artista, Titulo, Fecha_Creacion, Reseña, Portada, id_Estado) " +
                    "VALUES(" + id + ", '"+ titulo + "', '" + fecha +"', '" + reseña + "', '"+ Portada + "', 1)";

                Utilidades.ejecutar(query);
                Response.Write("<script>alert('Album ha sido creado')</script>");
                Response.Redirect("Album.aspx");
            }
        }
    }
}