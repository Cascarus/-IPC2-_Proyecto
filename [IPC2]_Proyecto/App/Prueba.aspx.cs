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
    public partial class Prueba : System.Web.UI.Page
    {
        string Nombre;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btBuscar_Click(object sender, EventArgs e)
        {
            Nombre = txtBusqueda.Text;

            if (Nombre.Equals("") || Nombre.Equals(" ") || Nombre.Equals(null))
            {
                txtBusqueda.Text = "";
            }
            else
            {
                string query = " SELECT * FROM Artista WHERE Nombre_Artista = '" + Nombre + "'";

                DataSet DS = Utilidades.ejecutar(query);

                if (DS.Tables[0].Rows.Count != 0)
                {

                    string nombre = DS.Tables[0].Rows[0]["Nombre_Artista"].ToString();
                    string imagen = DS.Tables[0].Rows[0]["Foto"].ToString();
                    //ID = DS.Tables[0].Rows[0]["id_Nombre"].ToString();

                    txtNombre.Text = nombre;
                    Image1.ImageUrl = imagen;
                    txtBusqueda.Text = "";

                }
                else
                {
                    Response.Write("<script>alert('No se ha encontrado al usuario:" + Nombre + "')</script>");
                }
            }
        }
    }
}