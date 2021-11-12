<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    Codebehind="AddActInstance.aspx.vb" Inherits="BPMWebSite.AddActInstance"
    Title="Actualizar información de la Actividad" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%>
            <asp:Panel ID="FormPanel" runat="server" BackColor="white">
                <table id="Table1" class="cssTable" cellspacing="1" cellpadding="1" border="0">
                    <tr>
                        <td align="left" colspan="6" class="cssLabelTitle">
                            <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">Instancia de 
                        la Actividad</asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 134px">
                        </td>
                        <td colspan="2">
                            &nbsp;<br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 134px">
                            <strong>
                            ID</strong></td>
                        <td colspan="2">
                            <asp:Label ID="lblId" runat="server" CssClass="cssLabelForm"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 134px">
                            <strong>
                            Actividad</strong></td>
                        <td colspan="2">
                            <asp:Label ID="lblActivityName" runat="server" CssClass="cssLabelForm"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 134px">
                            <strong>
                            Tipo de Actividad</strong></td>
                        <td colspan="2">
                            <asp:Label ID="lblActivityType" runat="server" CssClass="cssLabelForm"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 134px">
                            <strong> Proceso Padre</strong></td>
                        <td colspan="2">
                            <asp:Label ID="lblProcessInstance" runat="server" CssClass="cssLabelForm"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" valign="top" style="width: 134px">
                            <strong>Participante</strong></td>
                        <td colspan="2">
                            <strong><span style="color: green">Aquí puede cambiar el Participante o Rol Asignado 
                            para realizar esta actividad.<br />
                                <asp:DropDownList ID="cboResponsible" runat="server">
                                </asp:DropDownList></span></strong></td>
                    </tr>
                    <tr>
                        <td colspan="2" valign="top" style="width: 134px">
                            <strong>
                            Estado</strong></td>
                        <td colspan="2">
                            <strong><span style="color: green">Aquí puede cambiar el estado de la Actividad.<br />
                            <asp:DropDownList ID="cboStatus" runat="server">
                                <asp:ListItem Value="2">En ejecución</asp:ListItem>
                                <asp:ListItem Value="4">Iniciada</asp:ListItem>
                                <asp:ListItem Value="5" Enabled="false">En espera</asp:ListItem>
                                <asp:ListItem Value="8">Suspendida</asp:ListItem>
                                <asp:ListItem Value="242">Abortada</asp:ListItem>
                                <asp:ListItem Value="244">Terminada</asp:ListItem>
                                <asp:ListItem Value="248">Completada</asp:ListItem>
                            </asp:DropDownList></span></strong><asp:ImageButton ID="imgHelpConditionType" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/icon.gif" CausesValidation="false" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 134px">
                            <strong>
                            Creación</strong></td>
                        <td colspan="2">
                            <asp:Label ID="lblCreateTime" runat="server" CssClass="cssLabelForm"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 134px">
                            <strong>
                            Inicio</strong></td>
                        <td colspan="2">
                            <asp:Label ID="lblStartTime" runat="server" CssClass="cssLabelForm"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 134px">
                            <strong>
                            Finalización</strong></td>
                        <td colspan="2">
                            <asp:Label ID="lblEndTime" runat="server" CssClass="cssLabelForm"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 134px" valign="top">
                            <strong>Comentarios Internos</strong></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtComments" runat="server" Height="104px" TextMode="MultiLine"
                                Width="499px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 134px" valign="top">
                            <strong>Comentarios Externos</strong></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtOutComments" runat="server" Height="104px" TextMode="MultiLine"
                                Width="499px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 134px">
                            </td>
                        <td colspan="2">
                        </td>
                    </tr>
                </table>
                <br />
                <table>
                    <tr>
                        <td colspan="6">
                            <asp:Button ID="btnSave" runat="server" CssClass="cssButton" Text="Aceptar" OnClick="btnSave_Click"></asp:Button>
                            &nbsp;<asp:Button ID="btnCancel" runat="server" CssClass="cssButton" Text="Cancelar"
                                CausesValidation="False" OnClick="btnCancel_Click"></asp:Button></td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <ajaxToolkit:ConfirmButtonExtender ID="cbe" runat="server" TargetControlID="btnSave"
                ConfirmText="Esta Seguro que desea actualizar el estado?">
            </ajaxToolkit:ConfirmButtonExtender>
        <%--</ContentTemplate>
    </asp:UpdatePanel>--%>
    <ajaxToolkit:ModalPopupExtender ID="mpeStatus" runat="server" TargetControlID="imgHelpConditionType"
        PopupControlID="Content2" BackgroundCssClass="modalBackground" DropShadow="true"
        OkControlID="OkButton" OnOkScript="" PopupDragHandleControlID="Content2" />
    <asp:Panel ID="Content2" runat="server" CssClass="modalPopup" Style="display: none">
        <table width="600px" height="300px" cellpadding="5" cellspacing="5">
            <tr>
                <td valign="top">
                    <span style="color: #800000"><b>En ejecución</b></span><br />
                    En este estado se encuentran las tareas asignadas a ese usuario. Tareas en las cuales
                    el usuario es el Responsable de su ejecución.
                    <br />
                    <br />
                    <span style="color: #800000"><b>Iniciado</b></span><br />
                    En este estado se encuentran las tareas que están siendo gestionadas para su ejecución
                    y finalización.
                    <br />
                    <br />
                    <span style="color: #800000"><b>Suspendidas, Abortadas y/o Terminadas</b></span><br />
                    Estos estados son producto de factores externos, errores de asignación u otros y
                    solo son asignados por un usuario Administrador; dicho cambio se realiza en el módulo
                    de Administración de Procesos.
                    <br />
                    <br />
                    <span style="color: #800000"><b>Completas</b></span><br />
                    En esta bandeja se encuentran todas las tareas ejecutadas o finalizadas
                    <br />
                    <br />
                    <div align="center">
                        <asp:Button ID="OkButton" runat="server" Text="Volver" CausesValidation="false" />
                    </div>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
