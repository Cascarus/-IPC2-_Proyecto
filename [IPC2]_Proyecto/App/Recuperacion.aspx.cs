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
    public partial class Recuperacion : System.Web.UI.Page
    {
        Boolean ElbCorreo, ErrorGeneral;
        string correo, fecha;

        private void inicializar()
        {
            ElbCorreo = false;
            ErrorGeneral = false;
            correo = "";
            fecha = "";

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
            if (txtCorreo.Text == "")
            {
                ElbCorreo = true;

            }
            else
            {
                ElbCorreo = false;

            }
            if (ElbCorreo == true)
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
            txtCorreo.Text = "";
            dplAño.SelectedIndex = 0;
            dplMes.SelectedIndex = 0;
            dplDia.SelectedIndex = 0;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            inicializar();
        }

        protected void btConfirmar_Click_Click(object sender, EventArgs e)
        {
            verificar_Error();
            if (ErrorGeneral == false)
            {
                correo = txtCorreo.Text;
                fecha = dplDia.Text + "/" + dplMes.Text + "/" + dplAño.Text;
                string query = "select  Contraseña from Usuario where  Correo ='" + correo + "' and Fecha_Nacimiento = '" + fecha + "'";

                DataSet DS = Utilidades.ejecutar(query);

                if (DS.Tables[0].Rows.Count != 0)
                {
                    string contra = DS.Tables[0].Rows[0]["Contraseña"].ToString();
                    Response.Write("<script>alert('Su contraseña es: " + contra + "')</script>");
                    limpiar_todo();

                }
                else
                {
                    Response.Write("<script>alert('A ingresado un dato incorrecto')</script>");
                    limpiar_todo();
                }
            }
        }
    }
}