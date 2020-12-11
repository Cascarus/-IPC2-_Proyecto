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
    public partial class Modificar_Novedad : System.Web.UI.Page
    {

        Boolean ElbNombre, ElbDescripcion, ErrorGeneral;
        static String Portada = "~/App/Images/Defecto.png";
        static Boolean bandera = false;
        static string id_novedad;

        private void inicializar()
        {
            ElbNombre = false;
            ElbDescripcion = false;
            ErrorGeneral = false;

            if (bandera == false)
            {
                string query = "SELECT id_Novedad FROM Novedades WHERE id_Estado = 1";
                DataSet DS = Utilidades.ejecutar(query);

                if (DS.Tables[0].Rows.Count != 0)
                {
                    for (int a = 0; a < DS.Tables[0].Rows.Count; a++)
                    {
                        dplID.Items.Add(DS.Tables[0].Rows[a]["id_Novedad"].ToString());
                    }
                }

               // bandera = true;

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

        private void limpiar()
        {
            txtDescripcion.Text = "";
            txtNombre.Text = "";
            imgPortada.ImageUrl = "~/App/Images/Defecto.png";

            dplID.SelectedIndex = 0;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            inicializar();
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

        protected void btAceptar_Click(object sender, EventArgs e)
        {
            verificar_Error();
            if (ErrorGeneral == false)
            {
                string titulo = txtNombre.Text;
                string descripcion = txtDescripcion.Text;

                string query = "UPDATE Novedades SET Titulo = '" + titulo + "' , Contenido = '" + descripcion + 
                    "' , Foto = '" + Portada + "' WHERE id_Novedad =" + id_novedad;

                DataSet DS = Utilidades.ejecutar(query);
                Response.Write("<script>alert('Novedad ha modificada!')</script>");

                limpiar();
            }

        }

        protected void btCancelar_Click(object sender, EventArgs e)
        {
            bandera = false;
            Response.Redirect("G_Novedades.aspx");
        }

        protected void btBuscar_Click(object sender, EventArgs e)
        {
            string id = dplID.Text;
            string query = "SELECT * FROM Novedades WHERE id_Novedad = " + id;
            DataSet DS = Utilidades.ejecutar(query);

            if (DS.Tables[0].Rows.Count != 0)
            {
                string titulo = DS.Tables[0].Rows[0]["Titulo"].ToString();
                string contenido = DS.Tables[0].Rows[0]["Contenido"].ToString();
                Portada = DS.Tables[0].Rows[0]["Foto"].ToString();

                txtNombre.Text = titulo;
                txtDescripcion.Text = contenido;
                imgPortada.ImageUrl = Portada;
                id_novedad = id;
            }
        }
    }
}