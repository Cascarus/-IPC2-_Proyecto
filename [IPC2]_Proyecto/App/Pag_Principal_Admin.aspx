<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Admin.Master" AutoEventWireup="true" CodeBehind="Pag_Principal_Admin.aspx.cs" Inherits="_IPC2__Proyecto.App.Pag_Principal_Admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            height: 75px;
        }
        .auto-style3 {
            width: 750px;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            margin-left: 40px;
        }
        .auto-style13 {
            height: 32px;
            }
        .auto-style14 {
            width: 68%;
            margin-right: 1px;
        }
        .auto-style19 {
            width: 535px;
        }
        .auto-style20 {
            width: 536px;
        }
        .auto-style21 {
            width: 675px;
        }
        .auto-style22 {
            width: 247px;
        }
        .auto-style23 {
            width: 536px;
            margin-right: 10px;
        }
        .auto-style24 {
            width: 52%
        }
        .auto-style25 {
            height: 47px;
        }
        .auto-style26 {
            height: 16px;
        }
        .auto-style27 {
            text-align: right;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style27"><strong>Bienvenido Administrador</strong></td>
                    </tr>
                    <tr>
                        
                        <td class="auto-style25">
                            <center>
                                </center>
                        </td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="txtBusqueda" runat="server" Width="381px"></asp:TextBox>
                                <asp:Button ID="btBuscar" runat="server" Text="Buscar" Width="113px" CssClass="btn btn-primary" />

                             </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style26"></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <asp:Button ID="btSalir" runat="server" Text="Salir" Width="175px" CssClass="btn btn-primary js-scroll-trigger" OnClick="btSalir_Click"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <strong>Explorar</strong>

    </div>
    
    <div>
        <hr />
    </div>
    
    <div>
        <table class="auto-style11">
            <tr>
                <td class="auto-style21">
                    <table class="auto-style14">
                        <tr>
                            <td class="auto-style13"><center class="auto-style19"><strong>Gestionar Usuarios</strong></center></td>
                        </tr>
                        <tr>
                            <td>
                                <center class="auto-style20"><asp:ImageButton ID="btGestionar_Usuario" runat="server" Height="170px" Width="170px" ImageUrl="~/App/Images/Generos1.png" OnClick="btGestionar_Usuarios_Click" /></center>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="w-100">
                        <tr>
                            <td class="auto-style13"><strong>&nbsp;&nbsp; Registrar genero musical</strong></td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btGestionar_Generos" runat="server" Height="170px" Width="170px" ImageUrl="~/App/Images/Lista_Reproduccion.png" OnClick="btGestionar_Generos_Click" />
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
    <div>

        <br />
        <br />

    </div>

    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>Tendencias</strong>

    </div>
    
    <div>
        <hr />
    </div>
    
    <div>
        <table class="auto-style11">
            <tr>
                <td class="auto-style21">
                    <table class="auto-style24">
                        <tr>
                            <td class="auto-style22"><center class="auto-style19"> Artistas Eliminados</center></td>
                        </tr>
                        <tr>
                            <td class="auto-style22">
                                <center class="auto-style23"><asp:ImageButton ID="btArtistas_Eliminados" runat="server" Height="170px" Width="170px" ImageUrl="~/App/Images/cantante.png" OnClick="btArtistas_Eliminados_Click" /></center>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="w-100">
                        <tr>
                            <td><strong>&nbsp;&nbsp;&nbsp;&nbsp; Álbumes populares</strong></td>
                        </tr>
                        <tr>
                            <td>
                    <asp:ImageButton ID="btAlbumesP" runat="server" Height="170px" Width="170px" ImageUrl="~/App/Images/Album.png" OnClick="btAlbumesP_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div>

        <br />
        <br />

    </div>

    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>Novedades</strong>

    </div>
    
    <div>
        <hr />
    </div>

    <div>
        <table class="auto-style11">
            <tr>
                <td class="auto-style21">
                    <table class="auto-style24">
                        <tr>
                            <td class="auto-style22"><center class="auto-style19"><strong> Crear novedades </strong></center></td>
                        </tr>
                        <tr>
                            <td class="auto-style22">
                                <center class="auto-style23"><asp:ImageButton ID="btNovedades" runat="server" Height="170px" Width="170px" ImageUrl="~/App/images/Novedades.png" OnClick="btNovedades_Click" /></center>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="w-100">
                        <tr>
                            <td><strong>&nbsp;&nbsp;&nbsp;&nbsp; Reportes</strong></td>
                        </tr>
                        <tr>
                            <td>
                    <asp:ImageButton ID="btReportes" runat="server" Height="170px" Width="170px" ImageUrl="~/App/images/Reporte.png" OnClick="btReportes_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
