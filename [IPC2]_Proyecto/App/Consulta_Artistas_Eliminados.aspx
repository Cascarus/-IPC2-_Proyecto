<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Admin.Master" AutoEventWireup="true" CodeBehind="Consulta_Artistas_Eliminados.aspx.cs" Inherits="_IPC2__Proyecto.App.Consulta_Artistas_Eliminados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 310px;
        }
        .auto-style2 {
            width: 120px;
        }
        .auto-style3 {
            width: 766px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <h1>Consulta de Artistas Eliminados</h1>
                <p>&nbsp;</p>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:GridView ID="gvConsulta_Artistas" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style6" Width="642px" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Nombre_Artista" HeaderText="Nombre" />
                        <asp:BoundField DataField="Año" HeaderText="Año" />
                        <asp:BoundField DataField="Nombre" HeaderText="Pais" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">

                <div>
                <table class="w-100" style="height: 32px">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>
                            <br />

                        </td>
                    </tr>
                </table>
                </div>

            </td>
            <td class="auto-style3">
                <div>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style9">
                            &nbsp;
                        </td>
                        <td>
                            <br />

                            <asp:Button ID="btRegresar" runat="server" Text="Regresar" Width="200px" CssClass="btn btn-primary" OnClick="btAceptar_Click"/>

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
