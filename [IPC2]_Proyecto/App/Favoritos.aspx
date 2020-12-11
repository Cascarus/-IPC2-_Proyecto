<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Usuario.Master" AutoEventWireup="true" CodeBehind="Favoritos.aspx.cs" Inherits="_IPC2__Proyecto.App.Favoritos" %>
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
                            <asp:Button ID="btInicio" runat="server" Text="Inicio" Width="175px" CssClass="btn btn-primary js-scroll-trigger" OnClick="btInicio_Click" />
                        </td>
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
                            <asp:Button ID="Button1" runat="server" Text="Favoritos" Width="175px" CssClass="btn" BackColor="#FFCC00" />
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
       <br />

    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="auto-style5"><strong>Albumes Favoritos</strong></span></div>
    
    <div>
        <hr />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <%--<table class="w-100">
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="250px" Width="250px" />
                        </td>
                    </tr>
                    <tr>
                        <td>Album de prueba 1</td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="w-100">
                    <tr>
                        <td>
                            <asp:Image ID="Image2" runat="server" Height="250px" Width="250px" />
                        </td>
                    </tr>
                    <tr>
                        <td>Album de prueba 1</td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="w-100">
                    <tr>
                        <td>
                            <asp:Image ID="Image3" runat="server" Height="250px" Width="250px" />
                        </td>
                    </tr>
                    <tr>
                        <td>Album de prueba 1</td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="w-100">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>--%>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    </asp:Content>