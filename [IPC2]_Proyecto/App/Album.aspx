<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Usuario.Master" AutoEventWireup="true" CodeBehind="Album.aspx.cs" Inherits="_IPC2__Proyecto.App.Album" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 176px;
        }
        .auto-style4 {
            width: 523px;
        }
        .auto-style5 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />

    <table class="w-100">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">

                            <asp:Button ID="btnInformacion" runat="server" Text="Informacion" Width="350px" CssClass="btn btn-primary" OnClick="btnInformacion_Click"/>

                        </td>
                        <td>

                            <asp:Button ID="btnAlbumes" runat="server" Text="Albumes" Width="350px" CssClass="btn btn-dark js-scroll-trigger" Enabled="False"/>

                        </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <br />
                <asp:Button ID="btCrearAlbum" runat="server" Text="Crear album" Width="350px" CssClass="btn btn-outline-info active" OnClick="Button1_Click"/>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <br />

    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="auto-style5">Albumes publicados</span></div>
    
    <div>
        <hr />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:Panel ID="PanelPrincipal" runat="server">
    </asp:Panel>
    <p>
                <asp:HiddenField ID="PressedButton" runat="server" />
                <br />
    </p>
</asp:Content>
