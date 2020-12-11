<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Usuario.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_IPC2__Proyecto.App.Prueba.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            height: 75px;
        }
        .auto-style3 {
            width: 693px;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            margin-left: 40px;
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
                        <td>&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="381px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btBuscar" runat="server" Text="Buscar" Width="113px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Registrar artista" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button3" runat="server" Text="Nueva lista" Width="176px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">
                            <asp:Button ID="Button4" runat="server" Text="Mis listas" Width="175px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button5" runat="server" Text="Salir" Width="177px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>

        Explorar

    </div>
    
    <div>
        <hr />
    </div>
    
    <div>
        <table class="auto-style11">
            <tr>
                <td>
                    <asp:Button ID="Button6" runat="server" Text="Button" />
                </td>
                <td>
                    <asp:Button ID="Button7" CssClass="btn auto-style1" runat="server" Text="Button" />
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

        Tendencias

    </div>
    
    <div>
        <hr />
    </div>
    
    <div>
        <table class="auto-style11">
            <tr>
                <td>
                    <asp:Button ID="Button8" runat="server" Text="Button" />
                </td>
                <td>
                    <asp:Button ID="Button9" runat="server" Text="Button" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
