<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowIP.Master"
    CodeBehind="TaskList.aspx.vb" Inherits="BPMWebSite.TaskList" Title="Listado de Tareas" %>

<%@ Register Assembly="ASPnetPagerV2_8" Namespace="ASPnetControls" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>
<%@ Register src="../UserControls/SearchControl.ascx" tagname="SearchControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="phDefault" runat="server">
    <table style="width: 100%; height: 100%" border="0">
        <tbody>
            <tr>
                <!-- Panel Derecho -->
                <td style="width: 175px" class="cssLeftPanel" valign="top" align="left">
                    <asp:TreeView ID="tvTaskSelector" SkinID="TreeViewFuncionario" runat="server" ShowLines="True">
                        <HoverNodeStyle CssClass="cssTreeHoverNode" />
                        <SelectedNodeStyle CssClass="cssTreeSelectedNode" Font-Bold="True" Font-Underline="True" />
                        <RootNodeStyle CssClass="cssTreeRootNode" />
                        <LeafNodeStyle CssClass="cssTreeLeafNode" />
                        <NodeStyle CssClass="cssTreeNode" />
                    </asp:TreeView>
                    <!-- Mensajes del Sistema -->
                    <asp:Panel ID="pMessages" runat="server" Width="148px">
                        <br />
                        <table border="0" cellpadding="0" cellspacing="0" width="148px">
                            <tr>
                                <td>
                                    <asp:Label ID="lblMessage" runat="server" Text="No tiene mensajes recientes" ForeColor="red"
                                        Font-Bold="True"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <!-- / Mensajes del Sistema -->
                </td>
                <!-- / Panel Derecho -->
                <!-- Panel Central -->
                <td class="cssCentralPanel" valign="top" align="left">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td colspan="10">
                                <!-- SearchHeader -->
                                <asp:Panel ID="SearchHeader" runat="server" CssClass="collapsePanelHeader" Height="30px">
                                    <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                        <div style="float: left;"><b><asp:Label ID="lblSummary" runat="server" Text="Listado de Tareas" CssClass="cssGridSummary"></asp:Label></b></div>
                                    </div>
                                </asp:Panel>
                                <!-- / SearchHeader -->
                            </td>
                        </tr>
                        <tr>
                            <td colspan="10">
                                <!-- Panel SearchHeaderAdvanced -->
                                <asp:Panel ID="SearchHeaderAdvanced" runat="server" CssClass="collapsePanelHeader"
                                    Height="30px">
                                    <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                            <div style="float: left;"><b>Opciones avanzadas:</b></div>
                                            <div style="float: left; margin-left: 20px;"><b><asp:Label ID="Label5" runat="server">(Mostrar...)</asp:Label></b></div>
                                            <div style="float: right; vertical-align: middle;"><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg" AlternateText="(Mostrar...)" /></div>
                                    </div>
                                </asp:Panel>
                                <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender" runat="Server"
                                    TargetControlID="Search" ExpandControlID="SearchHeaderAdvanced" CollapseControlID="SearchHeaderAdvanced"
                                    Collapsed="True" TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Mostrar...)"
                                    CollapsedText="(Ocultar...)" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                                    CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                    SuppressPostBack="true" />
                                <!-- / Panel SearchHeaderAdvanced -->
                                <!-- Buscador avanzado -->
                                <asp:Panel ID="Search" runat="server" CssClass="collapsePanel" Height="0">
                                    <table width="100%">
                                        <tr>
                                            <td valign="top">
                                                <asp:Label ID="lblOrder" runat="server" Text="Ordenar por:" CssClass="cssGridSummary"></asp:Label>
                                                <!-- Ordenar Tareas del sistema -->
                                                <asp:DropDownList ID="cboOrderBy" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboOrderBy_SelectedIndexChanged">
                                                    <asp:ListItem Value="Activity.Name">Actividad</asp:ListItem>
                                                    <asp:ListItem Value="ProcessCase.Name">Caso de Proceso</asp:ListItem>
                                                    <asp:ListItem Value="ExpectedEndTime">Fecha de Vencimiento</asp:ListItem>
                                                    <asp:ListItem Selected="True" Value="ProcessInstance.ID">Número de Solicitud</asp:ListItem>
                                                    <asp:ListItem Value="ProcessInstance.Comment">Tema/Comentario</asp:ListItem>
                                                    <asp:ListItem Value="Participant.Name">Usuario Responsable</asp:ListItem>
                                                </asp:DropDownList>
                                                <!-- / Ordenar Tareas del sistema -->
                                                <!-- Ordenar Consultas -->
                                                <asp:DropDownList ID="cboOrderBy_Search" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cboOrderBy_Search_SelectedIndexChanged">
                                                    <asp:ListItem Selected="True" Value="ProcessInstance.ID">Número de Solicitud</asp:ListItem>
                                                    <asp:ListItem Value="ProcessInstance.Comment">Tema/Comentario</asp:ListItem>
                                                </asp:DropDownList>
                                                <!-- / Ordenar Consultas -->
                                                <br />
                                                <center><b>Filtrar por Campo</b></center>
                                                <!-- Filtro Tareas del sistema -->
                                                <asp:Panel ID="scSearchEngine" runat="server" Visible="false">
                                                    <!-- Criterios de busqueda -->
                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                        <ContentTemplate>
                                                            <table border="0" width="100%">
                                                                <tr>
                                                                    <td>Actividad</td>
                                                                    <td><asp:TextBox ID="txt_Search_Activity_Name" runat="server" Width="200px"></asp:TextBox></td>
                                                                    <td style="width: 30px"></td>
                                                                    <td>Caso de Proceso</td>
                                                                    <td><asp:TextBox ID="txt_Search_ProcessCase_Name" runat="server" Width="200px"></asp:TextBox></td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="top">Fecha de Creación</td>
                                                                    <td>
                                                                        <table>
                                                                            <tr>
                                                                                <td style="width: 30px">Desde</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_Search_ActivityInstance_CreateTime_Init" runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" Format="yyyy/MM/dd" runat="server" TargetControlID="txt_Search_ActivityInstance_CreateTime_Init">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td><MKB:TimeSelector ID="ts_Search_ActivityInstance_CreateTime_Init" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                                            </tr>
                                                                            <tr>    
                                                                                <td>Hasta</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_Search_ActivityInstance_CreateTime_Finish" runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" Format="yyyy/MM/dd" TargetControlID="txt_Search_ActivityInstance_CreateTime_Finish">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td><MKB:TimeSelector ID="ts_Search_ActivityInstance_CreateTime_Finish" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                                            </tr>
                                                                        </table>
                                                                      </td>
                                                                    <td></td>
                                                                    <td valign="top">Fecha de Atención</td>
                                                                    <td>
                                                                        <table>
                                                                            <tr>
                                                                                <td style="width: 30px">Desde</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_Search_ActivityInstance_StartTime_Init" runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender3" Format="yyyy/MM/dd" runat="server" TargetControlID="txt_Search_ActivityInstance_StartTime_Init">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td><MKB:TimeSelector ID="ts_Search_ActivityInstance_StartTime_Init" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                                            </tr>
                                                                            <tr>    
                                                                                <td>Hasta</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_Search_ActivityInstance_StartTime_Finish" runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender4" runat="server" Format="yyyy/MM/dd" TargetControlID="txt_Search_ActivityInstance_StartTime_Finish">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td><MKB:TimeSelector ID="ts_Search_ActivityInstance_StartTime_Finish" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                                            </tr>
                                                                        </table>
                                                                   </td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="top">Fecha de Finalización</td>
                                                                    <td>
                                                                    
                                                                    
                                                                        <table>
                                                                            <tr>
                                                                                <td style="width: 30px">Desde</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_Search_ActivityInstance_EndTime_Init" runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender5" Format="yyyy/MM/dd" runat="server" TargetControlID="txt_Search_ActivityInstance_EndTime_Init">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td><MKB:TimeSelector ID="ts_Search_ActivityInstance_EndTime_Init" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                                            </tr>
                                                                            <tr>    
                                                                                <td>Hasta</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_Search_ActivityInstance_EndTime_Finish" runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender6" runat="server" Format="yyyy/MM/dd" TargetControlID="txt_Search_ActivityInstance_EndTime_Finish">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td><MKB:TimeSelector ID="ts_Search_ActivityInstance_EndTime_Finish" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                    <td></td>
                                                                    <td valign="top">Número de Solicitud</td>
                                                                    <td valign="top"><asp:TextBox ID="txt_Search_ActivityInstance_IDProcessInstance" runat="server" Width="200px"></asp:TextBox></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Tema/Comentario</td>
                                                                    <td><asp:TextBox ID="txt_Search_ProcessInstance_Comment" runat="server" Width="200px"></asp:TextBox></td>
                                                                    <td></td>
                                                                    <td>
                                                                        &nbsp;

                                                                    </td>
                                                                    <td></td>
                                                                </tr>
                                                            </table>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>                                                    
                                                    <!-- / Criterios de busqueda -->
                                                    <!-- Botones de ejecución -->
                                                    <table border="0" width="100%">
                                                        <tr>
                                                            <td style="width: 50%; text-align: right;" align="right"><asp:Button ID="btnSearchEngine" runat="server" Text="Buscar" /></td>
                                                            <td style="width: 50%" align="left">
                                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                    <ContentTemplate>
                                                                        <asp:Button ID="btnResetSearchEngine" runat="server" Text="Nueva" />
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <!-- / Botones de ejecución -->
                                                </asp:Panel>
                                                <!-- / Filtro Tareas del sistema -->
                                                <!-- Filtro Consultas-->
                                                <asp:Panel ID="scSearchEngineAuditorSupervisor" runat="server" Visible="false">
                                                    <!-- Criterios de busqueda -->
                                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                        <ContentTemplate>
                                                            <table border="0" width="100%">
                                                                <tr>
                                                                    <td>Actividad</td>
                                                                    <td><asp:TextBox ID="txt_SearchAuditorSupervisor_Activity_Name" runat="server" Width="200px"></asp:TextBox></td>
                                                                    <td style="width: 30px"></td>
                                                                    <td>Caso de Proceso</td>
                                                                    <td><asp:TextBox ID="txt_SearchAuditorSupervisor_ProcessCase_Name" runat="server" Width="200px"></asp:TextBox></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Número de Solicitud</td>
                                                                    <td><asp:TextBox ID="txt_SearchAuditorSupervisor_ActivityInstance_IDProcessInstance" runat="server" Width="200px"></asp:TextBox></td>
                                                                    <td style="width: 30px"></td>
                                                                    <td>Responsable</td>
                                                                    <td><asp:TextBox ID="txt_SearchAuditorSupervisor_Participant_Name" runat="server" Width="200px"></asp:TextBox></td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="top">Fecha de Creación Actividad</td>
                                                                    <td>
                                                                        <table>
                                                                            <tr>
                                                                                <td style="width: 30px">Desde</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_SearchAuditorSupervisor_ActivityInstance_CreateTime_Init" runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender7" Format="yyyy/MM/dd" runat="server" TargetControlID="txt_SearchAuditorSupervisor_ActivityInstance_CreateTime_Init">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td><MKB:TimeSelector ID="ts_SearchAuditorSupervisor_ActivityInstance_CreateTime_Init" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                                            </tr>
                                                                            <tr>    
                                                                                <td>Hasta</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_SearchAuditorSupervisor_ActivityInstance_CreateTime_Finish" runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender8" runat="server" Format="yyyy/MM/dd" TargetControlID="txt_SearchAuditorSupervisor_ActivityInstance_CreateTime_Finish">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td><MKB:TimeSelector ID="ts_SearchAuditorSupervisor_ActivityInstance_CreateTime_Finish" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                                            </tr>
                                                                        </table>
                                                                      </td>
                                                                    <td></td>
                                                                    <td valign="top">Fecha de Atención Proceso</td>
                                                                    <td>
                                                                        <table>
                                                                            <tr>
                                                                                <td style="width: 30px">Desde</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_SearchAuditorSupervisor_ProcessInstance_StartTime_Init" 
                                                                                        runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender15" runat="server" 
                                                                                        Format="yyyy/MM/dd" 
                                                                                        TargetControlID="txt_SearchAuditorSupervisor_ProcessInstance_StartTime_Init">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td>
                                                                                    <MKB:TimeSelector ID="ts_SearchAuditorSupervisor_ProcessInstance_StartTime_Init" 
                                                                                        runat="server" DisplaySeconds="False" MinuteIncrement="15" 
                                                                                        SelectedTimeFormat="Twelve">
                                                                                    </MKB:TimeSelector>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>    
                                                                                <td>Hasta</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_SearchAuditorSupervisor_ProcessInstance_StartTime_Finish" 
                                                                                        runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender16" runat="server" 
                                                                                        Format="yyyy/MM/dd" 
                                                                                        TargetControlID="txt_SearchAuditorSupervisor_ProcessInstance_StartTime_Finish">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td>
                                                                                    <MKB:TimeSelector ID="ts_SearchAuditorSupervisor_ProcessInstance_StartTime_Finish" 
                                                                                        runat="server" DisplaySeconds="False" MinuteIncrement="15" 
                                                                                        SelectedTimeFormat="Twelve">
                                                                                    </MKB:TimeSelector>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                   </td>
                                                                </tr>
                                                                <tr>
                                                                    <td valign="top">Fecha de Atención Actividad</td>
                                                                    <td>
                                                                        <table>
                                                                            <tr>
                                                                                <td style="width: 30px">Desde</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_SearchAuditorSupervisor_ActivityInstance_StartTime_Init" 
                                                                                        runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender9" runat="server" 
                                                                                        Format="yyyy/MM/dd" 
                                                                                        TargetControlID="txt_SearchAuditorSupervisor_ActivityInstance_StartTime_Init">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td>
                                                                                    <MKB:TimeSelector ID="ts_SearchAuditorSupervisor_ActivityInstance_StartTime_Init" 
                                                                                        runat="server" DisplaySeconds="False" MinuteIncrement="15" 
                                                                                        SelectedTimeFormat="Twelve">
                                                                                    </MKB:TimeSelector>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>    
                                                                                <td>Hasta</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_SearchAuditorSupervisor_ActivityInstance_StartTime_Finish" 
                                                                                        runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender10" runat="server" 
                                                                                        Format="yyyy/MM/dd" 
                                                                                        TargetControlID="txt_SearchAuditorSupervisor_ActivityInstance_StartTime_Finish">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td>
                                                                                    <MKB:TimeSelector ID="ts_SearchAuditorSupervisor_ActivityInstance_StartTime_Finish" 
                                                                                        runat="server" DisplaySeconds="False" MinuteIncrement="15" 
                                                                                        SelectedTimeFormat="Twelve">
                                                                                    </MKB:TimeSelector>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                      </td>
                                                                    <td></td>
                                                                    
                                                                    
                                                                    <td valign="top">Fecha de Creación Proceso</td>
                                                                    <td>
                                                                        <table>
                                                                            <tr>
                                                                                <td style="width: 30px">Desde</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_SearchAuditorSupervisor_ProcessInstance_CreateTime_Init" runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender13" Format="yyyy/MM/dd" runat="server" TargetControlID="txt_SearchAuditorSupervisor_ProcessInstance_CreateTime_Init">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td><MKB:TimeSelector ID="ts_SearchAuditorSupervisor_ProcessInstance_CreateTime_Init" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                                            </tr>
                                                                            <tr>    
                                                                                <td>Hasta</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_SearchAuditorSupervisor_ProcessInstance_CreateTime_Finish" runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender14" runat="server" Format="yyyy/MM/dd" TargetControlID="txt_SearchAuditorSupervisor_ProcessInstance_CreateTime_Finish">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td><MKB:TimeSelector ID="ts_SearchAuditorSupervisor_ProcessInstance_CreateTime_Finish" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                                            </tr>
                                                                        </table>
                                                                   </td>
                                                                </tr>    
                                                                <tr>
                                                                    <td valign="top">Fecha de Finalización Actividad</td>
                                                                    <td>
                                                                        <table>
                                                                            <tr>
                                                                                <td style="width: 30px">Desde</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_SearchAuditorSupervisor_ActivityInstance_EndTime_Init" runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender11" Format="yyyy/MM/dd" runat="server" TargetControlID="txt_SearchAuditorSupervisor_ActivityInstance_EndTime_Init">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td><MKB:TimeSelector ID="ts_SearchAuditorSupervisor_ActivityInstance_EndTime_Init" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                                            </tr>
                                                                            <tr>    
                                                                                <td>Hasta</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_SearchAuditorSupervisor_ActivityInstance_EndTime_Finish" runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender12" runat="server" Format="yyyy/MM/dd" TargetControlID="txt_SearchAuditorSupervisor_ActivityInstance_EndTime_Finish">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td><MKB:TimeSelector ID="ts_SearchAuditorSupervisor_ActivityInstance_EndTime_Finish" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                                            </tr>
                                                                        </table>
                                                                      </td>
                                                                    <td></td>
                                                                    <td valign="top">Fecha de Finalización Proceso</td>
                                                                    <td>
                                                                        <table>
                                                                            <tr>
                                                                                <td style="width: 30px">Desde</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_SearchAuditorSupervisor_ProcessInstance_EndTime_Init" runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender17" Format="yyyy/MM/dd" runat="server" TargetControlID="txt_SearchAuditorSupervisor_ProcessInstance_EndTime_Init">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td><MKB:TimeSelector ID="ts_SearchAuditorSupervisor_ProcessInstance_EndTime_Init" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                                            </tr>
                                                                            <tr>    
                                                                                <td>Hasta</td>
                                                                                <td>
                                                                                    <asp:TextBox ID="txt_SearchAuditorSupervisor_ProcessInstance_EndTime_Finish" runat="server" Width="60px"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender18" runat="server" Format="yyyy/MM/dd" TargetControlID="txt_SearchAuditorSupervisor_ProcessInstance_EndTime_Finish">
                                                                                    </ajaxToolkit:CalendarExtender>
                                                                                </td>
                                                                                <td><MKB:TimeSelector ID="ts_SearchAuditorSupervisor_ProcessInstance_EndTime_Finish" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve"></MKB:TimeSelector></td>
                                                                            </tr>
                                                                        </table>
                                                                   </td>
                                                                </tr>  
                                                                <tr>
                                                                    <td>Duración Esperada Actividad</td>
                                                                    <td><asp:TextBox ID="txt_SearchAuditorSupervisor_Activity_Duration" runat="server" Width="200px"></asp:TextBox></td>
                                                                    <td></td>
                                                                    <td>Duración Esperada Proceso</td>
                                                                    <td><asp:TextBox ID="txt_SearchAuditorSupervisor_ProcessCase_Duration" runat="server" Width="200px"></asp:TextBox></td>
                                                                </tr>  
                                                                <tr>
                                                                <td>Tema/Comentario</td>
                                                                <td><asp:TextBox ID="txt_SearchAuditorSupervisor_ProcessInstance_Comment" runat="server" Width="200px"></asp:TextBox></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                            </tr>
                                                            </table>                                               
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                    <!-- / Criterios de busqueda -->
                                                    <!-- Botones de ejecución -->
                                                    <table border="0" width="100%">
                                                        <tr>
                                                            <td style="width: 50%; text-align: right;" align="right"><asp:Button ID="btnSearchSearchAuditorSupervisor" runat="server" Text="Buscar" /></td>
                                                            <td style="width: 50%" align="left">
                                                                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                                    <ContentTemplate>
                                                                        <asp:Button ID="btnResetSearchAuditorSupervisor" runat="server" Text="Nueva" />
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <!-- / Botones de ejecución -->
                                                </asp:Panel>
                                                <!-- / Filtro Consultas-->
                                            </td>
                                            <td valign="top">
                                                <!-- Lista de tareas -->
                                                <%--<uc1:SearchControl ID="scSearchEngine" runat="server" Columns="Activity.Name,Actividad,String;ProcessCase.Name,Caso de Proceso,String;ActivityInstance.CreateTime,Fecha de Creación,Date;ActivityInstance.StartTime,Fecha de Atención,Date;ActivityInstance.EndTime,Fecha de Finalización,Date;ActivityInstance.IDProcessInstance,Número de Solicitud,Integer;ProcessInstance.Comment,Tema/Comentario,String" />--%>
                                                <!-- Consultas Auditor, Supervisor -->
                                                <%--<uc1:SearchControl ID="scSearchEngineAuditorSupervisor" runat="server" Columns="Activity.Name,Actividad,String;ProcessCase.Name,Caso de Proceso,String;ActivityInstance.IDProcessInstance,Número de Solicitud,Integer;ProcessInstance.Comment,Tema/Comentario Solicitud,String;Participant.Name,Responsable,String;ActivityInstance.CreateTime,Fecha de Creación Actividad,Date;ActivityInstance.StartTime,Fecha de Atención Actividad,Date;ActivityInstance.EndTime,Fecha de Finalización Actividad,Date;ProcessInstance.CreateTime,Fecha de Creación Proceso,Date;ProcessInstance.StartTime,Fecha de Atención Proceso,Date;ProcessInstance.EndTime,Fecha de Finalización Proceso,Date;Activity.Duration,Duración Esperada Actividad,Integer;ProcessCase.Duration,Duración Esperada Proceso,Integer" Visible="false" />--%>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <!-- / Buscador avanzado -->
                            </td>
                        </tr>
                    </table>
                    

                    
                    
                    
                <asp:GridView ID="gvTaskList" runat="server" BorderWidth="1px" AutoGenerateColumns="False"
                    EnableViewState="False" DataKeyNames="ID" Style="width: 100%">
                    <Columns>
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <div id="divToolTip<%# Eval("Id") %>" class="" style="padding: 5px; background-color: White;
                                    width: 350px; height: 220px; border: solid 1px gray; text-align: justify; font-style: normal;">
                                    <div style="text-align: center;">
                                        <b>Información de la Actividad</b></div>
                                    <br />
                                    Número de Proceso:
                                    <%#Eval("ProcessInstance.ID")%><br />
                                    Número de Actividad:
                                    <%#Eval("ID")%><br />
                                    <br />
                                    Fecha de Creación:
                                    <%#Eval("CreateTime")%><br />
                                    Fecha de Atención:
                                    <%#If(Year(CDate(Eval("StartTime"))) > 1, Eval("StartTime"), "")%><br />
                                    Fecha de Finalización:
                                    <%#If(Year(CDate(Eval("EndTime"))) > 1, Eval("EndTime"), "")%><br />
                                    <br />
                                    Duración Presupuestada:
                                    <%#Eval("Activity.ExpectedDuration.value") & " - " & Eval("Activity.ExpectedDuration.unit").ToString%><br />
                                    Duración Actual:
                                    <%#((DateDiff("s", Eval("CreateTime"), Now) \ 86400) Mod 365) & " días, " & ((DateDiff("s", Eval("CreateTime"), Now) \ 3600) Mod 24) & " Horas y " & ((DateDiff("s", Eval("CreateTime"), Now) \ 60) Mod 60) & " Minutos"%><br />
                                    Fecha Estimada de Finalizacion:
                                    <%#IIf(CDate(Eval("ExpectedEndTime")) > "1900/01/01", Eval("ExpectedEndTime"), "")%>
                                </div>

                                <script language="javascript" type="text/javascript">
                                                var t<%# Eval("Id") %> = null;
                                                t<%# Eval("Id") %> = new ToolTip("divToolTip<%# Eval("Id") %>",true,40);
                                </script>

                                <span onmouseover=if(t<%# Eval("Id") %>)t<%# Eval("Id") %>.Show(event,'l1') onmouseout=if(t<%# Eval("Id") %>)t<%# Eval("Id") %>.Hide(event)>
                                                <img src="../App_Themes/GattacaAdmin/Images/comment.png" height="16px" width="16px" style="cursor: hand" />
                                            </span>
                                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Actividad">
                            <ItemTemplate>
                                <asp:HyperLink ID="lnkTaskName" runat="server">Link</asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Caso de Proceso">
                            <ItemTemplate>
                                <asp:HyperLink ID="lnkProcessCase" runat="server"></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ProcessInstanceID" HeaderText="Solicitud No.">
                            <ItemStyle HorizontalAlign="Center" Font-Bold="True" />
                            <HeaderStyle Wrap="false" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Ver">
                            <ItemTemplate>
                                <asp:HyperLink ID="lnkViewEntryData" runat="server" SkinID="HyperLinkVisited" >Solicitud</asp:HyperLink>
                                <%--<asp:HyperLink runat="server" ID="litDocument" NavigateUrl='<%# "../../bpo/public/showDocument.aspx?clientName=PWC&docName=&idProcessInstance=" & Eval("ProcessInstanceId") %>' Target="_blank">Documento</asp:HyperLink>--%>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tema/Comentario">
                            <ItemTemplate>
                                <asp:Label ID="lblProcessInstanceComment" runat="server" Text="<%#Container.DataItem.ProcessInstance.Comment%>"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Vencimiento en:">
                            <ItemTemplate>
                                <asp:Label ID="lblExpectedEndTime" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Wrap="False" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle CssClass="cssGridFooter" />
                    <RowStyle CssClass="cssGridRow" />
                    <HeaderStyle CssClass="cssGridHeader" />
                    <AlternatingRowStyle CssClass="cssGridAlternatingRow" />
                    <PagerStyle ForeColor="Blue" BackColor="LightBlue" />
                </asp:GridView>
                <div id="Div1" align="center">
                    <!-- Paginador -->
                    <br />
                    <cc1:PagerV2_8 ID="pgTaskList" runat="server" OnCommand="pagerTask_Command" GenerateGoToSection="True"
                        OfClause="de" Width="400px" PageSize="25" />
                    <!-- /Paginador -->
                </div>
                <!-- Consultas Auditor y Supervisor -->
                <asp:Panel ID="consultAuditor" runat="server" Width="100%">
                    <div align="center">
                        <b><span style="color: red">P R O C E S O S</span></b>
                    </div>
                    <asp:GridView ID="gvProcessAlarms" runat="server" BorderWidth="1px" AutoGenerateColumns="False"
                        EnableViewState="False" DataKeyNames="ID" AllowSorting="True" Width="100%">
                        <Columns>
                            <asp:TemplateField HeaderText="Solicitud No.">
                                <ItemTemplate>
                                    <asp:HyperLink ID="lblProcessForm" runat="server" Text="" NavigateUrl="#"></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%--<asp:TemplateField HeaderText="Ver">
                                            <ItemTemplate>
                                                <asp:HyperLink runat="server" ID="litDocument" NavigateUrl='<%# "../../bpo/public/showDocument.aspx?clientName=PWC&docName=&idProcessInstance=" & Eval("Id") %>' Target="_blank">Documento</asp:HyperLink>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>--%>
                            <asp:TemplateField HeaderText="Caso de Proceso">
                                <ItemTemplate>
                                    <asp:HyperLink ID="lblProcessName" runat="server" Text="" NavigateUrl="#" Target="_blank"></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Estado del Proceso">
                                <ItemTemplate>
                                    <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label><br />
                                    <asp:Label ID="lblTimeDiff" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" Wrap="True" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Fecha de Creación / Atención">
                                <ItemTemplate>
                                    <asp:Label ID="lblCreateTime" runat="server" Text=""></asp:Label><br />
                                    <asp:Label ID="lblStartTime" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <%--<asp:TemplateField HeaderText="Fecha de Terminación">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEndTime" runat="server" Text=""></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>--%>
                            <asp:TemplateField HeaderText="Duración Esperada">
                                <ItemTemplate>
                                    <asp:Label ID="lblDuration" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tema / Comentario">
                                <ItemTemplate>
                                    <asp:Label ID="lblComment" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle CssClass="cssGridFooter" />
                        <RowStyle CssClass="cssGridRow" />
                        <HeaderStyle CssClass="cssGridHeader" />
                        <AlternatingRowStyle CssClass="cssGridAlternatingRow" />
                    </asp:GridView>
                    <div id="Div3" align="center">
                        <br />
                        <cc1:PagerV2_8 ID="pgProcessAlarms" runat="server" OnCommand="pagerProcess_Command"
                            GenerateGoToSection="True" OfClause="de" Width="400px" PageSize="25" />
                    </div>
                    <br />
                    <div align="center">
                        <b><span style="color: red">A C T I V I D A D E S</span></b>
                    </div>
                    <asp:GridView ID="gvActivityAlarms" runat="server" BorderWidth="1px" AutoGenerateColumns="False"
                        EnableViewState="False" DataKeyNames="ID" AllowSorting="True" Style="width: 100%">
                        <Columns>
                            <%--<asp:TemplateField HeaderText="Actividad">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="lnkTaskName" runat="server">Link</asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                            <asp:HyperLinkField DataNavigateUrlFields="IDProcessInstance" DataTextField="IDProcessInstance"
                                HeaderText="Solicitud No." DataNavigateUrlFormatString="WhereIsTheProcess.aspx?IDProcessInstance={0}&DocumentAttach="
                                Target="_blank">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:HyperLinkField>
                            <%--<asp:BoundField DataField="ID" HeaderText="Actividad No.">
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>--%>
                            <%--<asp:TemplateField HeaderText="Ver">
                                            <ItemTemplate>
                                                <asp:HyperLink runat="server" ID="litDocument" NavigateUrl='<%# "../../bpo/public/showDocument.aspx?clientName=PWC&docName=&idProcessInstance=" & Eval("IdProcessInstance") %>' Target="_blank">Documento</asp:HyperLink>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>--%>
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <div id="divToolTipReport<%# Eval("Id") %>" class="" style="padding: 5px; background-color: White;
                                        width: 350px; height: 220px; border: solid 1px gray; text-align: justify; font-style: normal;">
                                        <div style="text-align: center;">
                                            <b>Información de la Actividad</b></div>
                                        <br />
                                        Número de Proceso:
                                        <%#Eval("IdProcessInstance")%><br />
                                        Número de Actividad:
                                        <%#Eval("ID")%><br />
                                        <br />
                                        Fecha de Creación:
                                        <%#Eval("CreateTime")%><br />
                                        Fecha de Atención:
                                        <%#If(Year(CDate(Eval("StartTime"))) > 1, Eval("StartTime"), "")%><br />
                                        Fecha de Finalización:
                                        <%#If(Year(CDate(Eval("EndTime"))) > 1, Eval("EndTime"), "")%><br />
                                        <br />
                                        Duración Presupuestada:
                                        <%#Eval("Duration") & " - " & Eval("Activity.ExpectedDuration.unit").ToString%><br />
                                        Duración Actual:
                                        <%#((DateDiff("s", Eval("CreateTime"), Now) \ 86400) Mod 365) & " días, " & ((DateDiff("s", Eval("CreateTime"), Now) \ 3600) Mod 24) & " Horas y " & ((DateDiff("s", Eval("CreateTime"), Now) \ 60) Mod 60) & " Minutos"%><br />
                                    </div>

                                    <script language="javascript" type="text/javascript">
                                                var t<%# Eval("Id") %> = null;
                                                t<%# Eval("Id") %> = new ToolTip("divToolTipReport<%# Eval("Id") %>",true,40);
                                    </script>

                                    <span onmouseover=if(t<%# Eval("Id") %>)t<%# Eval("Id") %>.Show(event,'l1') onmouseout=if(t<%# Eval("Id") %>)t<%# Eval("Id") %>.Hide(event)>
                                                <img src="../App_Themes/GattacaAdmin/Images/comment.png" height="16px" width="16px" style="cursor: hand" />
                                            </span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Actividad">
                                <ItemTemplate>
                                    <asp:Label ID="lblActivityName" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Usuario Responsable">
                                <ItemTemplate>
                                    <asp:Label ID="lblParticipantName" runat="server" Text=""></asp:Label></ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Fecha de Creación">
                                <ItemTemplate>
                                    <asp:Label ID="lblCreateTime" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Fecha de Atención">
                                <ItemTemplate>
                                    <asp:Label ID="lblStartTime" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <%--<asp:TemplateField HeaderText="Fecha de Terminación">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEndTime" runat="server" Text=""></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>--%>
                            <asp:TemplateField HeaderText="Duración Esperada">
                                <ItemTemplate>
                                    <asp:Label ID="lblDuration" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tiempo Transcurrido">
                                <ItemTemplate>
                                    <asp:Label ID="lblTimeDiff" runat="server" Text=""></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" Wrap="False" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tema / Comentario">
                                <ItemTemplate>
                                    <asp:Label ID="lblComment" runat="server" Text="<%#Container.DataItem.ProcessInstance.Comment%>"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle CssClass="cssGridFooter" />
                        <RowStyle CssClass="cssGridRow" />
                        <HeaderStyle CssClass="cssGridHeader" />
                        <AlternatingRowStyle CssClass="cssGridAlternatingRow" />
                    </asp:GridView>
                    <div id="Div2" align="center">
                        <br />
                        <cc1:PagerV2_8 ID="pgActivityAlarms" runat="server" OnCommand="pagerActivity_Command"
                            GenerateGoToSection="True" OfClause="de" Width="400px" PageSize="25" />
                    </div>
                </asp:Panel>
                <!-- /Consultas Supervisor y Auditor -->
            </td>
                <!-- / Panel Central -->
            </tr>
        </tbody>
    </table>
    <!-- Manejo de la Paginación -->
</asp:Content>