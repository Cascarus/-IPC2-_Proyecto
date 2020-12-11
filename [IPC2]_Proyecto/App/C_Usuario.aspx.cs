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
    public partial class C_Usuario : System.Web.UI.Page
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
            dplAño.SelectedIndex = 1;
            dplMes.SelectedIndex = 1;
            dplDia.SelectedIndex = 1;
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
                Contraseña = txtContra.Text;
                string query = "insert into Usuario(Nombre_Usuario,Contraseña,Tipo_Usuario, Nombre, Apellido, Fecha_Nacimiento,Correo, id_Estado) " +
                    "Values('" + txtUsuario.Text + "','" + Contraseña + "'," + 1 + ",'" + txtNombre.Text + "','" + txtApellidos.Text + "','" + dplDia.Text + "/" + dplMes.Text + "/" + dplAño.Text + "','" + txtCorreo.Text + "', 1)";

                Utilidades.insertar(query);

                Response.Write("<script>alert('Usuario ha sido creado')</script>");
                limpiar_todo();
            }
        }

        protected void btCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gestion_Usuario.aspx");
        }
        

    }
}