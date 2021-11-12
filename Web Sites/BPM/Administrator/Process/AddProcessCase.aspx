<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    Codebehind="AddProcessCase.aspx.vb" Inherits="BPMWebSite.AddProcessCase"
    Title="Adicionar Casos de Proceso" Theme="SoftManagement" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Panel ID="FormPanel" runat="server" BackColor="white">
        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0">
            <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
                <HeaderTemplate>
                    Configuración Básica
                </HeaderTemplate>
                <ContentTemplate>
                    <table id="Table1" class="cssTable" cellspacing="1" cellpadding="1" border="0">
                        <tbody>
                            <tr>
                                <td align="left" colspan="6" class="cssLabelTitle">
                                    <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">Caso de Proceso</asp:Label><br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="Label3" runat="server" Text="Tipo de Proceso"></asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:DropDownList ID="cboProcess" runat="server" OnSelectedIndexChanged="cboProcess_SelectedIndexChanged"
                                        AutoPostBack="True">
                                    </asp:DropDownList>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="cboProcess"
                                        Display="Dynamic" ErrorMessage="* Debe seleccionar un tipo de proceso" MaximumValue="99999"
                                        MinimumValue="1"></asp:RangeValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblCode" runat="server" CssClass="cssLabelForm">Código</asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:TextBox ID="txtCode" runat="server" Width="200px" CssClass="cssTextBoxForm"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCode" runat="server" CssClass="cssRequired" Display="None"
                                        ErrorMessage="* Debe digitar un código para el caso de proceso <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                        ControlToValidate="txtCode"></asp:RequiredFieldValidator>
                                    <br />
                                    <ajaxToolkit:ValidatorCalloutExtender ID="cveCode" runat="server" Width="350px" TargetControlID="rfvCode"
                                        Enabled="True" HighlightCssClass="highlight" CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif"
                                        WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif">
                                    </ajaxToolkit:ValidatorCalloutExtender>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblName" runat="server" CssClass="cssLabelForm">Nombre</asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:TextBox ID="txtName" runat="server" Width="200px" CssClass="cssTextBoxForm"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvName" runat="server" CssClass="cssRequired" Display="None"
                                        ErrorMessage="* Debe digitar un nombre para el caso de proceso <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                        ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                    <ajaxToolkit:ValidatorCalloutExtender ID="cveNombre" runat="server" Width="350px"
                                        TargetControlID="rfvName" Enabled="True" HighlightCssClass="highlight" CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif"
                                        WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif">
                                    </ajaxToolkit:ValidatorCalloutExtender>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblDescription" runat="server" CssClass="cssLabelForm">Descripción</asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:TextBox ID="txtDescription" runat="server" Width="200px" CssClass="cssTextBoxForm"
                                        TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvDescription" runat="server" CssClass="cssRequired"
                                        Display="None" ErrorMessage="* Debe digitar una descripción para el caso de proceso <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                        ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
                                    <ajaxToolkit:ValidatorCalloutExtender ID="vceDescription" runat="server" Width="350px"
                                        TargetControlID="rfvDescription" Enabled="True" HighlightCssClass="highlight"
                                        CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif">
                                    </ajaxToolkit:ValidatorCalloutExtender>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="Label6" runat="server" Text="EntryDataType"></asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:DropDownList ID="cboEntryDataType" runat="server">
                                        <asp:ListItem Selected="True">Gattaca FormBuilder</asp:ListItem>
                                        <asp:ListItem Value="ClientSoftware">Client Software</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="Label5" runat="server" Text="EntryData"></asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:TextBox ID="txtEntryData" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvEntryData" runat="server" CssClass="cssRequired"
                                        Display="None" ErrorMessage="* Debe digitar un dato de  entrada para este caso de proceso <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                        ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                    <ajaxToolkit:ValidatorCalloutExtender ID="vceEntryData" runat="server" Width="350px"
                                        TargetControlID="rfvEntryData" Enabled="True" HighlightCssClass="highlight" CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif"
                                        WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif">
                                    </ajaxToolkit:ValidatorCalloutExtender>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="Label4" runat="server" Text="Correo Electrónico asociado al proceso"></asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:TextBox ID="txtMail" runat="server" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblStatus" runat="server" CssClass="cssLabelForm">Estado</asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:DropDownList ID="cboStatus" runat="server">
                                        <asp:ListItem Selected="True" Value="T">Habilitado</asp:ListItem>
                                        <asp:ListItem Value="F">Deshabilitado</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;</td>
                                <td colspan="2">
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel2" ID="TabPanel2">
                <HeaderTemplate>
                    Configuración Avanzada
                </HeaderTemplate>
                <ContentTemplate>
                    <table>
                        <tbody>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label1" runat="server" Text="Unidad de Duración"></asp:Label>
                                </td>
                                <td style="width: 135px">
                                    <asp:DropDownList ID="cboDurationUnit" runat="server" Width="152px">
                                        <asp:ListItem Value="0">A&#241;o</asp:ListItem>
                                        <asp:ListItem Value="2">Mes</asp:ListItem>
                                        <asp:ListItem Selected="True" Value="4">D&#237;a</asp:ListItem>
                                        <asp:ListItem Value="7">Hora</asp:ListItem>
                                        <asp:ListItem Value="8">Minuto</asp:ListItem>
                                        <asp:ListItem Value="9">Segundo</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label2" runat="server" Text="Duración"></asp:Label>
                                </td>
                                <td style="width: 135px">
                                    <asp:TextBox ID="txtDuration" runat="server" Width="190px" MaxLength="5" onKeyPress="if (((event.keyCode < 48) ||  (event.keyCode> 57))) event.returnValue = false;"></asp:TextBox>
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 135px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label11" runat="server" Text="Proceso vigente desde:"></asp:Label>
                                </td>
                                <td style="width: 135px">
                                    <asp:TextBox ID="txtFromDate" runat="server" Width="190px"></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender ID="ceFromDate" runat="server" TargetControlID="txtFromDate"
                                        Enabled="True" Format="yyyy-MM-dd">
                                    </ajaxToolkit:CalendarExtender>
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label12" runat="server" Text="Proceso vigente hasta:"></asp:Label>
                                </td>
                                <td style="width: 135px">
                                    <asp:TextBox ID="txtToDate" runat="server" Width="190px"></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender ID="ceToDate" runat="server" TargetControlID="txtToDate"
                                        Enabled="True" Format="yyyy-MM-dd">
                                    </ajaxToolkit:CalendarExtender>
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 135px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 135px">
                                    &nbsp;</td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label7" runat="server" Text="URL Ayuda"></asp:Label>
                                </td>
                                <td style="width: 135px">
                                    <asp:TextBox ID="txtURLAyuda" runat="server" Width="250px">#</asp:TextBox>
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label8" runat="server" Text="URL Service"></asp:Label>
                                </td>
                                <td style="width: 135px">
                                    <asp:TextBox ID="txtURLService" runat="server" Width="250px">../../eFormBuilder/security/applicationLogin.aspx?type=startprocess&</asp:TextBox>
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label10" runat="server" Text="URL DataView"></asp:Label>
                                </td>
                                <td style="width: 135px">
                                    <asp:TextBox ID="txtURLDataView" runat="server" Width="250px">../../eFormBuilder/security/applicationLogin.aspx?type=startprocess&</asp:TextBox>
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 135px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label9" runat="server" Text="Politica de Notificaciones"></asp:Label>
                                </td>
                                <td style="width: 135px">
                                    <asp:DropDownList ID="cboMessagePolicy" runat="server" Width="257px">
                                    </asp:DropDownList>
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <br />
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
        </ajaxToolkit:TabContainer>
        <br />
        <asp:Button ID="btnSave" OnClick="btnSave_Click" runat="server" CssClass="cssButton"
            Text="Crear"></asp:Button>&nbsp;<asp:Button ID="btnDelete" OnClick="btnDelete_Click" runat="server"
                CssClass="cssButton" Text="Eliminar" CausesValidation="False"></asp:Button>
        &nbsp;<asp:Button ID="btnCancel" OnClick="btnCancel_Click" runat="server" CssClass="cssButton"
            Text="Cancelar" CausesValidation="False"></asp:Button>
    </asp:Panel>
    <ajaxToolkit:ConfirmButtonExtender ID="cbe" runat="server" TargetControlID="btnDelete"
        ConfirmText="Esta Seguro que desea eliminar este Caso de Proceso?, esta accion no puede revertirse.">
    </ajaxToolkit:ConfirmButtonExtender>
</asp:Content>
