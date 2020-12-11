<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Usuario.Master" AutoEventWireup="true" CodeBehind="Album_S.aspx.cs" Inherits="_IPC2__Proyecto.App.Album_S" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">

        .auto-style1 {
            width: 100%;
            height: 75px;
        }
        .auto-style3 {
            width: 750px;
        }
        .auto-style12 {
            margin-left: 40px;
        }
        .auto-style26 {
            height: 16px;
        }
            .auto-style27 {
                width: 319px;
                text-align: center;
            }
            .auto-style28 {
                width: 271px;
                text-align: right;
            }
            </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <table class="w-100">
                    <tr>
                        <td class="auto-style27">
                            <asp:Image ID="imgPortada" runat="server" Height="250px" Width="250px" />
                        </td>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td><strong>
                                        <asp:Label ID="lbTitulo" runat="server"></asp:Label>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" Width="50px" ImageUrl="~/App/images/boton-de-reproduccion.png" />
&nbsp;&nbsp;
                                        <asp:ImageButton ID="btnLike" runat="server" Height="50px" Width="50px" ImageUrl="~/App/images/como.png" OnClick="ImageButton2_Click" />
&nbsp;&nbsp;
                                        <asp:ImageButton ID="btnFavorito" runat="server" Height="50px" Width="50px" ImageUrl="~/App/images/estrella.png" />
                                    </td>
                                </tr>
                            </table>
                        </td>
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
        <span class="auto-style5"><strong>Comentarios</strong></span></div>
    
    <div>
        <hr />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table class="w-100">
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td class="auto-style28">
                            <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" ImageUrl="~/App/images/usuario.png" />
&nbsp;&nbsp;&nbsp; </td>
                        <td>
                            <asp:TextBox ID="txtComentario" runat="server" Height="175px" Width="594px" placeholder="Agregar Comentario" TextMode="MultiLine"></asp:TextBox>
                        &nbsp;&nbsp;
                            <asp:Button ID="btnPublicar" runat="server" Text="Publicar" Width="175px" CssClass="btn btn-primary js-scroll-trigger" OnClick="btnPublicar_Click"/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>

                <br />

            </td>
        </tr>
        <tr>
            <td>
                
                <asp:Panel ID="Panel_Principal" runat="server">
                    <%--<table class="w-100">
                        <tr>
                            <td class="auto-style30">
                                <table class="w-100">
                                    <tr>
                                        <td class="text-center">
                                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/App/images/usuario.png" Width="30px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">Olimpialour</td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Height="100px" Width="595px" CssClass="auto-style29"></asp:TextBox>
                            </td>
                        </tr>
                    </table>--%>
                </asp:Panel>
                
            </td>
        </tr>
    </table>
</asp:Content>
