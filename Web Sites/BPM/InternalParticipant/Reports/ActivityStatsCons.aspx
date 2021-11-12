<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowIP.Master"
    CodeBehind="ActivityStatsCons.aspx.vb" Inherits="BPMWebSite.ActivityStatsCons" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phDefault" runat="server">
    <%--<asp:UpdatePanel ID="upDefault" runat="server">
        <ContentTemplate>--%>
            <table style="width: 100%; height: 100%" border="0">
                <tbody>
                    <tr>
                        <td style="width: 175px" class="cssLeftPanel" valign="top" align="left">
                            <asp:TreeView ID="tvTaskSelector" SkinID="TreeViewFuncionario" runat="server" OnSelectedNodeChanged="tvTaskSelector_SelectedNodeChanged"
                                ShowLines="True">
                                <HoverNodeStyle CssClass="cssTreeHoverNode" />
                                <SelectedNodeStyle CssClass="cssTreeSelectedNode" />
                                <RootNodeStyle CssClass="cssTreeRootNode" />
                                <LeafNodeStyle CssClass="cssTreeLeafNode" />
                                <NodeStyle CssClass="cssTreeNode" />
                            </asp:TreeView>
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
                        </td>
                        <td class="cssCentralPanel" valign="top" align="left">
                            <!-- Init Panel Content -->
                            <table style="width: 100%">
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Estadísticas de Actividades"></asp:Label>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 97px">
                                        Caso de Proceso:</td>
                                    <td>
                                        <asp:DropDownList ID="ddlProcesos" runat="server" Width="300px" ></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 97px">
                                        Responsable: 
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlParticipant" runat="server" Width="300px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 97px">
                                                    Fecha Inicial:</td>
                                    <td>
                                                    <asp:TextBox ID="txtDateInit" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                                    <cc1:CalendarExtender ID="Calendarextender9" runat="server" Enabled="True" Format="yyyy/MM/dd"
                                                        TargetControlID="txtDateInit">
                                                    </cc1:CalendarExtender>
                                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender9" runat="server" TargetControlID="txtDateInit"
                                                        WatermarkText="aaaa/mm/dd">
                                                    </cc1:TextBoxWatermarkExtender>
                                                &nbsp;&nbsp; Fecha Final: <asp:TextBox ID="txtDateFinish" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                                    <cc1:CalendarExtender ID="CalendarExtender10" runat="server" Enabled="True" Format="yyyy/MM/dd"
                                                        TargetControlID="txtDateFinish">
                                                    </cc1:CalendarExtender>
                                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender10" runat="server" TargetControlID="txtDateFinish"
                                                        WatermarkText="aaaa/mm/dd">
                                                    </cc1:TextBoxWatermarkExtender>
                                                &nbsp;<asp:Button ID="btnSearch" runat="server" Text="Filtrar" />
                                                    &nbsp;<asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/Excel_32.png" Width="20px" Height="20px" ToolTip="Descargar a Excel" />
                                    </td>
                                </tr>
                            </table>
                                
                                
                            <table style="width: 100%">
                                
                                
                                <tr>
                                    <td colspan="2">
                                        <table style="width: 100%">
                                            <tr>
                                                <td colspan="2">
                                        <hr />
                                                    <asp:Label ID="Label5" runat="server" CssClass="cssLabelTitle" Text="Actividades que generan espera"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" valign="top">
                                                    <asp:GridView ID="gvDelays" runat="server" AutoGenerateColumns="False">
                                                        <Columns>
                                                            <asp:BoundField DataField="Actividad" HeaderText="Actividad">
                                                                <ItemStyle HorizontalAlign="Left" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Total" HeaderText="Horas de Espera" DataFormatString="{0:N0}" />
                                                            <asp:BoundField DataField="Porcentaje" HeaderText="Porcentaje" DataFormatString="{0:N2} %" />
                                                        </Columns>
                                                    </asp:GridView>
                                                </td>
                                                <td align="center" valign="top">
                                                    <asp:Chart ID="chartActEspera" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
                                                        BackSecondaryColor="White" BorderColor="26, 59, 105" BorderDashStyle="Solid"
                                                        BorderWidth="2" ImageLocation="~/Temp/" ImageStorageMode="UseImageLocation" ImageType="Png"
                                                        IsSoftShadows="False" Palette="BrightPastel" Visible="false" Width="500px" Height="900px">
                                                        <Titles>
                                                            <asp:Title Font="Trebuchet MS, 14.25pt, style=Bold" ForeColor="26, 59, 105" ShadowColor="32, 0, 0, 0"
                                                                ShadowOffset="3">
                                                            </asp:Title>
                                                        </Titles>
                                                        <Legends>
                                                            <asp:Legend Docking="Bottom" BackColor="Transparent" Enabled="True" Font="Trebuchet MS, 8pt, style=Bold"
                                                                IsEquallySpacedItems="True" IsTextAutoFit="False" Name="Default" TitleFont="Microsoft Sans Serif, 8pt, style=Bold">
                                                            </asp:Legend>
                                                        </Legends>
                                                        <BorderSkin SkinStyle="Emboss" />
                                                        <Series>
                                                            <asp:Series BorderColor="64, 64, 64, 64" ChartArea="ChartArea1" Color="180, 65, 140, 240"
                                                                Font="Trebuchet MS, 8.25pt, style=Bold" Name="Series1">
                                                            </asp:Series>
                                                        </Series>
                                                        <ChartAreas>
                                                            <asp:ChartArea BackColor="Transparent" BackGradientStyle="TopBottom" BackSecondaryColor="Transparent"
                                                                BorderColor="64, 64, 64, 64" Name="ChartArea1" ShadowColor="Transparent">
                                                                <Area3DStyle Enable3D="False" Inclination="15" IsClustered="False" IsRightAngleAxes="False"
                                                                    PointGapDepth="0" Rotation="10" WallWidth="0" />
                                                                <AxisY LineColor="64, 64, 64, 64">
                                                                    <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                                    <MajorGrid LineColor="64, 64, 64, 64" />
                                                                </AxisY>
                                                                <AxisX LineColor="64, 64, 64, 64">
                                                                    <LabelStyle Font="Trebuchet MS, 8.25pt" />
                                                                    <MajorGrid LineColor="64, 64, 64, 64" />
                                                                </AxisX>
                                                            </asp:ChartArea>
                                                        </ChartAreas>
                                                    </asp:Chart>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <!-- End Panel Content -->
                        </td>
                    </tr>
                </tbody>
            </table>
            <!--Manejo de la Paginación-->

            <script language="javascript" type="text/javascript">
                function Navigate(Page, Status) {
                    document.location = 'TaskList.aspx?Page=' + Page + '&Status=' + Status;
                }
            </script>

        <%--</ContentTemplate>
    </asp:UpdatePanel>--%>
</asp:Content>
