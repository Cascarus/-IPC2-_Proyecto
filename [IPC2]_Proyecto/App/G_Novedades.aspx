<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Admin.Master" AutoEventWireup="true" CodeBehind="G_Novedades.aspx.cs" Inherits="_IPC2__Proyecto.App.G_Novedades" %>
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
            <td class="auto-style3"><strong>Gestión de Novedades</strong></td>
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
                                        <asp:ImageButton ID="btCrearNovedad" runat="server" Height="250px" ImageUrl="~/App/images/crear.png" Width="250px" OnClick="btCrearUsuario_Click" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Crear Novedad</strong></td>
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
                                        <asp:ImageButton ID="btModNovedad" runat="server" Height="250px" ImageUrl="~/App/images/actualizar.png" Width="250px" OnClick="ImageButton2_Click" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Modificar Novedad</strong></td>
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
                                        <asp:ImageButton ID="btEliminarNovedad" runat="server" Height="250px" ImageUrl="~/App/images/Eliminar.png" Width="250px" OnClick="ImageButton3_Click" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Eliminar Novedad</strong></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>

            </td>

            <td>
                
            </td>
            <td>

            </td>
        </tr>     
    </table>
</asp:Content>

