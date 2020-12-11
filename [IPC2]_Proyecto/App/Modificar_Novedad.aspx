<%@ Page Title="" Language="C#" MasterPageFile="~/App/Principal_Admin.Master" AutoEventWireup="true" CodeBehind="Modificar_Novedad.aspx.cs" Inherits="_IPC2__Proyecto.App.Modificar_Novedad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style1 {
            width: 310px;
        }
        .auto-style6 {
            width: 177px;
        }
        .auto-style2 {
            width: 357px;
        }
        .auto-style8 {
            width: 122px;
        }
        .auto-style9 {
            width: 80px;
        }
        .auto-style10 {
            width: 293px;
        }
        .auto-style11 {
            width: 100%;
            height: 222px;
        }
        .auto-style18 {
            width: 188px;
        }
        .auto-style19 {
            width: 56px;
        }
        .auto-style24 {
            width: 100%;
            height: 32px;
        }
        .auto-style25 {
            width: 100%;
            height: 192px;
        }

            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <h1>Modificar Novedad</h1>
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
                 <asp:DropDownList ID="dplID" runat="server" Width="250px"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="btBuscar" runat="server" Text="Buscar" Width="113px" CssClass="btn btn-primary" OnClick="btBuscar_Click"/>                
                 <br />
                 <br />
             </td>
             <td>&nbsp;</td>
         </tr>
     </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
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
        <tr>
            <td class="auto-style2">
                <table class="w-100">
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Contenido:</td>
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
                                        <asp:Image ID="imgPortada" runat="server" Height="160px" Width="160px" ImageUrl="~/App/Images/Defecto.png" />
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
