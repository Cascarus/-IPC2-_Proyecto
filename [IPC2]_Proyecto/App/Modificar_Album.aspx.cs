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
    public partial class Modificar_Album : System.Web.UI.Page
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

                Cargar_datos();
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

        private void Cargar_datos()
        {
            string query = "select  * from Album where  id_Album ='" + Session["id_Album"].ToString() + "' AND id_Estado = 1";
            //string query = "select  * from Album where  id_Album ='" + 1 + "' AND id_Estado = 1";

            DataSet DS = Utilidades.ejecutar(query);

            if (DS.Tables[0].Rows.Count != 0)
            {

                string Titulo = DS.Tables[0].Rows[0]["Titulo"].ToString();
                string[] Fecha1 = DS.Tables[0].Rows[0]["Fecha_Creacion"].ToString().Split(' ');
                string fecha = Fecha1[0];
                string[] Fecha2 = fecha.Split('/');
                string descripcion = DS.Tables[0].Rows[0]["Reseña"].ToString();
                Portada = DS.Tables[0].Rows[0]["Portada"].ToString();


                txtNombre.Text = Titulo;
                txtDescripcion.Text = descripcion;
                imgAlbum.ImageUrl = Portada;
                buscar(Fecha2[0], Fecha2[1], Fecha2[2]);
            }
            else
            {
                Response.Write("<script>alert('No se ha encontrado al usuario:" + Session["id_Artista"].ToString() + "')</script>");
            }
        }

        private void buscar(string dia, string mes, string anio)
        {
            string m = "";
            string d = "";

            switch (dia)
            {
                case "01":
                    d = "1";
                    break;
                case "02":
                    d = "2";
                    break;
                case "03":
                    d = "3";
                    break;
                case "04":
                    d = "4";
                    break;
                case "05":
                    d = "5";
                    break;
                case "06":
                    d = "6";
                    break;
                case "07":
                    d = "7";
                    break;
                case "08":
                    d = "8";
                    break;
                case "09":
                    d = "9";
                    break;
                default:
                    d = dia;
                    break;
            }


            switch (mes)
            {
                case "01":
                    m = "1";
                    break;
                case "02":
                    m = "2";
                    break;
                case "03":
                    m = "3";
                    break;
                case "04":
                    m = "4";
                    break;
                case "05":
                    m = "5";
                    break;
                case "06":
                    m = "6";
                    break;
                case "07":
                    m = "7";
                    break;
                case "08":
                    m = "8";
                    break;
                case "09":
                    m = "9";
                    break;
                default:
                    m = mes;
                    break;
            }


            for (int a = 0; a < dplDia.Items.Count; a++)
            {
                if (dplDia.Items[a].ToString() == d)
                {
                    dplDia.SelectedIndex = a;
                    break;
                }
            }

            for (int b = 0; b < dplMes.Items.Count; b++)
            {
                if (dplMes.Items[b].ToString() == m)
                {
                    dplMes.SelectedIndex = b;
                    break;
                }
            }

            for (int c = 0; c < dplAño.Items.Count; c++)
            {
                if (dplAño.Items[c].ToString() == anio)
                {
                    dplAño.SelectedIndex = c;
                    break;
                }
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
            bandera = false;
            Response.Redirect("Album.aspx");
            
        }

        protected void btSubir_Click(object sender, EventArgs e)
        {
            if (fuImagenes.HasFile)
            {
                Portada = "~/App/images/Artista/" + fuImagenes.FileName;
                fuImagenes.SaveAs(Server.MapPath(Portada));
                imgAlbum.ImageUrl = Portada;
            }
        }

        protected void btAceptar_Click(object sender, EventArgs e)
        {
            verificar_Error();
            if (ErrorGeneral == false)
            {
                string id = Session["id_Album"].ToString();
                string titulo = txtNombre.Text;
                string fecha = dplDia.Text + "/" + dplMes.Text + "/"+ dplAño.Text;
                string reseña = txtDescripcion.Text;

                string query = "  UPDATE Album  SET Titulo = '"+ titulo +"', Fecha_Creacion = '" + fecha +"', Reseña = '" + 
                    reseña + "' WHERE id_Album =" + id;

                Utilidades.ejecutar(query);
                Response.Write("<script>alert('Album ha sido modificado')</script>");
                Response.Redirect("Album.aspx");
            }
        }
    }
}