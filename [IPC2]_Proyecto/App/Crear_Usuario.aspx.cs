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
    public partial class Crear_Usuario : System.Web.UI.Page
    {
        Boolean ElbNombre, ElbApellido, ElbCorreo, ElbUsuario, ElbContra, ElbConContra, ErrorGeneral;

        string Contraseña;

        private void inicializar()
        {
            ElbNombre = false;
            ElbApellido = false;
            ElbCorreo = false;
            ElbUsuario = false;
            ElbContra = false;
            ElbConContra = false;
            ErrorGeneral = false;
            Contraseña = "";

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
        }

        private void verificar_Error()
        {

            if (txtNombre.Text == "")
            {
                ElbNombre = true;

            }
            else
            {
                ElbNombre = false;
            }

            if (txtApellido.Text == "")
            {
                ElbApellido = true;

            }
            else
            {
                ElbApellido = false;

            }
            if (txtCorreo.Text == "")
            {
                ElbCorreo = true;

            }
            else
            {
                ElbCorreo = false;

            }
            if (txtUsuario.Text == "")
            {
                ElbUsuario = true;

            }
            else
            {
                ElbUsuario = false;

            }
            if (txtContraseña.Text == "")
            {
                ElbContra = true;

            }
            else
            {
                ElbContra = false;

            }
            if (txtConContra.Text == "")
            {
                ElbConContra = true;

            }
            else
            {
                ElbConContra = false;
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
            txtApellido.Text = "";
            txtCorreo.Text = "";
            txtUsuario.Text = "";
            txtConContra.Text = "";
            txtContraseña.Text = "";
            dplAño.SelectedIndex = 1;
            dplMes.SelectedIndex = 1;
            dplDia.SelectedIndex = 1;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            inicializar();
        }

        protected void btConfirmar_Click(object sender, EventArgs e)
        {
            verificar_Error();
            if (ErrorGeneral == false)
            {
                if (txtContraseña.Text == txtConContra.Text)
                {
                    Contraseña = txtConContra.Text;
                    string query = "insert into Usuario(Nombre_Usuario,Contraseña,Tipo_Usuario, Nombre, Apellido, Fecha_Nacimiento,Correo) " +
                        "Values('" + txtUsuario.Text + "','" + Contraseña + "'," + 1 + ",'" + txtNombre.Text + "','" + txtApellido.Text + "','" + dplDia.Text + "/" + dplMes.Text + "/" + dplAño.Text + "','" + txtCorreo.Text + "')";

                    Utilidades.insertar(query);

                    Response.Write("<script>alert('Usuario ha sido creado')</script>");
                    limpiar_todo();

                }
                else
                {
                    Response.Write("<script>alert('Las contraseñas no coinciden')</script>");
                }
            }

        }
    }
}