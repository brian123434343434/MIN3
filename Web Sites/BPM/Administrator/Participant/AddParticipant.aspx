<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="AddParticipant.aspx.vb" Inherits="BPMWebSite.AddParticipant" Title="Adicionar Participantes"
    Theme="SoftManagement" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register assembly="SCS.PickList" namespace="SCS.Web.UI.WebControls" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="FormPanel" runat="server" BackColor="white">
                <table id="Table1" width="100%" class="cssTable" cellspacing="1" cellpadding="1"
                    border="0">
                    <tr>
                        <td align="left" colspan="2" class="cssLabelTitle">
                            <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">Participante</asp:Label><br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 170px" >
                            <asp:Label ID="Label1" runat="server" CssClass="cssLabelForm">Tipo de Participante</asp:Label>
                        </td>
                        <td >
                            <asp:DropDownList ID="cboParticipantType" runat="server" AutoPostBack="true" >
                                <asp:ListItem Selected="True" Value="-1">Seleccione un Tipo de Participante</asp:ListItem>
                                <asp:ListItem Value="1">Usuario</asp:ListItem>
                                <asp:ListItem Value="2">Grupo de Participantes</asp:ListItem>
                                <asp:ListItem Value="3" Enabled="false">Unidad Organizacional</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 170px" >
                            <asp:Label ID="lblCode" runat="server" CssClass="cssLabelForm">Código</asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="txtCode" runat="server" Width="200px" CssClass="cssTextBoxForm"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCode" runat="server" CssClass="cssRequired" Display="None"
                                ErrorMessage="* Debe digitar un código para identificar la Condición  <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                ControlToValidate="txtCode"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender ID="cveCode" runat="server" Width="350px" TargetControlID="rfvCode"
                                CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                HighlightCssClass="highlight">
                            </ajaxToolkit:ValidatorCalloutExtender>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" CssClass="cssRequired" Display="None"
                                ErrorMessage="* Debe digitar un nombre para la moneda <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                ControlToValidate="txtName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 170px" >
                            <asp:Label ID="lblName" runat="server" CssClass="cssLabelForm">Nombre</asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="txtName" runat="server" Width="200px" CssClass="cssTextBoxForm"></asp:TextBox>
                            <ajaxToolkit:ValidatorCalloutExtender ID="cveNombre" runat="server" Width="350px"
                                TargetControlID="rfvName" CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif"
                                WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif" HighlightCssClass="highlight">
                            </ajaxToolkit:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 170px" >
                            <asp:Label ID="lblDescription" runat="server" CssClass="cssLabelForm">Descripción</asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="txtDescription" runat="server" Width="200px" CssClass="cssTextBoxForm"
                                TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDescription" runat="server" CssClass="cssRequired"
                                Display="None" ErrorMessage="* Debe digitar un prefijo para la moneda <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
                            <ajaxToolkit:ValidatorCalloutExtender ID="vceDescription" runat="server" Width="350px"
                                TargetControlID="rfvDescription" CloseImageUrl="~/App_Themes/GattacaAdmin/Images/Template/close.gif"
                                WarningIconImageUrl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif" HighlightCssClass="highlight">
                            </ajaxToolkit:ValidatorCalloutExtender>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 170px" >
                            <asp:Label ID="lblStatus" runat="server" CssClass="cssLabelForm">Estado</asp:Label>
                        </td>
                        <td >
                            <asp:DropDownList ID="cboStatus" runat="server">
                                <asp:ListItem Value="T" Selected="True">Habilitado</asp:ListItem>
                                <asp:ListItem Value="F">Deshabilitado</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                </table>


                <asp:UpdatePanel ID="pnRelated" runat="server" Visible="false">
                    <ContentTemplate>
                        <table width="100%">
                            <tr>
                                <td style="width: 170px" >
                                    <asp:Label ID="Label3" runat="server" CssClass="cssLabelForm">Información Relacionada</asp:Label>
                                </td>
                                <td >
                                    <asp:DropDownList ID="cboRelated" runat="server" >
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
                
                <asp:UpdatePanel ID="pnPickList" runat="server" Visible="false">
                    <ContentTemplate>
                        <table width="700">
                            <tr>
                                <td>
                                    <cc1:PickList ID="plParticipants" AddAllButtonText="Agregar Todas >>" RemoveAllButtonText="<< Eliminar todas"
                                        runat="server" AddButtonText="Agregar >>" RemoveButtonText="<< Eliminar" Width="100%"
                                        DisplayAddAllButton="True" DisplayRemoveAllButton="True" Rows="10" AvailableLabelText="Participantes Disponibles: " CurrentLabelText="Participantes Seleccionados: ">
                                        <AddButtonStyle Font-Size="X-Small" Width="90px" />
                                        <AddAllButtonStyle Font-Size="X-Small" Width="90px" />
                                        <RemoveButtonStyle Font-Size="X-Small" Width="90px" />
                                        <RemoveAllButtonStyle Font-Size="X-Small" Width="90px" />
                                        <AvailableLabelStyle Width="90px" Font-Bold="True" Font-Names="Arial" Font-Overline="False"
                                            ForeColor="Red" />
                                        <SelectedLabelStyle Font-Bold="True" Font-Names="Arial" ForeColor="Red" />
                                        <AvailableListBoxStyle Width="100%" Font-Bold="False" Font-Names="Arial" />
                                        <SelectedListBoxStyle Width="100%" Font-Names="Arial" />
                                    </cc1:PickList>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <table width="100%">
                    <tbody>
                        <tr>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnSave" OnClick="btnSave_Click" runat="server" CssClass="cssButton"
                                    Text="Crear"></asp:Button><asp:Button ID="btnDelete" OnClick="btnDelete_Click" runat="server"
                                        CssClass="cssButton" Text="Eliminar" CausesValidation="False"></asp:Button><asp:Button
                                            ID="btnCancel" OnClick="btnCancel_Click" runat="server" CssClass="cssButton"
                                            Text="Cancelar" CausesValidation="False"></asp:Button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </asp:Panel>
            <ajaxToolkit:ConfirmButtonExtender ID="cbe" runat="server" TargetControlID="btnDelete"
                ConfirmText="Esta Seguro que desea eliminar este Participante?, esta accion no puede revertirse.">
            </ajaxToolkit:ConfirmButtonExtender>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
