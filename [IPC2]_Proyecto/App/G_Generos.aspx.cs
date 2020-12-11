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

namespace _IPC2__Proyecto.App
{
    public partial class G_Generos : System.Web.UI.Page
    {
        Boolean ElbGenero, ElbImagen, ErrorGeneral;
        static String Portada;

        private void verificar_Error()
        {

            if (txtNombre.Text == "")
            {
                ElbGenero = true;
                lbEnombre.Visible = true;

            }
            else
            {
                ElbGenero = false;
                lbEnombre.Visible = false;
            }

            if (imgPerfil.ImageUrl == "~/App/images/Musica.png")
            {
                ElbImagen = true;
                lbEimagen.Visible = true;

            }
            else
            {
                ElbImagen = false;
                lbEimagen.Visible = false;
            }

            if (ElbGenero == true | ElbImagen == true)
            {
                ErrorGeneral = true;
            }
            else
            {
                ErrorGeneral = false;
            }

        }

        private void limpiar_todo()
        {
            txtNombre.Text = "";
            imgPerfil.ImageUrl = "~/App/images/Musica.png";
            Portada = "~/App/images/Musica.png";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            ElbGenero = false;
            ElbImagen = false;
        }

        protected void btAceptar_Click(object sender, EventArgs e)
        {
            verificar_Error();
            if (ErrorGeneral == false)
            {
                string Genero = txtNombre.Text;
                string query = "insert into Genero(Genero,Portada) " +
                    "Values('" + Genero + "','" + Portada + "')";

                Utilidades.insertar(query);

                //Response.Write("<script>alert('Usuario ha sido creado')</script>");
                limpiar_todo();
            }

        }

        protected void btCancelar_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Pag_Principal_Admin.aspx");
        }

        protected void btSubir_Click(object sender, EventArgs e)
        {
            if (fuImagenes.HasFile)
            {
                Portada = "~/App/images/Genero/" + fuImagenes.FileName;
                fuImagenes.SaveAs(Server.MapPath(Portada));
                imgPerfil.ImageUrl = Portada;
            }
        }
    }
}