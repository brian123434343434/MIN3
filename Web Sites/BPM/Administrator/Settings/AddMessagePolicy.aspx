<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="AddMessagePolicy.aspx.vb" Inherits="BPMWebSite.AddMessagePolicy1"
    Title="Administración de Politicas de Notificación" Theme="SoftManagement" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="FormPanel" runat="server" BackColor="white">
                <table id="Table1" border="0" cellpadding="1" cellspacing="1" class="cssTable" width="100%">
                    <tr>
                        <td align="left" colspan="6">
                            <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">Politica de 
                            Notificación</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                        </td>
                        <td colspan="2">
                            &nbsp;<br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblCode" runat="server" CssClass="cssLabelForm">Código</asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtCode" runat="server" CssClass="cssTextBoxForm" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="txtCode"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un código para identificar la Condición  <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="cveCode" runat="server" TargetControlID="rfvCode"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblName" runat="server" CssClass="cssLabelForm">Nombre</asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtName" runat="server" CssClass="cssTextBoxForm" Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un nombre para la moneda <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="cveNombre" runat="server" TargetControlID="rfvName"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblDescription" runat="server" CssClass="cssLabelForm">Descripción</asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtDescription" runat="server" CssClass="cssTextBoxForm" Width="300px" Rows="5"
                                TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ControlToValidate="txtDescription"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un prefijo para la moneda <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="vceDescription" runat="server" TargetControlID="rfvDescription"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label1" runat="server" Text="Notificar a: "></asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:CheckBox ID="chkNotifyUsers" runat="server" />
                            Usuarios
                            <br />
                            <asp:CheckBox ID="chkNotifyOthers" runat="server" />
                            Otros
                            <br />
                            <asp:CheckBox ID="chkNotifySupervisors" runat="server" />
                            Supervisores<br />
                            <asp:CheckBox ID="chkNotifyAuditors" runat="server" />
                            Auditores
                            <br />
                            <asp:CheckBox ID="chkNotifyResponsibles" runat="server" />
                            Responsables
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            Handlers
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtHandlers" runat="server" CssClass="cssTextBoxForm" Width="300px"
                                Text="Gattaca.Application.BPM.eMailMessageHandler"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            Formatters
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtFormatters" runat="server" CssClass="cssTextBoxForm" Width="300px"
                                Text="Gattaca.Application.BPM.MailMessageFormatter"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblStatus" runat="server" CssClass="cssLabelForm">Estado</asp:Label>
                        </td>
                        <td colspan="2">
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
                        <td colspan="2">
                        </td>
                    </tr>
                </table>
                <table width="100%">
                    <tr>
                        <td>
                            <asp:Button ID="btnSave" runat="server" CssClass="cssButton" Text="Crear" />&nbsp;<asp:Button
                                ID="btnDelete" runat="server" CausesValidation="False" CssClass="cssButton" Text="Eliminar" />
                            &nbsp;<asp:Button
                                    ID="btnCancel" runat="server" CausesValidation="False" CssClass="cssButton" Text="Cancelar" />
                        </td>
                    </tr>
                </table>
                &nbsp;</asp:Panel>
            <%--<br />
            <asp:Panel ID="HelpPanel" runat="server" BackColor="white" Width="450px" Height="550px">
            </asp:Panel>
            <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" TargetControlID="FormPanel"
                Radius="6" Corners="All" />
            <ajaxToolkit:RoundedCornersExtender ID="RoundedCornersExtender2" runat="server" TargetControlID="HelpPanel"
                Radius="6" Corners="All" />--%>
            <ajaxToolkit:ConfirmButtonExtender ID="cbe" runat="server" TargetControlID="btnDelete"
                ConfirmText="Esta Seguro que desea eliminar esta moneda?, esta accion no puede revertirse." />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
