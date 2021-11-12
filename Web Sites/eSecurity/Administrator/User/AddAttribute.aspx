<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_User_AddAttribute, App_Web_z2f_sopw" theme="SoftManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 87px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
        <table style="width: 100%">
            <tr>
                <td colspan="2" style="text-align: left">
                    <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Atributos de Usuarios"></asp:Label>
                    <hr />
                </td>
            </tr>
        </table>
        <table style="width: 37%;" align="center">
            <tr>
                <td class="style1">
                    <asp:Label ID="lblName" runat="server" Text="Nombre"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbName" runat="server" Width="200px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbName" Display="Dynamic" ErrorMessage="Dato requerido" 
                        Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lblType" runat="server" Text="Tipo"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlType" runat="server" Width="200px">
                        <asp:ListItem Value="0">Numérico</asp:ListItem>
                        <asp:ListItem Value="1">Lógico</asp:ListItem>
                        <asp:ListItem Value="2">Cadena</asp:ListItem>
                        <asp:ListItem Value="4">Fecha</asp:ListItem>
                        <asp:ListItem Value="3">Enlace</asp:ListItem>
                        <asp:ListItem Value="5">Relación</asp:ListItem>
                        <asp:ListItem Value="6">Opciones</asp:ListItem>
                        <asp:ListItem Value="7">Relación condicionada</asp:ListItem>
                        <asp:ListItem Value="8">Archivo</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lblDetail" runat="server" Text="Detalle"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbDetail" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lblMandatory" runat="server" Text="Obligatorio"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="cbMandatory" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lblCategory" runat="server" Text="Categoría"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCategory" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnAccept" runat="server" Text="Guardar" />
                    &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Eliminar" />
                    &nbsp;<asp:Button ID="btnCancel" runat="server" Text="Cancelar" 
                        CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblReport" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnConfirm" runat="server" Text="Eliminar" Visible="False" />
                    &nbsp;<asp:Button ID="btnCancelDelete" runat="server" Text="Cancelar" 
                        Visible="False" CausesValidation="False" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
