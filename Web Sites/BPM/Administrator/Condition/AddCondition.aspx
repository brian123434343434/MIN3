<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="AddCondition.aspx.vb" Inherits="BPMWebSite.AddCondition" Title="Adicionar Condición"
    Theme="SoftManagement" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="FormPanel" runat="server" BackColor="white">
                <table id="Table1" border="0" cellpadding="1" cellspacing="1" class="cssTable">
                    <tr>
                        <td align="left" colspan="6" class="cssLabelTitle">
                            <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">Condición</asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" width="150px">
                            <asp:Label ID="Label1" runat="server" CssClass="cssLabelForm">Tipo de Condición</asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:DropDownList ID="cboConditionType" runat="server" OnSelectedIndexChanged="cboConditionType_SelectedIndexChanged"
                                AutoPostBack="true" Width="205px">
                                <asp:ListItem Value="0" Selected="True">Manual</asp:ListItem>
                                <asp:ListItem Value="1" Enabled="false">Manual con Umbral</asp:ListItem>
                                <asp:ListItem Value="2">Manual con Herramienta</asp:ListItem>
                                <asp:ListItem Value="3">Automatica con FormBuilder</asp:ListItem>
                                <asp:ListItem Value="4">Automatica con Desarrollo</asp:ListItem>
                                <asp:ListItem Value="5">Automatica Invocando WebService</asp:ListItem>
                                <asp:ListItem Value="6">De asignación de responsable</asp:ListItem>
                            </asp:DropDownList>
                            <asp:ImageButton ID="imgHelpConditionType" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/icon.gif"
                                CausesValidation="false" />
                            <ajaxToolkit:ModalPopupExtender ID="mpeTC" runat="server" TargetControlID="imgHelpConditionType"
                                PopupControlID="Content2" BackgroundCssClass="modalBackground" DropShadow="true"
                                OkControlID="OkButton" OnOkScript="" PopupDragHandleControlID="Content2" />
                            <asp:Panel ID="Content2" runat="server" CssClass="modalPopup" Style="display: none">
                                <table width="600px" height="300px" cellpadding="5" cellspacing="5">
                                    <tr>
                                        <td>
                                            <div align="center">
                                                <span style="color: #800000"><b>Tipo de Condición</b></span></div>
                                            <br />
                                            <span style="color: #800000"><b>Manual</b></span><br />
                                            El usuario la selecciona<br />
                                            <%--<span style="color: #800000"><b>Manual con Umbral</b></span><br />
                                            Se utiliza para aumentar o disminuir el valor de un umbral para una transición.
                                            <br />--%>
                                            <span style="color: #800000"><b>Manual con Herramienta</b></span><br />
                                            Es una condición que el usuario debe seleccionar pero que esta asociada a una herramienta
                                            de software asociada a la actividad<br />
                                            <span style="color: #800000"><b>Automatica con FormBuilder</b></span><br />
                                            Evalua la condición contra los datos ingresados en un formulario<br />
                                            Al utilizar el eFormBuilder V83, el valor de la descripción hace referencia a la
                                            dirección del WebService del eFormBuilder<br />
                                            <span style="color: #800000"><b>Automatica con Desarrollo</b></span><br />
                                            Evalua la condición contra los datos ingresados en otro sistema de información<br />
                                            <span style="color: #800000"><b>Automatica Invocando WebService</b></span><br />
                                            Evalua la condición contra los datos retornados por WebService
                                            asociados al workflow en una actividad automatica<br />
                                            El dato resultante del WebService debe tener la estructura XML definida para el BPM<br />
                                            <span style="color: #800000"><b>De asignación de responsable</b></span><br />
                                            Se usa para determinar quien será el responsable de una actividad.<br />
                                            <br />
                                            <div align="center">
                                                <asp:Button ID="OkButton" runat="server" Text="Volver" CausesValidation="false" />
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" width="150px">
                            <asp:Label ID="lblCode" runat="server" CssClass="cssLabelForm">Código</asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtCode" runat="server" CssClass="cssTextBoxForm" Width="200px"></asp:TextBox>
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
                            <asp:TextBox ID="txtName" runat="server" CssClass="cssTextBoxForm" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un nombre para la condición <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="cveNombre" runat="server" TargetControlID="rfvName"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" valign="top">
                            <asp:Label ID="lblDescription" runat="server" CssClass="cssLabelForm">Descripción</asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="txtDescription" runat="server" Columns="50" 
                                TextMode="MultiLine" Height="100px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ControlToValidate="txtDescription"
                                CssClass="cssRequired" ErrorMessage="* Debe digitar un prefijo para la condición <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                Display="None" />
                            <ajaxToolkit:ValidatorCalloutExtender ID="vceDescription" runat="server" TargetControlID="rfvDescription"
                                Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblStatus" runat="server" CssClass="cssLabelForm">Estado</asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:DropDownList ID="cboStatus" runat="server" Width="205px">
                                <asp:ListItem Value="T" Selected="True">Habilitado</asp:ListItem>
                                <asp:ListItem Value="F">Deshabilitado</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                </table>

                <asp:UpdatePanel ID="pnAutoCompletion" runat="server" Visible="true">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td colspan="2" width="150px">
                                    <asp:Label ID="Label2" runat="server" CssClass="cssLabelForm">Automática por Servicio</asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:CheckBox ID="chkAutoCompletion" runat="server" Text="" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <asp:UpdatePanel ID="pnWeight" runat="server" Visible="false">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td colspan="2" width="150px">
                                    <asp:Label ID="Label3" runat="server" CssClass="cssLabelForm">Peso de la 
                                    Condición</asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:TextBox ID="txtWeight" runat="server" CssClass="cssTextBoxForm" Width="200px"
                                        Text="0"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvWeight" runat="server" ControlToValidate="txtWeight"
                                        CssClass="cssRequired" ErrorMessage="* Debe digitar un prefijo para la condición <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                        Display="None" />
                                    <ajaxToolkit:ValidatorCalloutExtender ID="vceWeight" runat="server" TargetControlID="rfvWeight"
                                        Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                        CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="pnRule" runat="server" Visible="false">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td colspan="2" width="150px" valign="top">
                                    <asp:Label ID="Label5" runat="server" CssClass="cssLabelForm">Regla de la 
                                    Condición</asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:TextBox ID="txtRule" runat="server"
                                        TextMode="MultiLine" Columns="50" Height="100px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvRule" runat="server" ControlToValidate="txtRule"
                                        CssClass="cssRequired" ErrorMessage="* Debe digitar un prefijo para la condición <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                        Display="None" />
                                    <ajaxToolkit:ValidatorCalloutExtender ID="vceRule" runat="server" TargetControlID="rfvRule"
                                        Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                        CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="Label7" runat="server" CssClass="cssLabelForm">BD asociado a la 
                                    condición</asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:TextBox ID="txtDB" runat="server" CssClass="cssTextBoxForm" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvDB" runat="server" ControlToValidate="txtDB" CssClass="cssRequired"
                                        ErrorMessage="* Debe digitar un prefijo para la condición <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                        Display="None" />
                                    <ajaxToolkit:ValidatorCalloutExtender ID="vceDB" runat="server" TargetControlID="rfvDB"
                                        Width="350px" HighlightCssClass="highlight" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                        CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="pnTool" runat="server" Visible="false">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td colspan="2" width="150px">
                                    <asp:Label ID="Label6" runat="server" CssClass="cssLabelForm">Herramienta 
                                    asociada</asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:DropDownList ID="cboTool" runat="server">
                                        <asp:ListItem Value="0" Text="Selecciones una Herramienta" Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <asp:CheckBox ID="chkisRequiered" runat="server" Text="Es Obligatoria" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="pnFormBuilder" runat="server" Visible="false">
                    <ContentTemplate>
                        <br />
                        <b>Formulario asociado a la actividad</b>
                        <table>
                            <tr>
                                <td colspan="2" width="150px">
                                    Actividad
                                </td>
                                <td colspan="2">
                                    <asp:DropDownList ID="ddlActivityRelated" runat="server" Width="300px">
                                        <asp:ListItem Value="-1" Text="Seleccione una actividad" Selected="True"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:ImageButton ID="imgHelpActivityForm" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/icon.gif"
                                        CausesValidation="false" />
                                </td>
                            </tr>
                        </table>
                        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="imgHelpActivityForm"
                            PopupControlID="Content3" BackgroundCssClass="modalBackground" DropShadow="true"
                            OkControlID="OkButton" OnOkScript="" PopupDragHandleControlID="Content3" />
                        <asp:Panel ID="Content3" runat="server" CssClass="modalPopup" Style="display: none">
                            <table width="600px" height="300px" cellpadding="5" cellspacing="5">
                                <tr>
                                    <td>
                                        <div align="center">
                                            <span style="color: #800000"><b>Formulario asociado a la actividad</b></span>
                                        <br />
                                        <b>Este opción solo aplica para la versión 8.3 del eFormbuilder</b><br /></div>
                                        <br />
                                        <span style="color: #800000"><b>Descripción</b></span>
                                        <br />
                                        El valor de la descripción hace referencia a la dirección del WebService.
                                        <br />
                                        <span style="color: #800000"><b>Regla de la Condición</b></span>
                                        <br />
                                        Evalua la condición contra los datos ingresados en un formulario definido por la
                                        siguiente estructura.
                                        <ul>
                                            <li>Se evalua el Id del campo del Formulario con un operador contra el valor ingresado
                                                por el usuario separado por coma (,)<br />
                                                Ejemplo: 12,=,Aprovado</li>
                                            <li>Cuando las operaciones son entre datos numéricos podemos aplicar los siguientes
                                                operadores<br />
                                                <ul>
                                                    <li>Igual '=', Mayor que '>', Menor que'<', Mayor igual'>=', Menor igual'<=', Diferente'<>'</li></ul>
                                            </li>
                                        </ul>
                                        <span style="color: #800000"><b>Actividad </b></span>
                                        <br />
                                        Seleccione la actividad en la cual se encuentra el formulario asociado para validar
                                        la condición.
                                        <br />
                                        <br />
                                        <div align="center">
                                            <asp:Button ID="Button1" runat="server" Text="Volver" CausesValidation="false" />
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <table>
                    <tr>
                        <td colspan="6">
                            <asp:Button ID="btnSave" runat="server" CssClass="cssButton" Text="Crear" OnClick="btnSave_Click" />
                            &nbsp;<asp:Button
                                ID="btnDelete" runat="server" CausesValidation="False" CssClass="cssButton" Text="Eliminar"
                                OnClick="btnDelete_Click" />&nbsp;<asp:Button ID="btnCancel" runat="server" CausesValidation="False"
                                    CssClass="cssButton" Text="Cancelar" OnClick="btnCancel_Click" />
                        </td>
                    </tr>
                </table>
                &nbsp;</asp:Panel>
            <ajaxToolkit:ConfirmButtonExtender ID="cbe" runat="server" TargetControlID="btnDelete"
                ConfirmText="Esta Seguro que desea eliminar esta condición?, esta accion no puede revertirse." />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
