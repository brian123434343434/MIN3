<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_UserGroup_addUserGroup, App_Web_hery_agv" theme="GattacaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .cssButton
        {
            width: 82px;
        }
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" cellpadding="1" cellspacing="1" align="center" width="100%">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Grupos de Usuarios"></asp:Label>
                <hr />
            </td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td>
                <table border="0" cellpadding="1" cellspacing="1" align="center" bgcolor="White">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Código"></asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:TextBox ID="txtCodigo" runat="server" Width="200px"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                                ErrorMessage="Dato requerido" Font-Bold="True" ControlToValidate="txtCodigo"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:Label ID="lblCodReq" runat="server" Text="Dato requerido" Font-Bold="True" ForeColor="Red"
                                Visible="False" AssociatedControlID="txtCodigo"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:TextBox ID="txtNombre" runat="server" Width="200px"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                                ErrorMessage="Dato requerido" Font-Bold="True" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:Label ID="lblNomReq" runat="server" Text="Dato requerido" Font-Bold="True" ForeColor="Red"
                                Visible="False" AssociatedControlID="txtNombre"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Estado"></asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:DropDownList ID="ddlStatus" runat="server" Style="text-align: center">
                                <asp:ListItem Value="T">Habilitado</asp:ListItem>
                                <asp:ListItem Selected="True" Value="F">Deshabilitado</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblIDCompany" runat="server" Text=""></asp:Label>
                        </td>
                        <td style="text-align: center">
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center">
                            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" Visible="False" />
                            <asp:Button ID="btnCrear" runat="server" Text="Crear" Visible="False" />
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Visible="False" 
                                CausesValidation="False" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="pnlDel" runat="server" Visible="False">
                    <table border="0" cellpadding="1" cellspacing="1" align="center" bgcolor="White">
                        <tr>
                            <td style="text-align: center">
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Label ID="lblMsnConfirmar" runat="server" CssClass="cssRequired" ForeColor="Red"
                                    Visible="False">Si elimina los cambios no pueden ser revertidos. Está seguro 
                                que desea eliminar?</asp:Label>
                                <br />
                                <asp:Button ID="btnEliminarConfirmar" runat="server" Text="Eliminar" 
                                    Visible="False" CausesValidation="False" />
                                <asp:Button ID="btnCancelarConfirmar" runat="server" Text="Cancelar" 
                                    Visible="False" CausesValidation="False" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
