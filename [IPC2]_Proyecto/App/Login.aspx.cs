using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using _IPC2__Proyecto.App.App_Code;
using Mi_Libreria;

namespace _IPC2__Proyecto.App
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection myConnection;
        SqlCommand query = new SqlCommand();
        DataTable dt;
        SqlDataAdapter da = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void Variables_sesion()
        {
            string query = "Select id_Usuario from Usuario where Nombre_Usuario = '" + txtUsuario.Text + "'";
            DataSet DS = Utilidades.ejecutar(query);
            Session["id_Usuario"] = DS.Tables[0].Rows[0]["id_Usuario"].ToString();
            Session["Usuario"] = txtUsuario.Text;
        }

        protected void btLogin_Click(object sender, EventArgs e)
        {
            try
            {
                myConnection = Conexion.enviarCon();
                myConnection.Open();
                query.CommandText = "select * from Usuario where Nombre_Usuario = '" + txtUsuario.Text + "' and Contraseña = '" + txtContrase.Text + "'";
                query.Connection = myConnection;
                da.SelectCommand = query;
                dt = new DataTable();
                da.Fill(dt);
                myConnection.Close();

                if (dt.Rows.Count > 0)
                {
                    myConnection.Open();
                    string tUsuario = "Select Tipo_Usuario from Usuario where Nombre_Usuario = '" + txtUsuario.Text + "' and Contraseña = '" + txtContrase.Text + "'";
                    SqlCommand tUsuariocom = new SqlCommand(tUsuario, myConnection);
                    string tipo_usuario = "";
                    tipo_usuario = tUsuariocom.ExecuteScalar().ToString();
                    myConnection.Close();

                    if (tipo_usuario == "1")
                    {
                        //Response.Write("<script>alert('Es un Usuario')</script>");
                        Variables_sesion();
                        Response.Redirect("Pag_Principal_Usuario.aspx");
                    }
                    else if (tipo_usuario == "0")
                    {
                        Response.Redirect("Pag_Principal_Admin.aspx");
                    }

                }
                else
                {
                    Response.Write("<script>alert('Please enter valid Username and Password')</script>");
                }

            }
            catch (SqlException er)
            {
                Response.Write("<script>alert(" + er.ToString() + ")</script>");
            }
        }
    }
}