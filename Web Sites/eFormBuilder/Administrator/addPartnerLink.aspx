<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_addPartnerLink, App_Web_5zwlr24r" title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" runat="Server">
    <table width="100%">
        <tr>
            <td>
                <asp:UpdatePanel ID="upControlDetail" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <table width="100%">
                            <tr>
                                <td>
                                    <asp:Label ID="lblCode" runat="server" CssClass="cssLabelForm" Text="Nombre"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtName" runat="server" CssClass="cssTextBoxForm" ValidationGroup="addField" Width="300px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                                        ErrorMessage="*" ValidationGroup="addField" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblHelpText" runat="server" Text="Descripción" Visible="true" CssClass="cssLabelForm"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Visible="true"
                                        CssClass="cssTextBoxForm"  Width="300px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ControlToValidate="txtDescription"
                                        ErrorMessage="*" ValidationGroup="addField" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbURL" runat="server" CssClass="cssLabelForm" Text="URL"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtURL" runat="server" CssClass="cssTextBoxForm" ValidationGroup="addField" Width="300px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvURL" runat="server" ControlToValidate="txtURL"
                                        ErrorMessage="*" ValidationGroup="addField" Width="4px" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblStatus" runat="server" CssClass="cssLabelForm" Text="Estado"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlStattus" runat="server">
                                        <asp:ListItem Text="Habilitado" Value="True"></asp:ListItem>
                                        <asp:ListItem Text="Desabilitado" Value="False"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <hr />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="btnAddPartnerLinks" runat="server" CssClass="cssButton" 
                                        Text="Agregar" ValidationGroup="addField" />
                                    <asp:Button ID="btnSave" runat="server" CssClass="cssButton" Text="Guardar" 
                                        ValidationGroup="addField" />
                                    <asp:Button ID="btnCancel" runat="server" CssClass="cssButton" 
                                        Text="Cancelar" />
                                    <asp:Button ID="btnEliminar" runat="server" CssClass="cssButton" 
                                        Text="Eliminar" />
                                    <asp:Button ID="BtnUpdateRefernce" runat="server" CssClass="cssButton" 
                                        Text="Actualizar Referencia" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        </table>
</asp:Content>
