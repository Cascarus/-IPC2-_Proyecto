<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Admin.Master" AutoEventWireup="true" CodeBehind="Gestion_Usuario.aspx.cs" Inherits="_IPC2__Proyecto.App.Gestion_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-size: large;
        }
        .auto-style3 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style4 {
            width: 47px;
        }
        .auto-style5 {
            font-size: xx-small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style4">
                <asp:ImageButton ID="btRegresar" runat="server" Height="40px" ImageUrl="~/App/images/Flecha_izq1.png" Width="40px" OnClick="btRegresar_Click" />
            </td>
            <td class="auto-style3"><strong>Gestión de Usuario&nbsp;</strong></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br class="auto-style5" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table class="w-100">
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="text-center">
                                        <asp:ImageButton ID="btCrearUsuario" runat="server" Height="250px" ImageUrl="~/App/images/Crear_usuario.png" Width="250px" OnClick="btCrearUsuario_Click" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Crear Usuario</strong></td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="w-100">
                    <tr>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="text-center">
                                        <asp:ImageButton ID="ImageButton2" runat="server" Height="250px" ImageUrl="~/App/images/Editar_Usuario.png" Width="250px" OnClick="ImageButton2_Click" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Modificar Usuario</strong></td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="w-100">
                    <tr>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="text-center">
                                        <asp:ImageButton ID="ImageButton3" runat="server" Height="250px" ImageUrl="~/App/images/Eliminar_usuario.png" Width="250px" OnClick="ImageButton3_Click" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Eliminar Usuario</strong></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>

            </td>

            <td>
                <table class="w-100">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="text-center">
                                        <asp:ImageButton ID="btConsulta" runat="server" Height="250px" ImageUrl="~/App/images/Consultar_Usuario.png" Width="250px" OnClick="btConsulta_Click" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Consulta de Usuarios</strong></td>
                    </tr>
                </table>
            </td>
            <td>

            </td>
        </tr>     
    </table>
</asp:Content>
