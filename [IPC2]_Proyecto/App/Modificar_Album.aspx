<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Usuario.Master" AutoEventWireup="true" CodeBehind="Modificar_Album.aspx.cs" Inherits="_IPC2__Proyecto.App.Modificar_Album" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 176px;
        }
        .auto-style4 {
            width: 523px;
        }
        .auto-style5 {
            width: 185px;
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
                <asp:Button ID="btnInformacion" runat="server" Text="Informacion" Width="350px" CssClass="btn btn-dark js-scroll-trigger" Enabled="False"/>
            </td>
            <td>
                <asp:Button ID="btnAlbumes" runat="server" Text="Albumes" Width="350px" CssClass="btn btn-primary"/>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <br />

    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>Modificar de Album</strong>
    </div>
    
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
                        <td class="auto-style2">
                            <table class="w-100">
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>Titulo:&nbsp;&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNombre" runat="server" Width="480px" CssClass="form-control" data-validate = "Se necesita un usuario registrado"></asp:TextBox>
                            <asp:Label ID="lbEnombre" runat="server" Font-Size="Small" ForeColor="Red" Text="No puedes dejar este campo en blanco" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="w-100">
                    <tr>
            <td class="auto-style2">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Año de creacion:</td>
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
                                    <asp:DropDownList ID="dplDia" runat="server" Width="120px" CssClass="auto-style2" placeholder="Dia" Height="25px">
                                    </asp:DropDownList>

                                    </td>
                                    <td class="auto-style5">
                                    <asp:DropDownList ID="dplMes" runat="server" Width="120px" CssClass="auto-style2" placeholder="Mes" Height="25px">
                                    </asp:DropDownList>
                                    </td>
                                    <td>
                                    <asp:DropDownList ID="dplAño" runat="server" Width="120px" CssClass="auto-style2" placeholder="Año" Height="25px">
                                    </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </td>
        </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="w-100">
                    <tr>
            <td class="auto-style2">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Descripcion:</td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:TextBox ID="txtDescripcion" runat="server" Height="158px" TextMode="MultiLine" Width="480px" MaxLength="200" onkeypress="return this.value.length<=199" CssClass="form-control"></asp:TextBox>
                <asp:Label ID="lbEdescripcion" runat="server" Font-Size="Small" ForeColor="Red" Text="No puedes dejar este campo en blanco" Visible="False"></asp:Label>
            </td>
        </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td class="auto-style2">
                            <table class="w-100">
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>Foto de portada:</td>
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
                                                    <asp:Image ID="imgAlbum" runat="server" Height="160px" Width="160px" ImageUrl="~/App/Images/Defecto.png" />
                                                </td>
                                                <td>
                                                    <div>
                                                        <asp:FileUpload ID="fuImagenes" runat="server" Width="395px" accept=".jpg" CssClass="auto-style2"/>
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
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td class="auto-style2">
                            <table class="w-100">
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td>Cancion:</td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <asp:Button ID="btCancion" runat="server" Text="Subir cancion" Width="200px" CssClass="btn btn-primary" OnClick="btCancion_Click"/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td class="text-center">
                            <asp:Button ID="btCancelar" runat="server" Text="Cancelar" Width="200px" CssClass="btn btn-primary" OnClick="btCancelar_Click"/>
                        </td>
                        <td>
                            <asp:Button ID="btAceptar" runat="server" Text="Finalizar" Width="200px" CssClass="btn btn-primary" OnClick="btAceptar_Click"/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
</asp:Content>


