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
    public partial class Modificar_Usuario : System.Web.UI.Page
    {
        Boolean ElbNombre, ElbApellido, ElbCorreo, ElbUsuario, ElbContra, ElbConContra, ErrorGeneral;
        static Boolean bandera = false;
        string Nickname;
        static string IDS;

        private void inicializar()
        {
            ElbNombre = false;
            ElbApellido = false;
            ElbCorreo = false;
            ElbUsuario = false;
            ElbContra = false;
            ElbConContra = false;
            ErrorGeneral = false;
            Nickname = "";

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
                ElbNombre = true;
                lbENombres.Visible = true;

            }
            else
            {
                ElbNombre = false;
                lbENombres.Visible = false;
            }

            if (txtApellidos.Text == "")
            {
                ElbApellido = true;
                lbEApellidos.Visible = true;

            }
            else
            {
                ElbApellido = false;
                lbEApellidos.Visible = false;
            }
            if (txtCorreo.Text == "")
            {
                ElbCorreo = true;
                lbECorreo.Visible = true;
            }
            else
            {
                ElbCorreo = false;
                lbECorreo.Visible = false;

            }
            if (txtUsuario.Text == "")
            {
                ElbUsuario = true;
                lbEUsuario.Visible = true;
            }
            else
            {
                ElbUsuario = false;
                lbEUsuario.Visible = false;
            }
            if (txtContra.Text == "")
            {
                ElbContra = true;
                lbEContrase.Visible = true;
            }
            else
            {
                ElbContra = false;
                lbEContrase.Visible = false;
            }

            if (ElbApellido == true | ElbConContra == true | ElbContra == true | ElbCorreo == true
                | ElbNombre == true | ElbUsuario == true)
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
            txtApellidos.Text = "";
            txtCorreo.Text = "";
            txtUsuario.Text = "";
            txtContra.Text = "";
            dplAño.SelectedIndex = 0;
            dplMes.SelectedIndex = 0;
            dplDia.SelectedIndex = 0;

            txtNombre.Enabled = false;
            txtApellidos.Enabled = false;
            txtContra.Enabled = false;
            txtCorreo.Enabled = false;
            txtUsuario.Enabled = false;
            dplDia.Enabled = false;
            dplMes.Enabled = false;
            dplAño.Enabled = false;
        }

        private void buscar(string dia, string mes, string anio)
        {
            string m = "";

            switch (mes) {
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


            for (int a=0; a<dplDia.Items.Count; a++)
            {
                if(dplDia.Items[a].ToString() == dia)
                {
                    dplDia.SelectedIndex = a;
                    break;
                }
            }

            for (int b=0; b<dplMes.Items.Count; b++)
            {
                if (dplMes.Items[b].ToString() == m)
                {
                    dplMes.SelectedIndex = b;
                    break;
                }
            }

            for (int c=0; c<dplAño.Items.Count; c++)
            {
                if (dplAño.Items[c].ToString() == anio)
                {
                    dplAño.SelectedIndex = c;
                    break;
                }
            }
        }

        private void habilitar()
        {
            txtNombre.Enabled = true;
            txtApellidos.Enabled = true;
            txtCorreo.Enabled = true;
            txtUsuario.Enabled = true;
            txtContra.Enabled = true;
            dplDia.Enabled = true;
            dplMes.Enabled = true;
            dplAño.Enabled = true;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            inicializar();
        }

        protected void btBuscar_Click(object sender, EventArgs e)
        {
            Nickname = txtBusqueda.Text;

            if (Nickname.Equals("") || Nickname.Equals(" ") || Nickname.Equals(null))
            {
                txtBusqueda.Text = "";
                limpiar_todo();
            }
            else
            {
                string query = "select  * from Usuario where  Nombre_Usuario ='" + Nickname + "' AND id_Estado = 1";

                DataSet DS = Utilidades.ejecutar(query);

                if (DS.Tables[0].Rows.Count != 0)
                {

                    string nombre = DS.Tables[0].Rows[0]["Nombre"].ToString();
                    string apellidos = DS.Tables[0].Rows[0]["Apellido"].ToString();
                    string[] Fecha1 = DS.Tables[0].Rows[0]["Fecha_Nacimiento"].ToString().Split(' ');
                    string fecha = Fecha1[0];
                    string[] Fecha2 = fecha.Split('/');
                    string Correo = DS.Tables[0].Rows[0]["Correo"].ToString();
                    string contra = DS.Tables[0].Rows[0]["Contraseña"].ToString();
                    IDS = DS.Tables[0].Rows[0]["id_Usuario"].ToString();

                    buscar(Fecha2[0], Fecha2[1], Fecha2[2]);
                    txtNombre.Text = nombre;
                    txtApellidos.Text = apellidos;
                    txtCorreo.Text = Correo;
                    txtUsuario.Text = Nickname;
                    txtContra.Text = contra;
                    txtBusqueda.Text = "";

                    habilitar();

                }
                else
                {
                    Response.Write("<script>alert('No se ha encontrado al usuario:" + Nickname + "')</script>");
                }
            }
        }

        protected void btModificar_Click(object sender, EventArgs e)
        {
            verificar_Error();
            if (ErrorGeneral == false)
            {
                string nombre = txtNombre.Text;
                string apellido = txtApellidos.Text;
                string fecha = dplDia.Text + "/" + dplMes.Text + "/" + dplAño.Text;
                string correo = txtCorreo.Text;
                string usuario = txtUsuario.Text;
                string contra = txtContra.Text;

                string query = "Update Usuario SET Nombre = '" + nombre +"' , Apellido = '"+ apellido +"', Fecha_Nacimiento = '" + fecha + 
                    "', Correo ='"+ correo + "', Nombre_Usuario = '" + usuario + "', Contraseña = '" + contra + "' Where id_Usuario =" + ID + ";";

                Utilidades.insertar(query);

                Response.Write("<script>alert('Usuario ha modificado!')</script>");
                limpiar_todo();
            }
        }

        protected void btCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gestion_Usuario.aspx");
            bandera = false;
        }
    }
}