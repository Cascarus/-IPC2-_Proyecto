<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Admin.Master" AutoEventWireup="true" CodeBehind="Eliminar_Usuario.aspx.cs" Inherits="_IPC2__Proyecto.App.Eliminar_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 310px;
        }
        .auto-style2 {
            display: block;
            font-size: 1rem;
            line-height: 1.25;
            color: #495057;
            background-color: #fff;
            background-image: none;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
        .auto-style5 {
            width: 185px;
        }
        .auto-style6 {
            width: 177px;
        }
        .auto-style7 {
            display: block;
            font-size: 1rem;
            line-height: 1.25;
            color: #495057;
            background-color: #fff;
            background-image: none;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            width: 335px;
        }
        .auto-style8 {
            width: 383px;
        }
        .auto-style9 {
            width: 377px;
        }
        .auto-style10 {
            width: 335px;
        }
        .auto-style11 {
            width: 173px;
        }
        .auto-style12 {
            width: 172px;
        }
        .auto-style13 {
            width: 144px;
        }
        .auto-style14 {
            width: 146px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <h1>Eliminar Usuario</h1>
                <p>&nbsp;</p>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <table class="w-100">
         <tr>
             <td class="auto-style6">&nbsp;</td>
             <td>
     <asp:TextBox ID="txtBusqueda" runat="server" Width="381px"></asp:TextBox>
     <asp:Button ID="btBuscar" runat="server" Text="Buscar" Width="113px" CssClass="btn btn-primary" OnClick="btBuscar_Click"/>                
                 <br />
             </td>
             <td>&nbsp;</td>
         </tr>
     </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style7">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nombres:</td>
                        <td>&nbsp;&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>

                <asp:TextBox ID="txtNombre" runat="server" Width="480px" CssClass="form-control" data-validate = "Se necesita un usuario registrado" Enabled="False"></asp:TextBox>
                <asp:Label ID="lbENombres" runat="server" Font-Size="Small" ForeColor="Red" Text="No puedes dejar este campo en blanco" Visible="False"></asp:Label>
            </td>
        </tr>
         <tr>
            <td class="auto-style7">
                <table class="w-100">
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td>&nbsp;&nbsp; Apellidos:&nbsp;&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>

                <asp:TextBox ID="txtApellidos" runat="server" Width="480px" CssClass="form-control" data-validate = "Se necesita un usuario registrado" Enabled="False"></asp:TextBox>
                <asp:Label ID="lbEApellidos" runat="server" Font-Size="Small" ForeColor="Red" Text="No puedes dejar este campo en blanco" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <table class="w-100">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fecha de nacimiento:
            </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>

                <table class="w-100">
                    <tr>
                        <td>(dd/mm/aaaa)</td>
                    </tr>
                    <tr>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td class="auto-style5">
                                    <asp:DropDownList ID="dplDia" runat="server" Width="120px" CssClass="auto-style2" placeholder="Dia" Height="25px" Enabled="False">
                                    </asp:DropDownList>

                                    </td>
                                    <td class="auto-style5">
                                    <asp:DropDownList ID="dplMes" runat="server" Width="120px" CssClass="auto-style2" placeholder="Mes" Height="25px" Enabled="False">
                                    </asp:DropDownList>
                                    </td>
                                    <td>
                                    <asp:DropDownList ID="dplAño" runat="server" Width="120px" CssClass="auto-style2" placeholder="Año" Height="25px" Enabled="False">
                                    </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </td>
        </tr>
        
        <tr>
            <td class="auto-style10">
                <table class="w-100">
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td>Correo:</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="txtCorreo" runat="server" Width="480px" CssClass="form-control" Enabled="False"></asp:TextBox>
                <asp:Label ID="lbECorreo" runat="server" Font-Size="Small" ForeColor="Red" Text="No puedes dejar este campo en blanco" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <table class="w-100">
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                        <td>Usuario:</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txtUsuario" runat="server" Width="480px" CssClass="form-control" Enabled="False"></asp:TextBox>
                <asp:Label ID="lbEUsuario" runat="server" Font-Size="Small" ForeColor="Red" Text="No puedes dejar este campo en blanco" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <table class="w-100">
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td>Contraseña:</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style23">
                <asp:TextBox ID="txtContra" runat="server" Width="480px" CssClass="form-control" Enabled="False"></asp:TextBox>
                <asp:Label ID="lbEContrase" runat="server" Font-Size="Small" ForeColor="Red" Text="No puedes dejar este campo en blanco" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">

                <div>
                <table class="w-100" style="height: 32px">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>
                            <br />

                            <asp:Button ID="btCancelar" runat="server" Text="Cancelar" Width="200px" CssClass="btn btn-primary" OnClick="btCancelar_Click"/>

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

                <asp:Button ID="btEliminar" runat="server" Text="Eliminar" Width="200px" CssClass="btn btn-primary" OnClick="btEliminar_Click"/>

                        </td>
                    </tr>
                </table>
                </div>

            </td>
        </tr>
    </table>
</asp:Content>
