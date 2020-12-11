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
    public partial class Album : System.Web.UI.Page
    {
        static Boolean bandera = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            crear_botones();
        }

        protected void btnInformacion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Modificar_Artista.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Crear_Album.aspx");
        }

        private void crear_botones()
        {
            string query = "select * from Album WHERE id_Artista =" + 8 + "AND id_Estado != 2";
            DataSet DS = Utilidades.ejecutar(query);

            if (DS.Tables[0].Rows.Count != 0)
            {
                EventHandler evh = new EventHandler(btn_Click);
                int conta = 0;
                for (int a = 0; a < DS.Tables[0].Rows.Count; a++)
                {
                    conta++;
                    if (conta == 7)
                    {
                        PanelPrincipal.Controls.Add(new LiteralControl("<br />"));
                        PanelPrincipal.Controls.Add(new LiteralControl("<br />"));
                        conta = 1;
                    }
                    Button btn = new Button();

                    btn.Text = DS.Tables[0].Rows[a]["Titulo"].ToString();
                    btn.ID = (a + 1).ToString();
                    btn.ControlStyle.CssClass = "btn btn-primary";
                    btn.Click += evh;
                    PanelPrincipal.Controls.Add(btn);
                    PanelPrincipal.Controls.Add(new LiteralControl("&nbsp"));
                    PanelPrincipal.Controls.Add(new LiteralControl("&nbsp"));
                }

                //ImageClickEventHandler evh = new ImageClickEventHandler(btn_Click);
                //for (int a = 0; a < DS.Tables[0].Rows.Count; a++)
                //{
                //    ImageButton btn = new ImageButton();
                //    btn.Height = 200;
                //    btn.Width = 200;
                //    btn.ImageUrl = DS.Tables[0].Rows[a]["Portada"].ToString();
                //    btn.ID = (a + 1).ToString();
                //    btn.Click += evh;

                //    Panel pn = new Panel();




                //    PanelPrincipal.Controls.Add(pn);
                //    PanelPrincipal.Controls.Add(new LiteralControl("&nbsp"));
                //    PanelPrincipal.Controls.Add(new LiteralControl("&nbsp"));
                //}
            }
        }

        void btn_Click(object sender, EventArgs e)
        {

            Button b = sender as Button;
            if (b != null)
            {
                // Save the last pressed ID for later
                PressedButton.Value = b.ID;
            }
            if (PressedButton.Value != null)
            {
                b = (Button)(PanelPrincipal.FindControl((string)PressedButton.Value));
                if (b != null)
                {
                    //Response.Write("<script>alert('Es el Boton " + b.Text +"')</script>");
                    //generosS.Add(b.ID);
                    //txtFacebook.Text = generosS[0].ToString();
                    //Response.Write("<script>alert('Funciona')</script>");
                    //b.Enabled = false;
                    string query = "SELECT id_Album FROM Album WHERE Titulo = '" + b.Text + "'";
                    DataSet DS = Utilidades.ejecutar(query);

                    if (DS.Tables[0].Rows.Count != 0)
                    {
                        Session["id_Album"] = DS.Tables[0].Rows[0]["id_Album"].ToString();
                    }

                    Response.Redirect("Modificar_Album.aspx");
                }
            }

            //ImageButton btnClic = (ImageButton)sender;
            //Response.Write("<script>alert('Es el Boton " + btnClic.ID + "')</script>");
        }

    }
}