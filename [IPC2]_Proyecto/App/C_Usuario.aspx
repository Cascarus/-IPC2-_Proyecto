<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Admin.Master" AutoEventWireup="true" CodeBehind="C_Usuario.aspx.cs" Inherits="_IPC2__Proyecto.App.C_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 310px;
        }
        .auto-style2 {
            display: block;
            font-size: 1rem;
            line-height: 1.25;
            color: #495057;
            background-color: #fff;
            background-image: none;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
        .auto-style5 {
            width: 185px;
        }
        .auto-style6 {
            display: block;
            font-size: 1rem;
            line-height: 1.25;
            color: #495057;
            background-color: #fff;
            background-image: none;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            width: 323px;
        }
        .auto-style7 {
            width: 323px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <h1><strong>Crear Artista</strong></h1>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <table class="w-100">
        <tr>
            <td class="auto-style6">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Nombres:&nbsp;&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>

                <asp:TextBox ID="txtNombre" runat="server" Width="480px" CssClass="form-control" data-validate = "Se necesita un usuario registrado"></asp:TextBox>
                <asp:Label ID="lbENombres" runat="server" Font-Size="Small" ForeColor="Red" Text="No puedes dejar este campo en blanco" Visible="False"></asp:Label>
            </td>
        </tr>
         <tr>
            <td class="auto-style6">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Apellidos:&nbsp;&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>

                <asp:TextBox ID="txtApellidos" runat="server" Width="480px" CssClass="form-control" data-validate = "Se necesita un usuario registrado"></asp:TextBox>
                <asp:Label ID="lbEApellidos" runat="server" Font-Size="Small" ForeColor="Red" Text="No puedes dejar este campo en blanco" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <table class="w-100">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-left">Fecha de nacimiento:
            </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>

                <table class="w-100">
                    <tr>
                        <td>(dd/mm/aaaa)</td>
                    </tr>
                    <tr>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td class="auto-style5">
                                    <asp:DropDownList ID="dplDia" runat="server" Width="120px" CssClass="auto-style2" placeholder="Dia" Height="25px">
                                    </asp:DropDownList>

                                    </td>
                                    <td class="auto-style5">
                                    <asp:DropDownList ID="dplMes" runat="server" Width="120px" CssClass="auto-style2" placeholder="Mes" Height="25px">
                                    </asp:DropDownList>
                                    </td>
                                    <td>
                                    <asp:DropDownList ID="dplAño" runat="server" Width="120px" CssClass="auto-style2" placeholder="Año" Height="25px">
                                    </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </td>
        </tr>
        
        <tr>
            <td class="auto-style7">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Correo:</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="txtCorreo" runat="server" Width="480px" CssClass="form-control"></asp:TextBox>
                <asp:Label ID="lbECorreo" runat="server" Font-Size="Small" ForeColor="Red" Text="No puedes dejar este campo en blanco" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Usuario:</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txtUsuario" runat="server" Width="480px" CssClass="form-control"></asp:TextBox>
                <asp:Label ID="lbEUsuario" runat="server" Font-Size="Small" ForeColor="Red" Text="No puedes dejar este campo en blanco" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Contraseña:</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style23">
                <asp:TextBox ID="txtContra" runat="server" Width="480px" CssClass="form-control"></asp:TextBox>
                <asp:Label ID="lbEContrase" runat="server" Font-Size="Small" ForeColor="Red" Text="No puedes dejar este campo en blanco" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">

                <div>
                <table class="w-100" style="height: 32px">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>
                            <br />

                <asp:Button ID="btCancelar" runat="server" Text="Cancelar" Width="200px" CssClass="btn btn-primary" OnClick="btCancelar_Click"/>

                        </td>
                    </tr>
                </table>
                </div>

            </td>
            <td>
                <div>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td>
                            <br />

                <asp:Button ID="btAceptar" runat="server" Text="Aceptar" Width="200px" CssClass="btn btn-primary"/>

                        </td>
                    </tr>
                </table>
                </div>

            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
