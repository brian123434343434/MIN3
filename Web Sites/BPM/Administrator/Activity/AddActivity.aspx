<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="AddActivity.aspx.vb" Inherits="BPMWebSite.AddActivity" Title="Adicionar Actividades"
    Theme="SoftManagement" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Panel2" runat="server">
                <table id="Table4" class="cssTable" cellspacing="1" cellpadding="1" border="0">
                    <tbody>
                        <tr>
                            <td align="left" colspan="6" class="cssLabelTitle">
                                <asp:Label ID="Label19" runat="server" CssClass="cssLabelTitle">Actividad</asp:Label>
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
                            </td>
                            <td colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label1" runat="server" CssClass="cssLabelForm">Tipo de 
                                Implementación</asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:DropDownList ID="cboActivityType" runat="server" OnSelectedIndexChanged="cboActivityType_SelectedIndexChanged"
                                    AutoPostBack="True">
                                    <asp:ListItem Selected="True" Value="-1">Seleccione el tipo de Actividad</asp:ListItem>
                                    <asp:ListItem Value="0">Manual - Participante</asp:ListItem>
                                    <asp:ListItem Value="4">Manual usando una Herramienta</asp:ListItem>
                                    <asp:ListItem Value="3">Manual - Ciclo</asp:ListItem>
                                    <asp:ListItem Value="1">Automatica toma de decisiones</asp:ListItem>
                                    <asp:ListItem Value="5">Automatica invocando Herramienta</asp:ListItem>
                                    <asp:ListItem Value="2">Automatica - Subproceso</asp:ListItem>
                                </asp:DropDownList>
                                <asp:ImageButton ID="imgHelpConditionType" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/icon.gif"
                                    CausesValidation="false" />
                                <ajaxtoolkit:modalpopupextender id="mpeTC" runat="server" targetcontrolid="imgHelpConditionType"
                                    popupcontrolid="Content2" backgroundcssclass="modalBackground" dropshadow="true"
                                    okcontrolid="OkButton" onokscript="" popupdraghandlecontrolid="Content2" />
                                <asp:Panel ID="Content2" runat="server" CssClass="modalPopup" Style="display: none">
                                    <table width="600px" height="300px" cellpadding="5" cellspacing="5">
                                        <tr>
                                            <td>
                                                <div align="center">
                                                    <span style="color: #800000"><b>Tipo de Implementación</b></span></div>
                                                <br />
                                                <span style="color: #800000"><b>Manual - Participante</b></span><br />
                                                No tiene implementación.<br />
                                                * Un participante ejecuta la actividad usando la página workitem por defecto.<br />
                                                * Si marca la opcion para "Permitir la finalización automática por tiempo y seguimiento por condición"
                                                Esta actividad se finaliza automaticamente al cumplir el plazo máximo de ejecución, tomando como respuesta
                                                la condición que se haya marcado como "Automática por Servicio".
                                                <br />
                                                <span style="color: #800000"><b>Manual usando una Herramienta</b></span><br />
                                                La actividad la ejecuta el responsable pero usando una página personalizada.<br />
                                                * La página personalizada es un desarrollo realizado fuera del workflow que puede
                                                estar en otra aplicación o incluso en otro dominio.
                                                <br />
                                                <span style="color: #800000"><b>Manual - Ciclo</b></span><br />
                                                La actividad se ejecuta en un loop hasta que se da la condición de salida.
                                                <br />
                                                <span style="color: #800000"><b>Automatica toma de decisiones</b></span><br />
                                                La actividad la ejecuta el motor de workflow usando las condiciones habilitadas
                                                para actividades automaticas..
                                                <br />
                                                <span style="color: #800000"><b>Automatica invocando Herramienta</b></span><br />
                                                La actividad la ejecuta el motor de workflow pero invocando una herramienta externa.<br />
                                                * Actualmente solo se evalua la correcta ejecución de la herramienta externa, si
                                                esta se ejecuto correctamente la actividad retorna un valor de condicion 0 - Actividad
                                                completa, ejecutada correctamente para la evaluación de la transición.<br />
                                                2do. que la actividad retorne un valor y con ese se evalue la condición que se esta
                                                cumpliendo.
                                                <br />
                                                <span style="color: #800000"><b>Automatica - Subproceso</b></span><br />
                                                La Actividad dispara de forma automatica un subproceso.<br />
                                                * Los datos que se adjuntan al subproceso son los mismos que se adjuntaron en el
                                                proceso original.
                                                <br />
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
                            <td colspan="2">
                                <asp:Label ID="lblCode" runat="server" CssClass="cssLabelForm">Código</asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtCode" runat="server" Width="200px" CssClass="cssTextBoxForm"
                                    MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCode" runat="server" CssClass="cssRequired" SetFocusOnError="true"
                                    Display="None" ErrorMessage="* Debe digitar un código para identificar la Actividad  <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                    ControlToValidate="txtCode"></asp:RequiredFieldValidator>
                                <ajaxtoolkit:validatorcalloutextender id="cveCode" runat="server" width="350px" closeimageurl="~/App_Themes/GattacaAdmin/Images/Template/close.gif"
                                    warningiconimageurl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif" highlightcssclass="highlight"
                                    targetcontrolid="rfvCode">
                                </ajaxtoolkit:validatorcalloutextender>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblName" runat="server" CssClass="cssLabelForm">Nombre</asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtName" runat="server" Width="200px" CssClass="cssTextBoxForm"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvName" runat="server" CssClass="cssRequired" SetFocusOnError="true"
                                    Display="None" ErrorMessage="* Debe digitar un nombre para la Actividad <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                    ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                <ajaxtoolkit:validatorcalloutextender id="cveNombre" runat="server" width="350px"
                                    closeimageurl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" warningiconimageurl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                    highlightcssclass="highlight" targetcontrolid="rfvName">
                                </ajaxtoolkit:validatorcalloutextender>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblDescription" runat="server" CssClass="cssLabelForm">Descripción</asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="TxtDescription" runat="server" Height="77px" Width="210px" CssClass="cssTextBoxForm"
                                    TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvDescription" runat="server" CssClass="cssRequired"
                                    SetFocusOnError="true" Display="None" ErrorMessage="* Debe digitar una Descripción para la Actividad <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                    ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
                                <ajaxtoolkit:validatorcalloutextender id="cveDescription" runat="server" width="350px"
                                    closeimageurl="~/App_Themes/GattacaAdmin/Images/Template/close.gif" warningiconimageurl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif"
                                    highlightcssclass="highlight" targetcontrolid="rfvDescription">
                                </ajaxtoolkit:validatorcalloutextender>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label6" runat="server" CssClass="cssLabelForm">Costo</asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtCost" runat="server" Width="200px" CssClass="cssTextBoxForm"
                                    Text="0"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCost" runat="server" CssClass="cssRequired" SetFocusOnError="true"
                                    Display="None" ErrorMessage="* Debe digitar un costo promedio estimado para la actividad <div style='margin-top:5px;padding:5px;border:1px solid #e9e9e9;background-color:white;'><b>Si Requiere ayuda:</b><br /><a href='javascript:alert(&quot;No phone number available in profile.&quot;);'>Ver Ayuda</a></div>"
                                    ControlToValidate="txtCost"></asp:RequiredFieldValidator>
                                <ajaxtoolkit:validatorcalloutextender id="cveCost" runat="server" width="350px" closeimageurl="~/App_Themes/GattacaAdmin/Images/Template/close.gif"
                                    warningiconimageurl="~/App_Themes/GattacaAdmin/Images/Template/warning.gif" highlightcssclass="highlight"
                                    targetcontrolid="rfvCost">
                                </ajaxtoolkit:validatorcalloutextender>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label11" runat="server" CssClass="cssLabelForm">Modelo de 
                                Creación de la Actividad (Join)</asp:Label>
                            </td>
                            <td colspan="2">
                                &nbsp;<asp:RadioButtonList ID="rdoJoin" runat="server">
                                    <asp:ListItem Selected="True" Value="0">No esperar y crear la actividad 
                                    inmediatamente</asp:ListItem>
                                    <asp:ListItem Value="2">Esperar a que se complete alguna de las actividades 
                                    anteriores (XOR)</asp:ListItem>
                                    <asp:ListItem Value="1">Esperar a que se completen todas las actividades 
                                    anteriores (AND)</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label12" runat="server" CssClass="cssLabelForm">Modelo de 
                                Creación de las Actividades Siguientes (Split)</asp:Label>
                            </td>
                            <td colspan="2">
                                &nbsp;<br />
                                <asp:RadioButtonList ID="rdoSplit" runat="server">
                                    <asp:ListItem Selected="True" Value="0">Crear siempre la siguiente actividad</asp:ListItem>
                                    <asp:ListItem Value="2">Crear alguna de las actividades siguientes (XOR)</asp:ListItem>
                                    <asp:ListItem Value="1">Crear todas las actividades siguientes (AND)</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label18" runat="server" CssClass="cssLabelForm">Politica de 
                                Notificaciones del resultado de la Actividad</asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:DropDownList ID="cboMessagePolicy" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label2" runat="server" CssClass="cssLabelForm">Politica de 
                                Notificaciones del vencimiento Actividad</asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:DropDownList ID="ddlNotificationPolicy" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label4" runat="server" CssClass="cssLabelForm">Minutos antes del vencimiento de la Actividad</asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtNotificationTime" runat="server" Width="200px" CssClass="cssTextBoxForm"
                                    Text="0" MaxLength="10" onKeyPress="if (((event.keyCode < 48) ||  (event.keyCode> 57))) event.returnValue = false;"></asp:TextBox>
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
                    </tbody>
                </table>
            </asp:Panel>
            <asp:UpdatePanel ID="ManualActivity" runat="server" Visible="False">
                <ContentTemplate>
                    <asp:Panel ID="DurationPanel" runat="server" BackColor="white">
                        <table id="Table1" class="cssTable" cellspacing="1" cellpadding="1" border="0">
                            <tbody>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblDurationUnit" runat="server" CssClass="cssLabelForm">Unidad de 
                                        Duración</asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:DropDownList ID="cboDurationUnit" runat="server">
                                            <asp:ListItem Value="0">Años</asp:ListItem>
                                            <asp:ListItem Value="2">Meses</asp:ListItem>
                                            <asp:ListItem Value="4" Selected="True">Días</asp:ListItem>
                                            <asp:ListItem Value="7">Horas</asp:ListItem>
                                            <asp:ListItem Value="8">Minutos</asp:ListItem>
                                            <asp:ListItem Value="9">Segundos</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label7" runat="server" CssClass="cssLabelForm">Duración</asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:TextBox ID="txtDuration" runat="server" Width="200px" CssClass="cssTextBoxForm"
                                            Text="1" onKeyPress="if (((event.keyCode < 48) ||  (event.keyCode> 57))) event.returnValue = false;"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label3" runat="server" CssClass="cssLabelForm">Tipo de Calendario</asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:DropDownList ID="cboCalendarType" runat="server">
                                            <asp:ListItem Value="0">Días Calendario</asp:ListItem>
                                            <asp:ListItem Value="1">Días Laborales (Lunes a Viernes)</asp:ListItem>
                                            <asp:ListItem Value="2">Días Laborales (Lunes a Viernes - Festivos)</asp:ListItem>
                                            <asp:ListItem Value="3">Días Laborales (Lunes a Sábado)</asp:ListItem>
                                            <asp:ListItem Value="4">Días Laborales (Lunes a Sábado - Festivos)</asp:ListItem>
                                            <%--<asp:ListItem Value="7">Definido por el Usuario</asp:ListItem>--%>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label9" runat="server" CssClass="cssLabelForm">Permitir al 
                                        responsable de la actividad adjuntar archivos</asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:CheckBox ID="chkAllowAttachFile" runat="server" ></asp:CheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label10" runat="server" CssClass="cssLabelForm">Permitir al 
                                        responsable de la actividad modificar los datos iniciales del proceso</asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:CheckBox ID="chkModifyProcessDataEntry" runat="server" >
                                        </asp:CheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" width="150px">
                                        <asp:Label ID="Label5" runat="server" CssClass="cssLabelForm">Permitir la finalización automática por tiempo y seguimiento por condición</asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:CheckBox ID="chkAutoCompletion" runat="server" Text="" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label15" runat="server" CssClass="cssLabelForm">Modelo de 
                                        asignación de actividades nuevas</asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:DropDownList ID="cboDistributionMode" runat="server">
                                            <asp:ListItem Value="1">De forma automatica a todos los participantes asignados</asp:ListItem>
                                            <asp:ListItem Value="0">De forma manual a alguno de los participantes asignados</asp:ListItem>
                                            <asp:ListItem Value="2">De forma automatica al usuario que inicio el proceso</asp:ListItem>
                                            <asp:ListItem Value="3">De forma automatica a un participante dependiendo del 
                                            cumplimiento de una condición</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdatePanel ID="SubFlowActivity" runat="server" Visible="False">
                <ContentTemplate>
                    <asp:Panel ID="Panel3" runat="server" BackColor="white">
                        <table id="Table3" border="0" cellpadding="1" cellspacing="1" class="cssTable" width="100%">
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="lblSubProcess" runat="server" CssClass="cssLabelForm">Subproceso 
                                    que esta actividad iniciará</asp:Label>
                                </td>
                                <td colspan="2">
                                    <asp:DropDownList ID="cboProcessCase" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdatePanel ID="ToolActivity" runat="server" Visible="False">
                <ContentTemplate>
                    <asp:Panel ID="Panel1" runat="server" BackColor="white">
                        <asp:Label ID="Label8" runat="server" CssClass="cssLabelForm" Font-Bold="True">En 
                        la siguiente ventana deberá completar información de la Herramienta que se usará 
                        en esta actividad</asp:Label>
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdatePanel ID="Buttons" runat="server">
        <ContentTemplate>
            <asp:Button ID="btnSave" OnClick="btnSave_Click" runat="server" CssClass="cssButton"
                Text="Crear"></asp:Button>&nbsp;<asp:Button ID="btnDelete" runat="server" CssClass="cssButton"
                    Text="Eliminar" CausesValidation="False" OnClick="btnDelete_Click"></asp:Button>
            &nbsp;<asp:Button
                        ID="btnCancel" runat="server" CssClass="cssButton" Text="Cancelar" CausesValidation="False"
                        OnClick="btnCancel_Click"></asp:Button>
            <ajaxtoolkit:confirmbuttonextender id="cbe" runat="server" targetcontrolid="btnDelete"
                confirmtext="Esta Seguro que desea eliminar esta actividad?, esta accion no puede revertirse.">
            </ajaxtoolkit:confirmbuttonextender>
            <asp:DropDownList ID="cboUserCalendar" runat="server" Visible="False">
            </asp:DropDownList>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
