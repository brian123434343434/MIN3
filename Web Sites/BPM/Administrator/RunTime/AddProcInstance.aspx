<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    Codebehind="AddProcInstance.aspx.vb" Inherits="BPMWebSite.AddProcInstance"
    Title="Actualizar información del Proceso" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%>
    <asp:Panel ID="FormPanel" runat="server" BackColor="white">
        <table id="Table1" class="cssTable" cellspacing="1" cellpadding="1" border="0">
            <tr>
                <td align="left" colspan="6" class="cssLabelTitle">
                    <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">Instancia de 
                            Proceso</asp:Label>
                </td>
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
                    <strong>ID</strong>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblId" runat="server" CssClass="cssLabelForm"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 134px">
                    <strong>Tipo de Proceso</strong>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblProcessType" runat="server" CssClass="cssLabelForm"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 134px">
                    <strong>Tipo de Entrada</strong>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblEntryDataType" runat="server" CssClass="cssLabelForm"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 134px">
                    <strong>Datos de Entrada</strong>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblIDEntryData" runat="server" CssClass="cssLabelForm"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 134px">
                    <strong>Dato de Entrada</strong>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblEntryData" runat="server" CssClass="cssLabelForm"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 134px">
                    <strong>Usuario</strong>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblParticipantName" runat="server" CssClass="cssLabelForm"></asp:Label>
                </td>
            </tr>
            <%--<tr>
                        <td colspan="2">
                            Código Interno</td>
                        <td colspan="2">
                            <asp:Label ID="lblInternalCode" runat="server" CssClass="cssLabelForm"></asp:Label></td>
                    </tr>--%>
            <tr>
                <td colspan="2" style="width: 134px">
                    <strong>Secuencia</strong>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblSequence" runat="server" CssClass="cssLabelForm"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" valign="top" style="width: 134px">
                    <strong>Estado</strong>
                </td>
                <td colspan="2">
                    <strong><span style="color: green">Aquí puede cambiar el estado del Proceso.<br />
                        <asp:DropDownList ID="cboStatus" runat="server">
                            <asp:ListItem Value="2">En ejecución</asp:ListItem>
                            <asp:ListItem Value="4">Iniciado</asp:ListItem>
                            <asp:ListItem Value="5" Enabled="false">Abierto no iniciado</asp:ListItem>
                            <asp:ListItem Value="7">Suspendido</asp:ListItem>
                            <asp:ListItem Value="242">Abortado</asp:ListItem>
                            <asp:ListItem Value="244">Terminado</asp:ListItem>
                            <asp:ListItem Value="248">Completado</asp:ListItem>
                        </asp:DropDownList>
                    </span></strong>
                    <asp:ImageButton ID="imgHelpConditionType" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/icon.gif"
                        CausesValidation="false" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 134px">
                    <strong>Creación</strong>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblCreateTime" runat="server" CssClass="cssLabelForm"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 134px">
                    <strong>Inicio</strong>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblStartTime" runat="server" CssClass="cssLabelForm"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 134px">
                    <strong>Finalización</strong>
                </td>
                <td colspan="2">
                    <asp:Label ID="lblEndTime" runat="server" CssClass="cssLabelForm"></asp:Label>
                </td>
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
                    <asp:Button ID="btnSave" runat="server" CssClass="cssButton" Text="Aceptar" OnClick="btnSave_Click">
                    </asp:Button>
                    &nbsp;<asp:Button ID="btnCancel" runat="server" CssClass="cssButton" Text="Cancelar"
                        CausesValidation="False" OnClick="btnCancel_Click"></asp:Button>
                </td>
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
