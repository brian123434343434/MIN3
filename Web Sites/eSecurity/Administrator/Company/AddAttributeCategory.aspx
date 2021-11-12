<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Company_AddAttributeCategory, App_Web__yjwvz_k" theme="SoftManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .cssLabelTitle
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
        <table width="100%">
            <tr>
                <td style="text-align: left">
                    <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Administración de Categorías de Atributos"></asp:Label>
                    <hr />
                </td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    <asp:Label ID="lblCategoryname" runat="server" Text="Nombre de Categoría"></asp:Label>
                    &nbsp;<asp:TextBox ID="tbCategoryName" runat="server" MaxLength="100" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCategoryName" runat="server" 
                        ControlToValidate="tbCategoryName" ErrorMessage="Dato Requerido"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnAccept" runat="server" Text="Aceptar" />
                    &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Eliminar" />
                    &nbsp;<asp:Button ID="btnCancel" runat="server" Text="Cancelar" CausesValidation="false" />
                    <br />
                    <asp:Button ID="btnConfirm" runat="server" Text="Confirmar borrado" Visible="False" />
                    &nbsp;<asp:Button ID="btnCancelDelete" runat="server" CausesValidation="false" Text="Cancelar borrado" Visible="False" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="lblReport" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
