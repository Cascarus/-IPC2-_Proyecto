<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Admin.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="_IPC2__Proyecto.App.Reportes" %>
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
            <td class="auto-style3"><strong>Reportes&nbsp;</strong></td>
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
                                        <asp:ImageButton ID="bt_Reporte_Artista_influyentes" runat="server" Height="250px" ImageUrl="~/App/images/cantante.png" Width="250px" OnClick="btCrearUsuario_Click" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Artistas más influyentes</strong></td>
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
                                        <asp:ImageButton ID="bt_Reporte_Fav" runat="server" Height="250px" ImageUrl="~/App/images/estrella.png" Width="250px" OnClick="ImageButton2_Click" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>Reporte de Favoritos</strong></td>
                    </tr>
                </table>
            </td>
            <td>
                
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