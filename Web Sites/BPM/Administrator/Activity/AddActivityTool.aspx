<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowForm.Master"
    Codebehind="AddActivityTool.aspx.vb" Inherits="BPMWebSite.AddActivityTool"
    Title="Untitled Page" Theme="SoftManagement" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
	
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Panel2" runat="server">
                <asp:HiddenField ID="hfIdTool" runat="server" />
                <table id="Table4" border="0" cellpadding="1" cellspacing="1" class="cssTable" width="98%">
                    <tr>
                        <td align="left" colspan="6">
                            <asp:Label ID="Label19" runat="server" CssClass="cssLabelTitle">Herramienta</asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label1" runat="server" CssClass="cssLabelForm">Tipo de 
                            Herramienta</asp:Label></td>
                        <td colspan="2">
                            <asp:DropDownList ID="cboToolType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboToolType_SelectedIndexChanged">
                            </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblCode" runat="server" CssClass="cssLabelForm">Código</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtCode" runat="server" CssClass="cssTextBoxForm" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="txtCode"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un código para identificar la Actividad  <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" SetFocusOnError="true" />
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
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un nombre para la Actividad <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" SetFocusOnError="true" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="cveNombre" runat="server" TargetControlID="rfvName"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblDescription" runat="server" CssClass="cssLabelForm">Descripción</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="TxtDescription" runat="server" CssClass="cssTextBoxForm" Width="210px"
                                Height="77px" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ControlToValidate="txtDescription"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar una Descripción para la Actividad <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" SetFocusOnError="true" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="cveDescription" runat="server" TargetControlID="rfvDescription"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                     <tr>
                        <td colspan="2">
                            <asp:Label ID="lblURLDataView" runat="server" CssClass="cssLabelForm">URL 
                            DataView</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtURLDataView" runat="server" CssClass="cssTextBoxForm" Width="200px">../../eFormBuilder/Public/buildFormInstance.aspx?</asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvURLDataView" runat="server" ControlToValidate="txtURLDataView"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un costo promedio estimado para la actividad <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" SetFocusOnError="true" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="vceURLDataView" runat="server" TargetControlID="rfvURLDataView"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblMainName" runat="server" CssClass="cssLabelForm">MainName</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtMainName" runat="server" CssClass="cssTextBoxForm" Width="200px">../../eFormBuilder/Public/buildFormInstance.aspx?</asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMainName" runat="server" ControlToValidate="txtMainName"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un costo promedio estimado para la actividad <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" SetFocusOnError="true" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="cveMainName" runat="server" TargetControlID="rfvMainName"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblAgent" runat="server" CssClass="cssLabelForm">Agente</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtAgent" runat="server" CssClass="cssTextBoxForm" Width="200px">VBFormBuilderCOM</asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAgent" runat="server" ControlToValidate="txtAgent"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un costo promedio estimado para la actividad <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" SetFocusOnError="true" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="vceAgent" runat="server"
                                TargetControlID="rfvAgent" Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblMethod" runat="server" CssClass="cssLabelForm">Metodo</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtMethod" runat="server" CssClass="cssTextBoxForm" Width="200px">#</asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMethod" runat="server" ControlToValidate="txtMethod"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un costo promedio estimado para la actividad <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" SetFocusOnError="true" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="vceMethod" runat="server"
                                TargetControlID="rfvMethod" Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label2" runat="server" CssClass="cssLabelForm">Modelo de 
                            Autenticación</asp:Label></td>
                        <td colspan="2">
                            <asp:DropDownList ID="cboSecurityMode" runat="server" AutoPostBack="true"   OnSelectedIndexChanged="cboSecurityMode_SelectedIndexChanged">
                                <asp:ListItem Value="0" Selected="True">No requiere autenticación</asp:ListItem>
                                <asp:ListItem Value="1">Usa el mismo usuario en ambas aplicaciones (Current 
                                Context)</asp:ListItem>
                                <asp:ListItem Value="2">Usa el mismo usuario para representar a todos los 
                                usuarios del workflow (Common Context)</asp:ListItem>
                                <asp:ListItem Value="3">Cada usuario del Workflow se representa por un usuario 
                                de la otra aplicacion (Impersonar)</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblUserDomain" runat="server" CssClass="cssLabelForm">Dominio</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtUserDomain" runat="server" CssClass="cssTextBoxForm" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUserDomain" runat="server" ControlToValidate="txtUserDomain"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un costo promedio estimado para la actividad <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" SetFocusOnError="true" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="vceUserDomain" runat="server"
                                TargetControlID="rfvUserDomain" Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblUserName" runat="server" CssClass="cssLabelForm">Nombre de 
                            Usuario</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtUserName" runat="server" CssClass="cssTextBoxForm" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un costo promedio estimado para la actividad <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" SetFocusOnError="true" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="vceUserName" runat="server"
                                TargetControlID="rfvUserName" Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblUserPassword" runat="server" CssClass="cssLabelForm">Contraseña</asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtUserPassword" runat="server" CssClass="cssTextBoxForm" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUserPassword" runat="server" ControlToValidate="txtUserPassword"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un costo promedio estimado para la actividad <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" SetFocusOnError="true" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="vceUserPassword" runat="server"
                                TargetControlID="rfvUserPassword" Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
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
                </table>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
   
       <asp:UpdatePanel ID="Buttons" runat="server">
        <ContentTemplate>
            <asp:Button ID="btnSave" runat="server" CssClass="cssButton" Text="Crear" OnClick="btnSave_Click" /><asp:Button
                ID="btnDelete" runat="server" CausesValidation="False" CssClass="cssButton" Text="Eliminar" /><asp:Button
                    ID="btnCancel" runat="server" CausesValidation="False" CssClass="cssButton" Text="Cancelar" OnClick="btnCancel_Click" />
            <ajaxToolkit:ConfirmButtonExtender ID="cbe" runat="server" TargetControlID="btnDelete"
                ConfirmText="Esta Seguro que desea eliminar esta actividad?, esta accion no puede revertirse." />
        </ContentTemplate>
    </asp:UpdatePanel>
 
</asp:Content>
