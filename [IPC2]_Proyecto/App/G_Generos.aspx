<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Admin.Master" AutoEventWireup="true" CodeBehind="G_Generos.aspx.cs" Inherits="_IPC2__Proyecto.App.G_Generos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
        .auto-style6 {
            width: 257px;
        }
        .auto-style7 {
            width: 257px;
            height: 127px;
        }
        .auto-style8 {
            height: 69px;
        }
        .auto-style9 {
            height: 70px;
        }
        .auto-style10 {
            height: 127px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style3"><strong>Crear genero musical&nbsp;</strong></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br class="auto-style5" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="w-100">
        <tr>
            <td class="auto-style7">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Nombre del genero:&nbsp;&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style10">

                <asp:TextBox ID="txtNombre" runat="server" Width="480px" CssClass="form-control" data-validate = "Se necesita un usuario registrado"></asp:TextBox>
                <asp:Label ID="lbEnombre" runat="server" Font-Size="Small" ForeColor="Red" Text="No puedes dejar este campo en blanco" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Foto de Genero:</td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="auto-style11">
                    <tr>
                        <td>
                            <table class="auto-style25">
                                <tr>
                                    <td class="auto-style18">
                                        <asp:Image ID="imgPerfil" runat="server" Height="160px" Width="160px" ImageUrl="~/App/images/Musica.png" />
                                    </td>
                                    <td>
                                        <div>
                                            <asp:FileUpload ID="fuImagenes" runat="server" Width="484px" accept=".jpg" CssClass="form-control"/>
                                        </div>
                                        <div>
                                            <br />
                                            <table class="w-100">
                                                <tr>
                                                    <td class="auto-style19">&nbsp;</td>
                                                    <td>

                                                        <asp:Button ID="btSubir" runat="server" Text="Subir" Width="200px" CssClass="btn btn-primary" OnClick="btSubir_Click"/>

                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                <asp:Label ID="lbEimagen" runat="server" Font-Size="Small" ForeColor="Red" Text="Debes subir una imagen" Visible="False"></asp:Label>
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">

                <div>
                <table class="w-100" style="height: 32px">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>
                            <br />

                <asp:Button ID="btCancelar" runat="server" Text="Cancelar" Width="200px" CssClass="btn btn-primary" OnClick="btCancelar_Click1"/>

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

                <asp:Button ID="btAceptar" runat="server" Text="Aceptar" Width="200px" CssClass="btn btn-primary" OnClick="btAceptar_Click"/>

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
