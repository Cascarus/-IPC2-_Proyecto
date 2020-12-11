<%@ Page Title="" Language="C#" MasterPageFile="~/App/Login_Master_Page.Master" AutoEventWireup="true" CodeBehind="Recuperacion.aspx.cs" Inherits="_IPC2__Proyecto.App.Recuperacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="login100-pic js-tilt" data-tilt>
        <img src="images/Interrogacion.png" alt="IMG">
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="login100-form validate-form" runat="server">

        <span class="login100-form-title">
            Recuperar Contraseña<br />
        <br />
&nbsp;<a class="txt2">Tiene que ingresar su fecha de nacimiento y su correo para recuperar su contraseña
            </a>
        </span>
        

        <div class="wrap-input100">

            <table class="w-100">
                <tr>
                    <td class="auto-style3">
                        <a class="txt2">
                            Fecha de nacimineto (dd/mm/aaaa)
                        </a> 
                    </td>
                </tr>
                <tr>
                    <td>

                        <table class="w-100">
                            <tr>
                                <td class="auto-style2">
                                    <asp:DropDownList ID="dplDia" runat="server" Width="83px" CssClass="form-control" placeholder="Dia">
                                    </asp:DropDownList>

                                </td>
                                <td>
                                    <asp:DropDownList ID="dplMes" runat="server" Width="83px" CssClass="form-control" placeholder="Mes">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="dplAño" runat="server" Width="83px" CssClass="form-control" placeholder="Año">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
            </table>

        </div>

        <div class="wrap-input100 validate-input" data-validate = "No puedes dejar este campo en blanco">         
            <asp:TextBox ID="txtCorreo" runat="server" CssClass="input100" placeholder="Correo"></asp:TextBox>
            <span class="symbol-input100">
                <i class="fa fa-envelope"></i>
            </span>        
        </div>

        <div class="container-login100-form-btn">
            <asp:Button ID="btConfirmar_Click" runat="server" Text="Confirmar" CssClass="btn login100-form-btn" OnClick="btConfirmar_Click_Click"/>
		</div>

        <div class="text-center">
            <br />
            <a class="txt3" href="Login.aspx">
                <i class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
                Regresar
            </a>
        </div>
        					
    </form>
</asp:Content>