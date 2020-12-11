<%@ Page Title="" Language="C#" MasterPageFile="~/App/Login_Master_Page.Master" AutoEventWireup="true" CodeBehind="Crear_Usuario.aspx.cs" Inherits="_IPC2__Proyecto.App.Crear_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 99px;
        }
        .auto-style3 {
            font-size: small;
        }
        .auto-style4 {
            display: block;
            width: 100%;
            font-size: 1rem;
            line-height: 1.25;
            color: #495057;
            background-color: #fff;
            background-image: none;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            margin-left: 0;
        }
    </style>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="login100-pic js-tilt" data-tilt>
        <img src="images/Nuevo_Usuario.png" alt="IMG">
    </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form class="login100-form validate-form" runat="server">
        <span class="login100-form-title">
            Crear Usuario
        </span>

					<div class="wrap-input100 validate-input" data-validate = "No puedes dejar este campo en blanco">

					    <asp:TextBox ID="txtNombre" runat="server" CssClass="input100" placeholder="Nombres"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </span>

					</div>
        <div class="wrap-input100 validate-input" data-validate = "No puedes dejar este campo en blanco">
            <asp:TextBox ID="txtApellido" runat="server" CssClass="input100" placeholder="Apellidos"></asp:TextBox>
            <span class="focus-input100"></span>
            <span class="symbol-input100">
                <i class="fa fa-user" aria-hidden="true"></i>
            </span>
        </div>

        <div class="wrap-input100">

            <table class="w-100">
                <tr>
                    <td class="auto-style3">
                        Fecha de nacimineto (dd/mm/aaaa)
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

        <div class="wrap-input100 validate-input" data-validate = "No puedes dejar este campo en blanco">

            <asp:TextBox ID="txtUsuario" runat="server" CssClass="input100" placeholder="Usuario"></asp:TextBox>
            <span class="focus-input100"></span>
            <span class="symbol-input100">
                <i class="fa fa-user" aria-hidden="true"></i>
            </span>

        </div>

					<div class="wrap-input100 validate-input" data-validate = "No puedes dejar este campo en blanco">
            <asp:TextBox ID="txtContraseña" runat="server" CssClass="input100" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
            <span class="focus-input100"></span>
			<span class="symbol-input100">
                <i class="fa fa-lock" aria-hidden="true"></i>
			</span>
		</div>

        <div class="wrap-input100 validate-input" data-validate = "No puedes dejar este campo en blanco">
            <asp:TextBox ID="txtConContra" runat="server" CssClass="input100" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
            <span class="focus-input100"></span>
			<span class="symbol-input100">
                <i class="fa fa-lock" aria-hidden="true"></i>
			</span>
		</div>
					
					<div class="container-login100-form-btn">
						
					    <asp:Button ID="btConfirmar" runat="server" Text="Registrar" CssClass="btn login100-form-btn" OnClick="btConfirmar_Click"/>

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