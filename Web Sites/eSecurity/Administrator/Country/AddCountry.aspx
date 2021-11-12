<%@ page language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Country_AddCountry, App_Web_tzvzaxrd" title="País" theme="SoftManagement" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <table border="0" cellpadding="1" cellspacing="1" align="center" bgcolor="white"
                    style="width: 537px">
                    <tr style="color: #333333">
                        <td class="cssFormFieldName" style="text-align: left;">
                            Nombre
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtName" runat="server" Width="225px" BackColor="WhiteSmoke" MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="text-align: left;">
                            Moneda
                        </td>
                        <td style="text-align: left">
                            <asp:DropDownList ID="ddlCurrency" runat="server" Width="229px" BackColor="WhiteSmoke">
                                <asp:ListItem Selected="True" Value=" ">-- SELECCIONE --</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlCurrency"
                                Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="text-align: left;">
                            Dirección 1
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtAddress1" runat="server" Width="225px" BackColor="WhiteSmoke"
                                MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress1"
                                Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="text-align: left;">
                            Dirección 2
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtAddress2" runat="server" Width="225px" BackColor="WhiteSmoke"
                                MaxLength="50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="text-align: left;">
                            Ciudad
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtCity" runat="server" Width="225px" BackColor="WhiteSmoke" MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCity"
                                Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="text-align: left;">
                            Estado / Departamento
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtState" runat="server" Width="225px" BackColor="WhiteSmoke" MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtState"
                                Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="text-align: left;">
                            Zip
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtZip" runat="server" Width="225px" BackColor="WhiteSmoke" MaxLength="50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="text-align: left;">
                            eMail
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtEMail" runat="server" Width="225px" BackColor="WhiteSmoke" MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEMail"
                                Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEMail"
                                ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="text-align: left;">
                            Número Telefónico
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtPhoneNumber" runat="server" Width="225px" BackColor="WhiteSmoke"
                                MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPhoneNumber"
                                Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="text-align: left;">
                            Prefijo de Facturación
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtInvoicePrefix" runat="server" Width="50px" BackColor="WhiteSmoke"
                                MaxLength="4"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtInvoicePrefix"
                                Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="text-align: left;">
                            Unidad de Medida (Longitud)
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtMeasureUnit" runat="server" Width="50px" BackColor="WhiteSmoke"
                                MaxLength="3"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMeasureUnit"
                                Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="text-align: left;">
                            Unidad de Medida (Peso)
                        </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtWeightUnit" runat="server" Width="50px" BackColor="WhiteSmoke"
                                MaxLength="3"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtWeightUnit"
                                Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="text-align: left;">
                            Estado
                        </td>
                        <td style="text-align: left">
                            <asp:RadioButtonList ID="rblHabilitado" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="True" Selected="True">Habilitado</asp:ListItem>
                                <asp:ListItem Value="False">Deshabilitado</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </table>
                <asp:Label ID="lblId" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnAdd" runat="server" Text="Crear" Width="60px" />&nbsp;
                <asp:Button ID="btnUpdate" runat="server" Text="Guardar" Width="60px" />&nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Eliminar" Width="60px" /><br />
                <asp:Label ID="lblMessage" runat="server" CssClass="cssRequired" ForeColor="Red"
                    Visible="False">Si elimina los cambios no pueden ser revertidos. ¿Está 
                seguro que desea eliminar?</asp:Label><br />
                <br />
                <asp:Button ID="btnConfirmDelete" runat="server" Text="Eliminar" Visible="False"
                    Width="60px" />
                <asp:Button ID="btnCancelDelete" runat="server" Text="Cancelar" Visible="False" Width="60px" />
            </td>
        </tr>
    </table>
</asp:Content>
