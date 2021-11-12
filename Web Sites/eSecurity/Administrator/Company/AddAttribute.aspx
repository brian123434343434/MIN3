<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Company_AddAttribute, App_Web__yjwvz_k" theme="SoftManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2
        {
            width: 233px;
        }
        .style3
        {
            width: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="left">
        <table style="width: 100%">
            <tr>
                <td>
                    <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Atributos de Empresas"></asp:Label>
                    <hr />
                </td>
            </tr>
        </table>
        <div style="width: 100%; text-align: center;">
            <table style="width: 316px;" align="center">
                <tr>
                    <td class="style3" style="text-align: left">
                        <asp:Label ID="lblName" runat="server" Text="Nombre"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="tbName" runat="server" Width="200px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="tbName" Display="Dynamic" ErrorMessage="Dato requerido" 
                            Font-Bold="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3" style="text-align: left">
                        <asp:Label ID="lblType" runat="server" Text="Tipo"></asp:Label>
                    </td>
                    <td class="style2">
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
                    <td class="style3" style="text-align: left">
                        <asp:Label ID="lblDetail" runat="server" Text="Detalle"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="tbDetail" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3" style="text-align: left">
                        <asp:Label ID="lblMandatory" runat="server" Text="Obligatorio"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:CheckBox ID="cbMandatory" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="style3" style="text-align: left">
                        <asp:Label ID="lblCategory" runat="server" Text="Categoría"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:DropDownList ID="ddlCategory" runat="server" Width="200px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;
                    </td>
                    <td class="style2">
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
        </div>
    </asp:Panel>
</asp:Content>
