<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="Settings.aspx.vb" Inherits="BPMWebSite.Settings" Title="Configuración del Motor"
    Theme="SoftManagement" %>
    
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="FormPanel" runat="server" BackColor="white" ScrollBars="Horizontal">
        <table id="Table1" border="0" cellpadding="1" cellspacing="1" class="cssTable">
            <tr>
                <td align="left" class="cssLabelTitle">
                    <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">Parametros</asp:Label>
                </td>
            </tr>
            
            <tr>
                <td align="left">
                    <br />
                    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
                        Width="722px">
                        <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="Ruta de almacenamiento">
                            <ContentTemplate>
                                <!-- Configuracion de rutas de almacenamiento -->
                                <table id="Table2" border="0" cellpadding="1" cellspacing="1" class="cssTable">
                                    <tr>
                                        <td>
                                            Ruta de procesos
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtProcessPath" runat="server" CssClass="cssTextBoxForm" Width="400px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProcessPath"
                                                CssClass="cssRequired" Display="None" ErrorMessage="* Dato requerido"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Ruta de actividades
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtActivityPath" runat="server" CssClass="cssTextBoxForm" Width="400px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtActivityPath"
                                                CssClass="cssRequired" Display="None" ErrorMessage="* Dato requerido"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Ruta icono de actividades
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtActivityIconPath" runat="server" CssClass="cssTextBoxForm" Width="400px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtActivityIconPath"
                                                CssClass="cssRequired" Display="None" ErrorMessage="* Dato requerido"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Ruta de paquetes
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtPackagePath" runat="server" CssClass="cssTextBoxForm" Width="400px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPackagePath"
                                                CssClass="cssRequired" Display="None" ErrorMessage="* Dato requerido"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Ruta de instancia de actividades
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtActivityInstancePath" runat="server" CssClass="cssTextBoxForm"
                                                Width="400px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtActivityInstancePath"
                                                CssClass="cssRequired" Display="None" ErrorMessage="* Dato requerido"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <!-- / Configuracion de rutas de almacenamiento -->
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Notificación e-Mail">
                            <ContentTemplate>
                                <!-- Configuracion de notificaciones -->
                                <table id="Table3" border="0" cellpadding="1" cellspacing="1" class="cssTable">
                                    <tr>
                                        <td>
                                            Notificar Responsables
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlNotifyResponsibles" runat="server">
                                                <asp:ListItem Value="T" Selected="True">Habilitado</asp:ListItem>
                                                <asp:ListItem Value="F">Deshabilitado</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Notificar Supervisores
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlNotifySupervisors" runat="server">
                                                <asp:ListItem Value="T" Selected="True">Habilitado</asp:ListItem>
                                                <asp:ListItem Value="F">Deshabilitado</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Notificar Auditores
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlNotifyAuditors" runat="server">
                                                <asp:ListItem Value="T" Selected="True">Habilitado</asp:ListItem>
                                                <asp:ListItem Value="F">Deshabilitado</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Notificar Usuarios
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlNotifyUsers" runat="server">
                                                <asp:ListItem Value="T" Selected="True">Habilitado</asp:ListItem>
                                                <asp:ListItem Value="F">Deshabilitado</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Notificar Otros
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlNotifyOthers" runat="server">
                                                <asp:ListItem Selected="True" Value="T">Habilitado</asp:ListItem>
                                                <asp:ListItem Value="F">Deshabilitado</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                                <!-- / Configuracion de notificaciones -->
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                        <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="Configuración de correo">
                            <ContentTemplate>
                                <!-- Configuracion de Correo -->
                                <table id="Table4" border="0" cellpadding="1" cellspacing="1" class="cssTable">
                                    <tr>
                                        <td>
                                            Servidor de correo
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtMailServer" runat="server" CssClass="cssTextBoxForm" Width="200px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMailServer"
                                                CssClass="cssRequired" Display="None" ErrorMessage="* Dato requerido"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Usuario de autenticación
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtMailServerUserName" runat="server" CssClass="cssTextBoxForm"
                                                Width="200px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMailServerUserName"
                                                CssClass="cssRequired" Display="None" ErrorMessage="* Dato requerido"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Contraseña de autenticación
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtMailServerPassword" runat="server" CssClass="cssTextBoxForm"
                                                Width="200px" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMailServerPassword"
                                                CssClass="cssRequired" Display="None" ErrorMessage="* Dato requerido"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <!-- / Configuracion de correo -->
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                        <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="Licencia del producto">
                            <ContentTemplate>
                                <!-- Configuracion de Licencia del producto -->
                                <table id="Table5" border="0" cellpadding="1" cellspacing="1" class="cssTable">
                                    <tr>
                                        <td>
                                            Número de Licencia
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtLicenceProcess" runat="server" CssClass="cssTextBoxForm" Width="400px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtLicenceProcess"
                                                CssClass="cssRequired" Display="None" ErrorMessage="* Dato requerido"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <!-- / Configuracion de Licencia del producto -->
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                        <ajaxToolkit:TabPanel ID="TabPanel5" runat="server" HeaderText="Horario y jornada laboral">
                            <ContentTemplate>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <!-- Configuracion Horario y jornada laboral -->
                                        Seleccione el Horario Laboral por defecto que regirá para todos los Grupos y Participantes del Proceso <br />
                                        <br />
                                        <table id="Table6" border="0" cellpadding="1" cellspacing="1" class="cssTable">
                                            <tr>
                                                <td style="width: 180px"><b>Días de la semana</b></td>
                                                <td style="width: 180px"><b>Hora inicio<b></td>
                                                <td style="width: 180px"><b>Hora finalización</b></td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td><asp:CheckBox ID="chkDay01" runat="server" Text="Lunes" /></td>
                                                <td><MKB:TimeSelector ID="mkbDayInit01" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                <td><MKB:TimeSelector ID="mkbDayFinish01" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                            </tr>
                                            <tr>
                                                <td><asp:CheckBox ID="chkDay02" runat="server" Text="Martes" /></td>
                                                <td><MKB:TimeSelector ID="mkbDayInit02" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                <td><MKB:TimeSelector ID="mkbDayFinish02" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                            </tr>
                                            <tr>
                                                <td><asp:CheckBox ID="chkDay03" runat="server" Text="Miercoles" /></td>
                                                <td><MKB:TimeSelector ID="mkbDayInit03" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                <td><MKB:TimeSelector ID="mkbDayFinish03" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                            </tr>
                                            <tr>
                                                <td><asp:CheckBox ID="chkDay4" runat="server" Text="Jueves" /></td>
                                                <td><MKB:TimeSelector ID="mkbDayInit04" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                <td><MKB:TimeSelector ID="mkbDayFinish04" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                            </tr>
                                            <tr>
                                                <td><asp:CheckBox ID="chkDay05" runat="server" Text="Viernes" /></td>
                                                <td><MKB:TimeSelector ID="mkbDayInit05" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                <td><MKB:TimeSelector ID="mkbDayFinish05" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                            </tr>
                                            <tr>
                                                <td><asp:CheckBox ID="chkDay06" runat="server" Text="Sabado" /></td>
                                                <td><MKB:TimeSelector ID="mkbDayInit06" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                <td><MKB:TimeSelector ID="mkbDayFinish06" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                            </tr>
                                            <tr>
                                                <td><asp:CheckBox ID="chkDay07" runat="server" Text="Domingo" /></td>
                                                <td><MKB:TimeSelector ID="mkbDayInit07" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                <td><MKB:TimeSelector ID="mkbDayFinish07" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                            </tr>
                                        </table>
                                        <br />
                                        Seleccione los dias festivos, para esto selecciona el Año y Mes respectivo, luego
                                        pulsa sobre el dia a desabilitar.<br />
                                        <br />
                                        <asp:Calendar ID="cCalendar" runat="server" Height="100%" OnVisibleMonthChanged="cCalendar_VisibleMonthChanged"
                                            Width="100%" OnSelectionChanged="cCalendar_SelectionChanged" BackColor="White"
                                            BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black"
                                            NextPrevFormat="FullMonth">
                                            <DayStyle BorderColor="#E0E0E0" BorderStyle="Solid" BorderWidth="1px" />
                                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                            <TodayDayStyle BackColor="#CCCCCC" />
                                            <OtherMonthDayStyle ForeColor="#999999" />
                                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True"
                                                Font-Size="12pt" ForeColor="#333399" />
                                        </asp:Calendar>
                                        <!-- / Configuracion Horario y jornada laboral -->
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </ContentTemplate>
                        </ajaxToolkit:TabPanel>
                    </ajaxToolkit:TabContainer>
                </td>
            </tr>
        </table>
        <br />
        <div style="text-align: center; width: 100%;">
            <asp:Button ID="btnSave" runat="server" CssClass="cssButton" Text="Actualizar" />
            <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="cssButton"
                Text="Cancelar" />
        </div>
    </asp:Panel>
</asp:Content>
