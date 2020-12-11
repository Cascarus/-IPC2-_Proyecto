using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mi_Libreria;
using System.Data;

namespace _IPC2__Proyecto.App
{
    public partial class Crear_Novedades : System.Web.UI.Page
    {
        Boolean ElbNombre, ElbDescripcion, ErrorGeneral;
        static String Portada = "~/App/Images/Defecto.png";

        private void inicializar()
        {
            ElbNombre = false;
            ElbDescripcion = false;
            ErrorGeneral = false;
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

        private void limpiar()
        {
            txtDescripcion.Text = "";
            txtNombre.Text = "";
            imgPortada.ImageUrl = "~/App/Images/Defecto.png";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            inicializar();
        }

        protected void btAceptar_Click(object sender, EventArgs e)
        {
            verificar_Error();
            if (ErrorGeneral == false)
            {
                string titulo = txtNombre.Text;
                string cuerpo = txtDescripcion.Text;

                string query = "INSERT INTO Novedades(Titulo, Contenido, Foto, id_Estado)" +
                    "VALUES('" + titulo + "', '" + cuerpo + "', '" + Portada + "', 1)";

                DataSet DS = Utilidades.ejecutar(query);
                Response.Write("<script>alert('Novedad ha sido creado')</script>");
                limpiar();
            }
        }

        protected void btSubir_Click(object sender, EventArgs e)
        {

            if (fuImagenes.HasFile)
            {
                Portada = "~/App/images/Novedades/" + fuImagenes.FileName;
                fuImagenes.SaveAs(Server.MapPath(Portada));
                imgPortada.ImageUrl = Portada;
            }
        }

        protected void btCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("G_Novedades.aspx");
        }
    }
}