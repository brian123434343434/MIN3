<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowIP.Master"
    CodeBehind="WorkItem.aspx.vb" Inherits="BPMWebSite.WorkItem" Title="Detalle de la actividad" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="phDefault" runat="server">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td class="cssBkgWorkItem">
            
                <asp:PlaceHolder ID="phProcessInfo" runat="server">
                 <asp:Panel ID="ProcessHeader" runat="server" CssClass="collapsePanelHeader" Height="30px">
                    <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                        <div style="float: left;">
                            Información del Proceso:
                            <asp:Label ID="lblProcessCaseName" runat="server" Text="lblProcessCaseName"></asp:Label></div>
                        <div style="float: left; margin-left: 20px;">
                            <asp:Label ID="Label5" runat="server">(Mostrar...)</asp:Label>
                        </div>
                        <div style="float: right; vertical-align: middle;">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                AlternateText="(Mostrar...)" />
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="Process" runat="server" CssClass="collapsePanel" Height="0">
                    <table id="tblProcessInfo">
                        <tr>
                            <td>
                            </td>
                            <td>
                                <strong><span style="color: green">Número de proceso</span></strong>
                            </td>
                            <td>
                                <asp:Label ID="lblIDProcessInstance" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp; &nbsp; &nbsp;&nbsp;
                            </td>
                            <td>
                                <strong><span style="color: green">Estado</span></strong>
                            </td>
                            <td>
                                <asp:Label ID="lblProcessInstanceStatus" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <strong><span style="color: #008000">Solicitud</span></strong>
                            </td>
                            <td>
                               <asp:HyperLink ID="lnkDataEntry" runat="server">Ver Solicitud</asp:HyperLink>
                            </td>
                            <td>
                            </td>
                            <td>
                                <strong><span style="color: green">Solicitado por</span></strong>
                            </td>
                            <td>
                                <asp:Label ID="lblProcessInstanceUser" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <strong><span style="color: green">Fecha de creación</span></strong>
                            </td>
                            <td>
                                <asp:Label ID="lblProcessInstanceCreate" runat="server"></asp:Label>
                            </td>
                            <td>
                            </td>
                            <td>
                                <strong><span style="color: green">Duración presupuestada</span></strong>
                            </td>
                            <td>
                                <asp:Label ID="lblProcessCaseDuration" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <strong><span style="color: green">Fecha de inicio</span></strong>
                            </td>
                            <td>
                                <asp:Label ID="lblProcessInstanceStart" runat="server"></asp:Label>
                            </td>
                            <td>
                            </td>
                            <td>
                                <strong><span style="color: green">Duración actual</span></strong>
                            </td>
                            <td>
                                <asp:Label ID="lblProcessInstanceDuration" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <strong><span style="color: green">Fecha de finalización</span></strong>
                            </td>
                            <td>
                                <asp:Label ID="lblProcessInstanceEnd" runat="server"></asp:Label>
                            </td>
                            <td>
                            </td>
                            <td>
                                <strong><span style="color: green">Duración total</span></strong>
                            </td>
                            <td>
                                <asp:Label ID="lblProcessInstanceDurationTotal" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td valign="top">
                                <strong><span style="color: green">Tipo de proceso</span></strong>
                            </td>
                            <td colspan="4">
                                <strong>Versión:</strong>
                                <asp:Label ID="lblProcessVersion" runat="server"></asp:Label><br />
                                <strong>Autor: </strong>
                                <asp:Label ID="lblProcessAutor" runat="server"></asp:Label>
                                <br />
                                <%--Responsable del Proceso:
                    <asp:HyperLink ID="lnkProcessResponsible" runat="server">[lnkProcessResponsible]</asp:HyperLink><br />--%>
                                <strong>Descripción: </strong>
                                <asp:Label ID="lblProcessDescription" runat="server"></asp:Label>
                                <br />
                                <asp:HyperLink ID="lnkProcessDocuments" runat="server" Target="_blank" Visible="False">[lnkProcessDocuments]</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td valign="top">
                                <strong><span style="color: green">Proceso</span></strong>
                            </td>
                            <td colspan="4">
                                <strong>Autor: </strong>
                                <asp:Label ID="lblProcessCaseAutor" runat="server"></asp:Label>
                                <br />
                                <asp:HyperLink ID="lnkProcessCaseMail" runat="server" Target="_blank">[lnkProcessCaseMail]</asp:HyperLink>
                                <br />
                                <asp:HyperLink ID="lnkProcessCaseHelp" runat="server" Target="_blank">[lnkProcessCaseHelp]</asp:HyperLink>
                                <br />
                                <strong>Descripción: </strong>
                                <asp:Label ID="lblProcessCaseDescription" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td>
                                <strong><span lang="es-co" style="color: green">Tema / Comentario</span></strong>
                            </td>
                            <td colspan="4">
                                <asp:Label ID="lblIDProcessInstanceComment" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="ProcessCollapsiblePanelExtender" runat="Server"
                    TargetControlID="Process" ExpandControlID="ProcessHeader" CollapseControlID="ProcessHeader"
                    Collapsed="False" TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)"
                    CollapsedText="(Mostrar...)" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                    CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                    SuppressPostBack="true" />
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="phActivityInfo" runat="server">
                
                <asp:Panel ID="ActivityHeader" runat="server" CssClass="collapsePanelHeader" Height="30px">
                    <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                        <div style="float: left;">
                            Información de la Actividad:
                            <asp:Label ID="lblActivityName" runat="server" Text="lblActivityName"></asp:Label>
                        </div>
                        <div style="float: left; margin-left: 20px;">
                            <asp:Label ID="Label2" runat="server">(Mostrar...)</asp:Label>
                        </div>
                        <div style="float: right; vertical-align: middle;">
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                AlternateText="(Mostrar...)" />
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="Activity" runat="server" CssClass="collapsePanel" Height="0">
                    <table id="tblTaskInfo">
                        <tr>
                            <td>
                            </td>
                            <td valign="top">
                                <strong><span style="color: #008000">Tarea</span></strong>
                            </td>
                            <td colspan="4">
                                <strong>Notificación: </strong>
                                <asp:Label ID="lblActivityResultNotify" runat="server"></asp:Label>
                                <asp:HyperLink ID="lnkActivityDocs" runat="server" Visible="False">[lnkActivityDocs]</asp:HyperLink>
                            </td>
                            <td colspan="1">
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td colspan="4">
                                <asp:Label ID="lblActivityDescription" runat="server"></asp:Label>
                                &nbsp; &nbsp;
                            </td>
                            <td colspan="1">
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Label ID="lblActivityInstanceIDLabel" runat="server" Text="Número de Actividad"
                                    Width="152px" Font-Bold="True" ForeColor="Green"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblIDActivityInstance" runat="server" Text="lblActivityInstanceID"></asp:Label>
                            </td>
                            <td style="width: 22px">
                                &nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:Label ID="lblActivityInstanceStatusLabel" runat="server" Text="Estado" Font-Bold="True"
                                    ForeColor="Green"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblActivityInstanceStatus" runat="server" Text="lblActivityInstanceStatus"></asp:Label>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Label ID="Label26" runat="server" Text="Fecha de Creación" Width="128px" Font-Bold="True"
                                    ForeColor="Green"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblActivityInstanceCreate" runat="server" Text="lblActivityInstanceCreate"></asp:Label>
                            </td>
                            <td style="width: 22px">
                            </td>
                            <td>
                                <asp:Label ID="Label32" runat="server" Text="Duración Presupuestada" Width="168px"
                                    Font-Bold="True" ForeColor="Green"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblActivityDuration" runat="server" Text="lblActivityDuration"></asp:Label>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Label ID="Label28" runat="server" Text="Fecha de Inicio" Font-Bold="True" ForeColor="Green"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblActivityInstanceStart" runat="server" Text="lblActivityInstanceStart"></asp:Label>
                            </td>
                            <td style="width: 22px">
                            </td>
                            <td>
                                <asp:Label ID="Label33" runat="server" Text="Duración Actual" Font-Bold="True" ForeColor="Green"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblActivityInstanceDuration" runat="server" Text="lblActivityInstanceDuration"></asp:Label>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Label ID="Label30" runat="server" Text="Fecha de Finalización" Width="136px"
                                    Font-Bold="True" ForeColor="Green"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblActivityInstanceEnd" runat="server" Text="lblActivityInstanceEnd"></asp:Label>
                            </td>
                            <td style="width: 22px">
                            </td>
                            <td>
                                <asp:Label ID="Label37" runat="server" Text="Fecha Estimada de Finalizacion" Width="192px"
                                    Font-Bold="True" ForeColor="Green"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblActivityInstanceExpectedEndTime" runat="server" Text="lblActivityInstanceExpectedEndTime"></asp:Label>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td style="width: 22px">
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="Server"
                    TargetControlID="Activity" ExpandControlID="ActivityHeader" CollapseControlID="ActivityHeader"
                    Collapsed="True" TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)"
                    CollapsedText="(Mostrar...)" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                    CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                    SuppressPostBack="true" />
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="phPreviousActivitiesInfo" runat="server">
                  
                <asp:Panel ID="OldActivitiesHeader" runat="server" CssClass="collapsePanelHeader"
                    Height="30px">
                    <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                        <div style="float: left;">
                            Tareas Anteriores... (en este proceso)</div>
                        <div style="float: left; margin-left: 20px;">
                            <asp:Label ID="Label3" runat="server">(Mostrar...)</asp:Label>
                        </div>
                        <div style="float: right; vertical-align: middle;">
                            <asp:ImageButton ID="btnOldActivities" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                AlternateText="(Mostrar...)" />
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="OldActivity" runat="server" CssClass="collapsePanel" Height="0" Width="100%">
                    <asp:HyperLink ID="lnkViewEntryData" runat="server" Text="" NavigateUrl="#"></asp:HyperLink>
                    <asp:DataList ID="dlPreviousActivities" runat="server" Width="100%">
                        <ItemTemplate>
                            <table width="100%">
                                <tr>
                                    <td style="width: 30px"></td>
                                    <td style="width: 190px">Código:</td>
                                    <td><asp:Label ID="lblPreviousActivityCode" runat="server" Text="<%#Container.DataItem.Activity.Code%>"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 30px"></td>
                                    <td style="width: 190px">Nombre:</td>
                                    <td><asp:Label ID="lblPreviousActivityName" runat="server" Text="<%#Container.DataItem.Activity.Name%>"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 30px"></td>
                                    <td style="width: 190px">Realizada por:</td>
                                    <td><asp:Label ID="Label49" runat="server" Text="<%#Container.DataItem.Participant.Name%>"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 30px"></td>
                                    <td style="width: 190px">Fecha de Creación:</td>
                                    <td><asp:Label ID="Label50" runat="server" Text="<%#Container.DataItem.CreateTime%>"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 30px"></td>
                                    <td style="width: 190px">Fecha de  Inicio:</td>
                                    <td><asp:Label ID="Label51" runat="server" Text="<%#Container.DataItem.StartTime%>"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 30px"></td>
                                    <td style="width: 190px">Fecha de Finalización:</td>
                                    <td><asp:Label ID="Label52" runat="server" Text="<%#Container.DataItem.EndTime%>"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 30px"></td>
                                    <td style="width: 190px">Causa de Activación:</td>
                                    <td><asp:Label ID="lblCauseTransition" runat="server" Text=""></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 30px"></td>
                                    <td style="width: 190px">Observaciones Publicas:</td>
                                    <td><asp:Label ID="Label10" runat="server" Text="<%#Container.DataItem.OutComments%>"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 30px"></td>
                                    <td style="width: 190px">Observaciones Privadas:</td>
                                    <td><asp:Label ID="Label14" runat="server" Text="<%#Container.DataItem.Comments%>"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 30px"></td>
                                    <td style="width: 190px"><asp:Label ID="lblAssociateFile" runat="server" Text="Archivo asociado:"></asp:Label></td>
                                    <td><asp:HyperLink ID="lnkAssociateFile" runat="server" Target="_blank" NavigateUrl="<%#Container.DataItem.Documentation.FullFileName%>">Archivo adjunto</asp:HyperLink></td>
                                </tr>
                                <tr>
                                    <td style="width: 30px"></td>
                                    <td style="width: 190px"><asp:Label ID="lblAssociatedData" runat="server" Text="Datos Adjuntos al proceso:" Visible="false"></asp:Label></td>
                                    <td><asp:HyperLink ID="lnkViewEntryData" runat="server" Text="" NavigateUrl="#" Visible="false"></asp:HyperLink></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="Server"
                    TargetControlID="OldActivity" ExpandControlID="OldActivitiesHeader" CollapseControlID="OldActivitiesHeader"
                    Collapsed="True" TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)"
                    CollapsedText="(Mostrar...)" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                    CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                    SuppressPostBack="true" Enabled="false" />                
                </asp:PlaceHolder>
            
             
                <asp:Panel ID="FormBuilderHeader" runat="server" CssClass="collapsePanelHeader" Height="30px"
                    BackColor="Yellow">
                    <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                        <div style="float: left;">
                            Formularios Asociados</div>
                        <div style="float: left; margin-left: 20px;">
                            <asp:Label ID="Label4" runat="server">(Mostrar...)</asp:Label>
                        </div>
                        <div style="float: right; vertical-align: middle;">
                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                AlternateText="(Mostrar...)" />
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="FormBuilder" runat="server" CssClass="collapsePanel" Height="0" Visible="false">
                    <asp:HyperLink ID="lnkFormBuilder" runat="server">HyperLink</asp:HyperLink>
                </asp:Panel>
                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender3" runat="Server"
                    TargetControlID="FormBuilder" ExpandControlID="FormBuilderHeader" CollapseControlID="FormBuilderHeader"
                    Collapsed="False" TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)"
                    CollapsedText="(Mostrar...)" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                    CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                    SuppressPostBack="true" />
                <table id="tblActivityActions" width="100%">
                    <tr>
                        <td>
                            <asp:HyperLink ID="lnkEntryData2" runat="server" Text="Ver Solicitud" NavigateUrl="#" style="display:none;" ></asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td><br /><br />
                        </td>
                        <td class="cssGridTitle" style="color: #000080">
                            <b><asp:Label ID="lblConditionsLabel" runat="server" Text="Para finalizar esta tarea se requiere que conteste las siguientes preguntas"></asp:Label></b>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Panel ID="pnConditions" runat="server" Width="100%">
                            </asp:Panel>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td class="cssGridTitle" style="color: #000080">
                            <asp:Label ID="lblPrivateComments" runat="server" Text="Observaciones para los participantes del proceso" style="display:none;"></asp:Label> 
							<!-- [Máximo 500 caracteres] -->
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td style="height: 85px">
                            <asp:TextBox ID="txtPrivateComments" runat="server" Height="80px" TextMode="MultiLine"
                                Width="100%" style="display:none;"></asp:TextBox>
                        </td>
                        <td style="height: 85px">
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td class="cssGridTitle" style="color: #000080">
                            <asp:Label ID="lblPublicComments" runat="server" Text="Observaciones para el solicitante" style="display:none;"></asp:Label> 
							<!-- [Máximo 500 caracteres] -->
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPublicComments" runat="server" Height="80px" TextMode="MultiLine"
                                Width="100%" style="display:none;" ></asp:TextBox>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align="center" valign="middle">
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align="left" valign="middle">
                            <asp:Label ID="lblFileUp" runat="server" Text="Esta tarea requiere que se adjunte un archivo"
                                Style="font-weight: bold; color: #FF0000"></asp:Label>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align="left" valign="middle">
                            <asp:FileUpload ID="txtFileUpload" runat="server" Width="400" />
                            <asp:Label ID="lblUpload" runat="server" Text=""></asp:Label><asp:Button ID="btnFileUpload"
                                runat="server" Text="Cargar Archivo" />
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align="center" valign="middle">
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
                <asp:UpdatePanel ID="upDefault" runat="server">
                    <ContentTemplate>
                        <div style="text-align: center">
                            <asp:Button ID="btnOk" runat="server" Text="Finalizar la tarea" />&nbsp;
                            <asp:Button ID="btnWM_A_OPEN_RUNNING" runat="server" Text="Aplazar (En Atención)" />&nbsp;
                            <asp:Button ID="btnReturn" runat="server" Text="Devolver (Sin Iniciar)" />&nbsp;
                            <asp:Button ID="btnSuspend" runat="server" Text="Suspender" />&nbsp;
                            <asp:Button ID="btnCancel" runat="server" Text="Volver a Lista de Tareas" Visible="false" Enabled="false" />
                            <ajaxToolkit:ConfirmButtonExtender ID="cbeBtnSuspend" runat="server" TargetControlID="btnSuspend"
                                ConfirmText="Está seguro que desea suspender la ejecución de la Actividad?.">
                            </ajaxToolkit:ConfirmButtonExtender>
                            <br />
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>
