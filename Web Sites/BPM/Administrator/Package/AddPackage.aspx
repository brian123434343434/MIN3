<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="AddPackage.aspx.vb" Inherits="BPMWebSite.AddPackage" Title="Adicionar Paquetes"
    Theme="SoftManagement" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Panel ID="FormPanel" runat="server" BackColor="white">
        <table id="Table1" border="0" cellpadding="1" cellspacing="1" class="cssTable">
            <tr>
                <td align="left" colspan="2" class="cssLabelTitle">
                    <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">Paquete de 
                    Procesos</asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCode" runat="server" CssClass="cssLabelForm">Código</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCode" runat="server" CssClass="cssTextBoxForm" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="txtCode"
                        CssClass="cssRequired" ErrorMessage="Debe digitar un código para identificar el Paquete de Procesos<div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                        Display="None" />
                    <ajaxToolkit:ValidatorCalloutExtender ID="cveCode" runat="server" TargetControlID="rfvCode"
                        Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                        CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblName" runat="server" CssClass="cssLabelForm">Nombre</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" CssClass="cssTextBoxForm" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                        CssClass="cssRequired" ErrorMessage="* Debe digitar un nombre para el Paquete de Procesos <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                        Display="None" />
                    <ajaxToolkit:ValidatorCalloutExtender ID="cveNombre" runat="server" TargetControlID="rfvName"
                        Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                        CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <asp:Label ID="lblDescription" runat="server" CssClass="cssLabelForm">Descripción</asp:Label>
                </td>
                <td valign="top">
                    <asp:TextBox ID="TxtDescription" runat="server" CssClass="cssTextBoxForm" Width="200px"
                        TextMode="MultiLine" Height="105px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ControlToValidate="txtDescription"
                        CssClass="cssRequired" ErrorMessage="* Debe digitar una descripción para el Paquete de Procesos <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                        Display="None" />
                    <ajaxToolkit:ValidatorCalloutExtender ID="cveDescription" runat="server" TargetControlID="rfvDescription"
                        Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                        CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblStatus" runat="server" CssClass="cssLabelForm">Estado</asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="cboStatus" runat="server">
                        <asp:ListItem Value="T" Selected="True">Habilitado</asp:ListItem>
                        <asp:ListItem Value="F">Deshabilitado</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 26px">
                    <asp:Button ID="btnSave" runat="server" CssClass="cssButton" Text="Crear" OnClick="btnSave_Click" />&nbsp;
                    <asp:Button ID="btnDelete" runat="server" CausesValidation="False" CssClass="cssButton"
                        Text="Eliminar" OnClick="btnDelete_Click" />&nbsp;
                    <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="cssButton"
                        Text="Cancelar" OnClick="btnCancel_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <ajaxToolkit:ConfirmButtonExtender ID="cbe" runat="server" TargetControlID="btnDelete"
        ConfirmText="Esta Seguro que desea eliminar este paquete?, esta accion no puede revertirse." />
</asp:Content>
