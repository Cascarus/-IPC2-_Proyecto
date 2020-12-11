<%@ Page Title="" Language="C#" MasterPageFile="~/App/Login_Master_Page.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_IPC2__Proyecto.App.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="login100-pic js-tilt" data-tilt>
        <img src="images/img-01.png" alt="IMG">
    </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form class="login100-form validate-form" runat="server">
        <span class="login100-form-title">
        Member Login
    </span>

					<div class="wrap-input100 validate-input" data-validate = "Se necesita un usuario registrado">

					    <asp:TextBox ID="txtUsuario" runat="server" CssClass="input100" placeholder="Usuario"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </span>

					</div>

					<div class="wrap-input100 validate-input" data-validate = "La contraseña es requerida">
                        <asp:TextBox ID="txtContrase" runat="server" CssClass="input100" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                        <span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						
					    <asp:Button ID="btLogin" runat="server" Text="Login" CssClass="btn login100-form-btn" OnClick="btLogin_Click"/>

					</div>

					<div class="text-center p-t-12">
						<a class="txt2" href="Recuperacion.aspx">
							¿Olvidaste tu Contraseña?
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="Crear_Usuario.aspx">
							Registrate
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
    </form>
    
</asp:Content>
