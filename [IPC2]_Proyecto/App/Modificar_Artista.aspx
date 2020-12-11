<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Usuario.Master" AutoEventWireup="true" CodeBehind="Modificar_Artista.aspx.cs" Inherits="_IPC2__Proyecto.App.Modificar_Artista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 331px;
        }
        .auto-style2 {
            width: 24px;
        }
        .auto-style3 {
            width: 176px;
        }
        .auto-style4 {
            width: 523px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <br />

    <table class="w-100">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">

                            <asp:Button ID="btnInformacion" runat="server" Text="Informacion" Width="350px" CssClass="btn btn-dark js-scroll-trigger" Enabled="False" OnClick="btnEliminar_Click"/>

                        </td>
            <td>

                            <asp:Button ID="btnAlbumes" runat="server" Text="Albumes" Width="350px" CssClass="btn btn-primary" OnClick="btnAlbumes_Click"/>

                        </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    <br />
    <table class="w-100">
        <tr>
            <td class="auto-style2">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Nombre del artista:&nbsp;&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>

                <asp:TextBox ID="txtNombre" runat="server" Width="480px" CssClass="form-control" data-validate = "Se necesita un usuario registrado"></asp:TextBox>
                <asp:Label ID="lbEnombre" runat="server" Font-Size="Small" ForeColor="Red" Text="No puedes dejar este campo en blanco" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Año de formación:</td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:DropDownList ID="dplAño" runat="server" Width="480px" CssClass="form-control">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>País:</td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:DropDownList ID="dplPais" runat="server" Width="480px" CssClass="form-control">
                </asp:DropDownList>
            </td>
        </tr>
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
                                        <asp:Image ID="imgPerfil" runat="server" Height="160px" Width="160px" ImageUrl="~/App/Images/Defecto.png" />
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
            <td class="auto-style16">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Genero:</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style17">
                <asp:Panel ID="PanelBotones" runat="server" Width="945px">
                </asp:Panel>
                <asp:HiddenField ID="PressedButton" runat="server" />
                <asp:Label ID="lbEgenero" runat="server" Font-Size="Small" ForeColor="Red" Text="Debes seleccionar al menos un genero" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Facebook:</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="txtFacebook" runat="server" Width="480px" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Twitter:</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txtTwitter" runat="server" Width="480px" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Youtube:</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style23">
                <asp:TextBox ID="txtYoutube" runat="server" Width="480px" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Página web:</td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:TextBox ID="txtPag" runat="server" Width="480px" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>

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
                        <td class="auto-style1">
                            <br />

                            &nbsp; &nbsp;

                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Width="200px" CssClass="btn btn-primary" OnClick="btnEliminar_Click"/>

                        </td>
                        <td>
                            <br />
                            <asp:Button ID="btActualizar" runat="server" Text="Actualizar" Width="200px" CssClass="btn btn-primary" OnClick="btAceptar_Click"/>

                        </td>
                    </tr>
                </table>
                </div>

            </td>
        </tr>
    </table>
</asp:Content>
