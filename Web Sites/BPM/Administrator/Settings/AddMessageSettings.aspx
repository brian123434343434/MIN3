<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="AddMessageSettings.aspx.vb" Inherits="BPMWebSite.AddMessageSettings"
    Title="Administración de Mensajes de Notificiación" ValidateRequest="false" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%>
            <asp:HiddenField ID="IdMessage" runat="server" />
            <asp:HiddenField ID="Operation" runat="server" />
            <asp:Panel ID="FormPanel" runat="server" BackColor="white">
                <table id="Table1" class="cssTable" cellspacing="1" cellpadding="1" border="0" width="100%">
                    <tr>
                        <td align="left" class="cssLabelTitle">
                            <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">Administración 
                            de Mensajes de Correo Electrónico (Notificaciones)</asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
                <table id="Table2" class="cssTable" cellspacing="1" cellpadding="1" border="0" width="100%">
                    <tr>
                        <td style="width: 130px">
                            <asp:Label ID="Label1" runat="server" CssClass="cssLabelForm" Style="font-weight: bold">Tipo 
                            de Entidad</asp:Label>
                        </td>
                        <td style="width: 500px">
                            <asp:DropDownList ID="cboEntityType" runat="server" AutoPostBack="true" Width="300px">
                                <asp:ListItem Selected="True" Value="-1">Seleccione</asp:ListItem>
                                <asp:ListItem Value="0">Actividad</asp:ListItem>
                                <asp:ListItem Value="2" Enabled="false">Proceso</asp:ListItem>
                                <asp:ListItem Value="3">Caso de proceso</asp:ListItem>
                                <asp:ListItem Value="4" Enabled="false">Transición</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 130px">
                            <b>Entidad </b>
                        </td>
                        <td style="width: 500px">
                            <asp:DropDownList ID="ddlRelated" runat="server" Width="300px" AutoPostBack="True">
                                <asp:ListItem Selected="True" Value="-1">Seleccione</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 130px">
                            <b>Estado Entidad </b>
                        </td>
                        <td style="width: 500px">
                            <asp:DropDownList ID="ddlStatus" runat="server" Width="300px" AutoPostBack="True">
                                <asp:ListItem Selected="True" Value="-1">Seleccione</asp:ListItem>
                                <asp:ListItem Value="0">Estado por defecto</asp:ListItem>
                                <asp:ListItem Value="2">En ejecución</asp:ListItem>
                                <asp:ListItem Value="4">Iniciada</asp:ListItem>
                                <%--<asp:ListItem Value="5">En espera</asp:ListItem>--%>
                                <asp:ListItem Value="8">Suspendida</asp:ListItem>
                                <asp:ListItem Value="242">Abortada</asp:ListItem>
                               <%-- <asp:ListItem Value="244">Terminada</asp:ListItem>--%>
                                <asp:ListItem Value="248">Completada</asp:ListItem>
                                <asp:ListItem Value="99">Próximo a vencer</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ddlStatus"
                                ErrorMessage="*" MaximumValue="999" MinimumValue="0"></asp:RangeValidator>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 130px" valign="top">
                            <b>Asunto </b>
                        </td>
                        <td style="width: 500px" valign="top">
                            <asp:TextBox ID="txtSubject" runat="server" Width="500px"></asp:TextBox>
                        </td>
                        <td>
                            Escriba Aquí el Texto del Asunto del Mensaje de Correo. (Máx 500 caracteres)
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 130px" valign="top">
                            <b>Remitente </b>
                        </td>
                        <td style="width: 500px" valign="top">
                            <asp:TextBox ID="txtFrom" runat="server" Width="500px"></asp:TextBox>
                        </td>
                        <td valign="top">
                            Escriba aquí la dirección de correo que el usuario identificará como originador 
                            del mensaje. (Máx 50 caracteres)
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 130px">
                            &nbsp;
                        </td>
                        <td style="width: 500px; text-align: center;">
                            <b>M E N S A J E</b>
                            <asp:TextBox ID="txtBody" runat="server" Height="104px" TextMode="MultiLine" Width="499px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 130px">
                            <b>Estado </b>
                        </td>
                        <td style="width: 500px; text-align: left;">
                            <asp:DropDownList ID="ddlEnabled" runat="server" AutoPostBack="False" 
                                Width="300px">
                                <asp:ListItem Selected="True" Value="T">Habilitado</asp:ListItem>
                                <asp:ListItem Value="F">Desabilitado</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <span style="color: #FF0000"><b>Instrucciones:</b></span>
                <br />
                <br />
                <div align="justify">
                    Escriba el mensaje que desee enviar del proceso para cada estado de la ejecución 
                    del proceso.<br />
                    <br />
                    Si no escribe ningún mensaje para un estado o para un proceso el sistema enviara 
                    el mensaje por omision.
                    <br />
                    <br />
                    En el caso de los procesos puede colocar un marcador para que el sistema coloque 
                    el número del proceso de la siguiente forma: <strong>{ProcessInstanceID}</strong>
                    En todos los sitios donde parezca este marcador dentro del mensaje el sistema 
                    reemplazara el marcador por el Número del Proceso.
                    <br />
                    <br />
                    En el caso de las Actividades puede colocar los siguientes Marcadores: <strong>
                    {ProcessInstanceID}</strong>
                    Para representar el Id del Proceso, <strong>{TransitionMessage}</strong> Para 
                    representar el mensaje de la Ultima Transición, <strong>{ActivityInstanceID}</strong>
                    Para representar el Número de la Actividad.
                    <br />
                    <br />
                    * la longitud máxima del mensajes es de 8.000 caracteres.
                </div>
                <br />
                <table id="Table5" class="cssTable" cellspacing="1" cellpadding="1" border="0" width="100%">
                    <tr>
                        <td style="text-align: center">
                            <asp:Button ID="btnSave" runat="server" CssClass="cssButton" Text="Crear" 
                                Width="100px"></asp:Button>
                            &nbsp;<asp:Button ID="btnDelete" runat="server" CssClass="cssButton" Text="Eliminar" 
                                CausesValidation="False" Width="100px">
                            </asp:Button>
                            &nbsp;<asp:Button ID="btnCancel" runat="server" CssClass="cssButton" Text="Cancelar" 
                                CausesValidation="False" Width="100px">
                            </asp:Button>
                        </td>
                    </tr>
                </table>
                <br />
                <ajaxToolkit:ConfirmButtonExtender ID="cbe" runat="server" TargetControlID="btnDelete"
                    ConfirmText="Esta Seguro que desea eliminar esta Notificación?, esta accion no puede revertirse.">
                </ajaxToolkit:ConfirmButtonExtender>
            </asp:Panel>
        <%--</ContentTemplate>
    </asp:UpdatePanel>--%>
</asp:Content>
