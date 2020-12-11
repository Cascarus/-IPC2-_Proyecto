<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Usuario.Master" AutoEventWireup="true" CodeBehind="Pag_Principal_Usuario.aspx.cs" Inherits="_IPC2__Proyecto.App.Pag_Principal_Usuario" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <table class="auto-style11">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        
                        <td class="auto-style25">
                            <center>
                                <asp:Label ID="lbSesion" runat="server"></asp:Label>
                            &nbsp;&nbsp;</center>
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
                            <asp:Button ID="btArtista" runat="server" Text="Registrar artista" Width="175px" CssClass="btn btn-primary js-scroll-trigger" OnClick="btArtista_Click"/>
                            <asp:Button ID="btModArtista" runat="server" Width="175px" CssClass="btn btn-dark js-scroll-trigger" Visible="False" OnClick="btModArtista_Click"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btNuevo" runat="server" Text="Nueva lista" Width="175px" CssClass="btn btn-primary js-scroll-trigger"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <asp:Button ID="btMis_listas" runat="server" Text="Mis listas" Width="175px" CssClass="btn btn-primary js-scroll-trigger"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Favoritos" Width="175px" CssClass="btn" BackColor="#FFCC00" OnClick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Novedades" Width="175px" CssClass="btn " BackColor="#66FF66" OnClick="Button2_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btSalir" runat="server" Text="Salir" Width="175px" CssClass="btn btn-primary js-scroll-trigger" OnClick="btSalir_Click"/>
                        </td>
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
                            <td class="auto-style13"><center class="auto-style19"><strong>Géneros</strong></center></td>
                        </tr>
                        <tr>
                            <td>
                                <center class="auto-style20"><asp:ImageButton ID="btGeneros" runat="server" Height="170px" Width="170px" ImageUrl="~/App/Images/Generos1.png" OnClick="btGeneros_Click" /></center>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="w-100">
                        <tr>
                            <td class="auto-style13"><strong>&nbsp;&nbsp; Listas de Reproducción</strong></td>
                        </tr>
                        <tr>
                            <td>
                    <asp:ImageButton ID="btListas" runat="server" Height="170px" Width="170px" ImageUrl="~/App/Images/Lista_Reproduccion.png" />
                            </td>
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
                            <td class="auto-style22"><center class="auto-style19"> <strong>Artistas más influyentes</strong></center></td>
                        </tr>
                        <tr>
                            <td class="auto-style22">
                                <center class="auto-style23"><asp:ImageButton ID="btArtistas" runat="server" Height="170px" Width="170px" ImageUrl="~/App/Images/cantante.png" /></center>
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
                    <asp:ImageButton ID="btAlbumesP" runat="server" Height="170px" Width="170px" ImageUrl="~/App/Images/Album.png" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
