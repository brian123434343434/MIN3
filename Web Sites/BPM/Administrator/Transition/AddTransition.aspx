<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    Codebehind="AddTransition.aspx.vb" Inherits="BPMWebSite.AddTransition"
    Title="Configuración de la Transición" Theme="SoftManagement" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="FormPanel" runat="server" BackColor="white" >
                <table id="Table1" border="0" cellpadding="1" cellspacing="1" class="cssTable" >
                    <tr>
                        <td align="left" colspan="6" Class="cssLabelTitle" >
                            <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Font-Bold="true">Transición</asp:Label><br /><br /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblFromActivity" runat="server" CssClass="cssLabelForm">Desde la Actividad...</asp:Label></td>
                        <td colspan="2">
                            <asp:DropDownList ID="cboFromActivity" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboFromActivity_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblToActivity" runat="server" CssClass="cssLabelForm">Hasta la Actividad...</asp:Label></td>
                        <td colspan="2">
                            <asp:DropDownList ID="cboToActivity" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboToActivity_SelectedIndexChanged">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblCode" runat="server" CssClass="cssLabelForm">Código</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtCode" runat="server" CssClass="cssTextBoxForm" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="txtCode"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un código para identificar la Transición  <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="cveCode" runat="server" TargetControlID="rfvCode"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblName" runat="server" CssClass="cssLabelForm">Nombre</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtName" runat="server" CssClass="cssTextBoxForm" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un nombre para la Transición <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="cveNombre" runat="server" TargetControlID="rfvName"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblDescription" runat="server" CssClass="cssLabelForm">Descripción</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="TxtDescription" runat="server" CssClass="cssTextBoxForm" Width="200px"
                                TextMode="MultiLine" Height="105px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ControlToValidate="txtDescription"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un nombre para la Transición <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="cveDescription" runat="server" TargetControlID="rfvDescription"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                        </td>
                        <td colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblUmbral" runat="server" CssClass="cssLabelForm">Umbral</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtUmbral" runat="server" CssClass="cssTextBoxForm" Width="200px"
                                Text="0"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUmbral" runat="server" ControlToValidate="txtUmbral"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un nombre para la Transición <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="vceUmbral" runat="server" TargetControlID="rfvUmbral"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblPrioridad" runat="server" CssClass="cssLabelForm">Prioridad</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtPrioridad" runat="server" CssClass="cssTextBoxForm" Width="200px"
                                Text="1"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPrioridad" runat="server" ControlToValidate="txtPrioridad"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un nombre para la Transición <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="vcePrioridad" runat="server" TargetControlID="rfvPrioridad"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblMessage" runat="server" CssClass="cssLabelForm">Mensaje</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtMessage" runat="server" CssClass="cssTextBoxForm" Width="200px"
                                TextMode="MultiLine" Height="133px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un nombre para la Transición <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="vceMessage" runat="server" TargetControlID="rfvMessage"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblStatus" runat="server" CssClass="cssLabelForm">Estado</asp:Label></td>
                        <td colspan="2">
                            <asp:DropDownList ID="cboStatus" runat="server">
                                <asp:ListItem Value="T" Selected="True">Habilitado</asp:ListItem>
                                <asp:ListItem Value="F">Deshabilitado</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <asp:Button ID="btnSave" runat="server" CssClass="cssButton" Text="Crear" OnClick="btnSave_Click" /><asp:Button
                                ID="btnDelete" runat="server" CausesValidation="False" CssClass="cssButton" Text="Eliminar"
                                OnClick="btnDelete_Click" /><asp:Button ID="btnCancel" runat="server" CausesValidation="False"
                                    CssClass="cssButton" Text="Cancelar" OnClick="btnCancel_Click" /></td>
                    </tr>
                </table>
                &nbsp;
            </asp:Panel>
            <ajaxToolkit:ConfirmButtonExtender ID="cbe" runat="server" TargetControlID="btnDelete"
                ConfirmText="Esta Seguro que desea eliminar esta Transición?, esta accion no puede revertirse." />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
