<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowIP.Master"
    CodeBehind="ActivityInstance.aspx.vb" Inherits="BPMWebSite.ActivityInstance" %>

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
                                    <td style="height: 20px" colspan="2">
                                        <b>Estadísticas de Actividades</b>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 20px; width: 95px;">Caso de Proceso:</td>
                                    <td><asp:DropDownList ID="ddlProcesos" runat="server" Width="300px" 
                                            AutoPostBack="True" >
                                        </asp:DropDownList>&nbsp;<asp:Label ID="lblSearchDuration" runat="server" Text="Unidad de Duración:"></asp:Label>
                                        &nbsp;<asp:DropDownList ID="ddlUnitTime" runat="server" Width="150px">
                                            <asp:ListItem Value="9">Segundos</asp:ListItem>
                                            <asp:ListItem Value="8">Minutos</asp:ListItem>
                                            <asp:ListItem Selected="True" Value="7">Horas</asp:ListItem>
                                            <asp:ListItem Value="4">Dias</asp:ListItem>
                                            <asp:ListItem Value="2">Meses</asp:ListItem>
                                            <asp:ListItem Value="0">Años</asp:ListItem>
                                        </asp:DropDownList>
                                                                        </td>
                                </tr>
                                <tr>
                                    <td style="height: 20px; width: 95px;">
                                        Actividad:
                                    </td>
                                    <td style="height: 20px">
                                        <asp:DropDownList ID="ddlActividades" runat="server" Width="300px">
                                        </asp:DropDownList>
                                        &nbsp;Responsable:
                                        <asp:DropDownList ID="ddlParticipant" runat="server" Width="300px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table>
                                            <tr>
                                                <td align="center" valign="top">
                                                    Fecha Inicial:
                                                    <asp:TextBox ID="txtDateInit" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                                    <cc1:CalendarExtender ID="Calendarextender9" runat="server" Enabled="True" Format="yyyy/MM/dd"
                                                        TargetControlID="txtDateInit">
                                                    </cc1:CalendarExtender>
                                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender9" runat="server" TargetControlID="txtDateInit"
                                                        WatermarkText="aaaa/mm/dd">
                                                    </cc1:TextBoxWatermarkExtender>
                                                </td>
                                                <td align="center" valign="top">
                                                    Fecha Final:
                                                    <asp:TextBox ID="txtDateFinish" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                                    <cc1:CalendarExtender ID="CalendarExtender10" runat="server" Enabled="True" Format="yyyy/MM/dd"
                                                        TargetControlID="txtDateFinish">
                                                    </cc1:CalendarExtender>
                                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender10" runat="server" TargetControlID="txtDateFinish"
                                                        WatermarkText="aaaa/mm/dd">
                                                    </cc1:TextBoxWatermarkExtender>
                                                </td>
                                                <td align="center" rowspan="1" valign="middle">
                                                    <asp:Button ID="btnSearch" runat="server" Text="Filtrar" />
                                                &nbsp;<asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/Excel_32.png" Width="20px" Height="20px" ToolTip="Descargar a Excel" />    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>


                                <tr>
                                    <td colspan="2">
                                        <table style="width: 100%">
                                            <tr>
                                                <td align="center" valign="top">
                                                    <asp:Panel ID="HeaderPanel1" runat="server" CssClass="collapsePanelHeader" Height="30px">
                                                        <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                                            <div style="float: left;">
                                                                Vista por estados</div>
                                                            <div style="float: left; margin-left: 20px;">
                                                                (Mostrar...)</div>
                                                            <div style="float: right; vertical-align: middle;">
                                                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                                                    AlternateText="(Mostrar...)" /></div>
                                                        </div>
                                                    </asp:Panel>
                                                    <asp:Panel ID="ContentPanel1" runat="server" CssClass="collapsePanel" Height="0">
                                                        <br />
                                                        <table style="width: 100%">
                                                            <tr>
                                                                <td style="height: 20px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" valign="top">
                                                                    <asp:Chart ID="chartEstadosA" runat="server" ImageType="Png" ImageLocation="~/Temp/"
                                                                        ImageStorageMode="UseImageLocation" BorderWidth="2" Palette="BrightPastel" BackColor="#D3DFF0"
                                                                        BorderDashStyle="Solid" BackGradientStyle="TopBottom" BackSecondaryColor="White"
                                                                        Visible="false" BorderColor="26, 59, 105" IsSoftShadows="False" Width="500px">
                                                                        <Titles>
                                                                            <asp:Title ShadowColor="32, 0, 0, 0" Font="Trebuchet MS, 14.25pt, style=Bold" ShadowOffset="3"
                                                                                ForeColor="26, 59, 105">
                                                                            </asp:Title>
                                                                        </Titles>
                                                                        <Legends>
                                                                            <asp:Legend Enabled="True" TitleFont="Microsoft Sans Serif, 8pt, style=Bold" BackColor="Transparent"
                                                                                IsEquallySpacedItems="True" Font="Trebuchet MS, 8pt, style=Bold" IsTextAutoFit="False"
                                                                                Name="Default">
                                                                            </asp:Legend>
                                                                        </Legends>
                                                                        <BorderSkin SkinStyle="Emboss"></BorderSkin>
                                                                        <Series>
                                                                            <asp:Series ChartArea="ChartArea1" Name="Series1" BorderColor="64, 64, 64, 64" Color="180, 65, 140, 240"
                                                                                Font="Trebuchet MS, 8.25pt, style=Bold">
                                                                            </asp:Series>
                                                                        </Series>
                                                                        <ChartAreas>
                                                                            <asp:ChartArea Name="ChartArea1" BorderColor="64, 64, 64, 64" BackSecondaryColor="Transparent"
                                                                                BackColor="Transparent" ShadowColor="Transparent" BackGradientStyle="TopBottom">
                                                                                <Area3DStyle PointGapDepth="0" Rotation="10" Enable3D="False" Inclination="15" IsRightAngleAxes="False"
                                                                                    WallWidth="0" IsClustered="False" />
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
                                                    </asp:Panel>
                                                    <cc1:collapsiblepanelextender id="ProcessCollapsiblePanelExtender1" runat="Server"
                                                        targetcontrolid="ContentPanel1" expandcontrolid="HeaderPanel1" collapsecontrolid="HeaderPanel1"
                                                        collapsed="False" textlabelid="Label1" imagecontrolid="Image1" expandedtext="(Ocultar...)"
                                                        collapsedtext="(Mostrar...)" expandedimage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                                                        collapsedimage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                                        suppresspostback="true" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Panel ID="HeaderPanel2" runat="server" CssClass="collapsePanelHeader" Height="30px">
                                            <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                                <div style="float: left;">
                                                    Duración estimada Vs real</div>
                                                <div style="float: left; margin-left: 20px;">
                                                    (Mostrar...)</div>
                                                <div style="float: right; vertical-align: middle;">
                                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                                        AlternateText="(Mostrar...)" /></div>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="ContentPanel2" runat="server" CssClass="collapsePanel" Height="0">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td style="height: 20px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="top">
                                                        <table style="width: 100%">
                                                            <tr>
                                                                <td align="center" valign="top" colspan="3">
                                                                    <asp:Chart ID="chartDuracionA" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
                                                                        BackSecondaryColor="White" BorderColor="26, 59, 105" BorderDashStyle="Solid"
                                                                        BorderWidth="2" ImageLocation="~/Temp/" ImageStorageMode="UseImageLocation" ImageType="Png"
                                                                        IsSoftShadows="False" Palette="BrightPastel" Visible="false" Width="500px">
                                                                        <Titles>
                                                                            <asp:Title Font="Trebuchet MS, 14.25pt, style=Bold" ForeColor="26, 59, 105" ShadowColor="32, 0, 0, 0"
                                                                                ShadowOffset="3">
                                                                            </asp:Title>
                                                                        </Titles>
                                                                        <Legends>
                                                                            <asp:Legend BackColor="Transparent" Docking="Bottom" Enabled="True" Font="Trebuchet MS, 8pt, style=Bold"
                                                                                IsEquallySpacedItems="True" IsTextAutoFit="False" Name="Default" TitleFont="Microsoft Sans Serif, 8pt, style=Bold">
                                                                            </asp:Legend>
                                                                        </Legends>
                                                                        <BorderSkin SkinStyle="Emboss" />
                                                                        <Series>
                                                                            <asp:Series ChartArea="ChartArea1" ChartType="FastLine" CustomProperties="LabelsRadialLineSize=1, LabelStyle=outside"
                                                                                Font="Trebuchet MS, 8.25pt, style=Bold" Name="Duración Estimada">
                                                                            </asp:Series>
                                                                            <asp:Series ChartArea="ChartArea1" ChartType="FastLine" CustomProperties="LabelsRadialLineSize=1, LabelStyle=outside"
                                                                                Font="Trebuchet MS, 8.25pt, style=Bold" Name="Duración Real/Actual">
                                                                            </asp:Series>
                                                                        </Series>
                                                                        <ChartAreas>
                                                                            <asp:ChartArea BackColor="Transparent" BackGradientStyle="TopBottom" BackSecondaryColor="Transparent"
                                                                                BorderColor="64, 64, 64, 64" Name="ChartArea1" ShadowColor="Transparent">
                                                                                <Area3DStyle Enable3D="False" Inclination="15" IsClustered="False" IsRightAngleAxes="False"
                                                                                    PointGapDepth="0" Rotation="10" WallWidth="0" />
                                                                                <AxisY LineColor="64, 64, 64, 64" Title="Tiempo en Horas">
                                                                                    <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                                                    <MajorGrid LineColor="64, 64, 64, 64" />
                                                                                </AxisY>
                                                                                <AxisX LineColor="64, 64, 64, 64" Title="Instancia de Proceso">
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
                                        </asp:Panel>
                                        <cc1:collapsiblepanelextender id="ProcessCollapsiblePanelExtender2" runat="Server"
                                            targetcontrolid="ContentPanel2" expandcontrolid="HeaderPanel2" collapsecontrolid="HeaderPanel2"
                                            collapsed="True" textlabelid="Label1" imagecontrolid="Image1" expandedtext="(Ocultar...)"
                                            collapsedtext="(Mostrar...)" expandedimage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                                            collapsedimage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                            suppresspostback="true" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Panel ID="HeaderPanel3" runat="server" CssClass="collapsePanelHeader" Height="30px">
                                            <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                                <div style="float: left;">
                                                    Tiempo transcurrido en espera</div>
                                                <div style="float: left; margin-left: 20px;">
                                                    (Mostrar...)</div>
                                                <div style="float: right; vertical-align: middle;">
                                                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                                        AlternateText="(Mostrar...)" /></div>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="ContentPanel3" runat="server" CssClass="collapsePanel" Height="0">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td style="height: 20px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="top">
                                                        <table style="width: 100%">
                                                            <tr>
                                                                <td align="center" valign="top" colspan="3">
                                                                    <asp:Chart ID="chartEsperaA" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
                                                                        BackSecondaryColor="White" BorderColor="26, 59, 105" BorderDashStyle="Solid"
                                                                        BorderWidth="2" ImageLocation="~/Temp/" ImageStorageMode="UseImageLocation" ImageType="Png"
                                                                        IsSoftShadows="False" Palette="BrightPastel" Visible="false" Width="500px">
                                                                        <Titles>
                                                                            <asp:Title Font="Trebuchet MS, 14.25pt, style=Bold" ForeColor="26, 59, 105" ShadowColor="32, 0, 0, 0"
                                                                                ShadowOffset="3">
                                                                            </asp:Title>
                                                                        </Titles>
                                                                        <BorderSkin SkinStyle="Emboss" />
                                                                        <Series>
                                                                            <asp:Series ChartArea="ChartArea1" CustomProperties="LabelsRadialLineSize=1, LabelStyle=outside"
                                                                                Font="Trebuchet MS, 8.25pt, style=Bold" Name="Tiempo de Retraso">
                                                                            </asp:Series>
                                                                        </Series>
                                                                        <ChartAreas>
                                                                            <asp:ChartArea BackColor="Transparent" BackGradientStyle="TopBottom" BackSecondaryColor="Transparent"
                                                                                BorderColor="64, 64, 64, 64" Name="ChartArea1" ShadowColor="Transparent">
                                                                                <Area3DStyle Enable3D="False" Inclination="15" IsClustered="False" IsRightAngleAxes="False"
                                                                                    PointGapDepth="0" Rotation="10" WallWidth="0" />
                                                                                <AxisY LineColor="64, 64, 64, 64" Title="Tiempo en días">
                                                                                    <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                                                    <MajorGrid LineColor="64, 64, 64, 64" />
                                                                                </AxisY>
                                                                                <AxisX LineColor="64, 64, 64, 64" Title="Instancia de Proceso">
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
                                        </asp:Panel>
                                        <cc1:collapsiblepanelextender id="ProcessCollapsiblePanelExtender3" runat="Server"
                                            targetcontrolid="ContentPanel3" expandcontrolid="HeaderPanel3" collapsecontrolid="HeaderPanel3"
                                            collapsed="True" textlabelid="Label1" imagecontrolid="Image1" expandedtext="(Ocultar...)"
                                            collapsedtext="(Mostrar...)" expandedimage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                                            collapsedimage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                            suppresspostback="true" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Panel ID="HeaderPanel4" runat="server" CssClass="collapsePanelHeader" Height="30px">
                                            <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                                <div style="float: left;">
                                                    Costo estimado Vs real</div>
                                                <div style="float: left; margin-left: 20px;">
                                                    (Mostrar...)</div>
                                                <div style="float: right; vertical-align: middle;">
                                                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                                        AlternateText="(Mostrar...)" /></div>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="ContentPanel4" runat="server" CssClass="collapsePanel" Height="0">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td style="height: 20px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="top">
                                                        <table style="width: 100%">
                                                            <tr>
                                                                <td align="center" valign="top" colspan="3">
                                                                    <asp:Chart ID="chartCostosA" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
                                                                        BackSecondaryColor="White" BorderColor="26, 59, 105" BorderDashStyle="Solid"
                                                                        BorderWidth="2" ImageLocation="~/Temp/" ImageStorageMode="UseImageLocation" ImageType="Png"
                                                                        IsSoftShadows="False" Palette="BrightPastel" Visible="false" Width="500px">
                                                                        <Titles>
                                                                            <asp:Title Font="Trebuchet MS, 14.25pt, style=Bold" ForeColor="26, 59, 105" ShadowColor="32, 0, 0, 0"
                                                                                ShadowOffset="3">
                                                                            </asp:Title>
                                                                        </Titles>
                                                                        <Legends>
                                                                            <asp:Legend BackColor="Transparent" Docking="Bottom" Enabled="True" Font="Trebuchet MS, 8pt, style=Bold"
                                                                                IsEquallySpacedItems="True" IsTextAutoFit="False" Name="Default" TitleFont="Microsoft Sans Serif, 8pt, style=Bold">
                                                                            </asp:Legend>
                                                                        </Legends>
                                                                        <BorderSkin SkinStyle="Emboss" />
                                                                        <Series>
                                                                            <asp:Series ChartArea="ChartArea1" ChartType="FastLine" CustomProperties="LabelsRadialLineSize=1, LabelStyle=outside"
                                                                                Font="Trebuchet MS, 8.25pt, style=Bold" Name="Costo Estimado">
                                                                            </asp:Series>
                                                                            <asp:Series ChartArea="ChartArea1" ChartType="FastLine" CustomProperties="LabelsRadialLineSize=1, LabelStyle=outside"
                                                                                Font="Trebuchet MS, 8.25pt, style=Bold" Name="Costo Real">
                                                                            </asp:Series>
                                                                        </Series>
                                                                        <ChartAreas>
                                                                            <asp:ChartArea BackColor="Transparent" BackGradientStyle="TopBottom" BackSecondaryColor="Transparent"
                                                                                BorderColor="64, 64, 64, 64" Name="ChartArea1" ShadowColor="Transparent">
                                                                                <Area3DStyle Enable3D="False" Inclination="15" IsClustered="False" IsRightAngleAxes="False"
                                                                                    PointGapDepth="0" Rotation="10" WallWidth="0" />
                                                                                <AxisY LineColor="64, 64, 64, 64" Title="Costo ($)">
                                                                                    <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                                                    <MajorGrid LineColor="64, 64, 64, 64" />
                                                                                </AxisY>
                                                                                <AxisX LineColor="64, 64, 64, 64" Title="Instancia de Proceso">
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
                                        </asp:Panel>
                                        <cc1:collapsiblepanelextender id="ProcessCollapsiblePanelExtender4" runat="Server"
                                            targetcontrolid="ContentPanel4" expandcontrolid="HeaderPanel4" collapsecontrolid="HeaderPanel4"
                                            collapsed="True" textlabelid="Label1" imagecontrolid="Image1" expandedtext="(Ocultar...)"
                                            collapsedtext="(Mostrar...)" expandedimage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                                            collapsedimage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                            suppresspostback="true" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Panel ID="HeaderPanel5" runat="server" CssClass="collapsePanelHeader" Height="30px">
                                            <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                                <div style="float: left;">
                                                    Productividad</div>
                                                <div style="float: left; margin-left: 20px;">
                                                    (Mostrar...)</div>
                                                <div style="float: right; vertical-align: middle;">
                                                    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                                        AlternateText="(Mostrar...)" /></div>
                                            </div>
                                        </asp:Panel>
                                        <asp:Panel ID="ContentPanel5" runat="server" CssClass="collapsePanel" Height="0">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td style="height: 20px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="top">
                                                        <table style="width: 100%">
                                                            <tr>
                                                                <td align="center" valign="top" colspan="3">
                                                                    <asp:Chart ID="chartProductividadA" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
                                                                        BackSecondaryColor="White" BorderColor="26, 59, 105" BorderDashStyle="Solid"
                                                                        BorderWidth="2" ImageLocation="~/Temp/" ImageStorageMode="UseImageLocation" ImageType="Png"
                                                                        IsSoftShadows="False" Palette="BrightPastel" Visible="false" Width="500px">
                                                                        <Titles>
                                                                            <asp:Title Font="Trebuchet MS, 14.25pt, style=Bold" ForeColor="26, 59, 105" ShadowColor="32, 0, 0, 0"
                                                                                ShadowOffset="3">
                                                                            </asp:Title>
                                                                        </Titles>
                                                                        <BorderSkin SkinStyle="Emboss" />
                                                                        <Series>
                                                                            <asp:Series ChartArea="ChartArea1" ChartType="FastLine" CustomProperties="LabelsRadialLineSize=1, LabelStyle=outside"
                                                                                Font="Trebuchet MS, 8.25pt, style=Bold" Name="Costo Estimado">
                                                                            </asp:Series>
                                                                        </Series>
                                                                        <ChartAreas>
                                                                            <asp:ChartArea BackColor="Transparent" BackGradientStyle="TopBottom" BackSecondaryColor="Transparent"
                                                                                BorderColor="64, 64, 64, 64" Name="ChartArea1" ShadowColor="Transparent">
                                                                                <Area3DStyle Enable3D="False" Inclination="15" IsClustered="False" IsRightAngleAxes="False"
                                                                                    PointGapDepth="0" Rotation="10" WallWidth="0" />
                                                                                <AxisY LineColor="64, 64, 64, 64" Title="(%)Productividad">
                                                                                    <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                                                    <MajorGrid LineColor="64, 64, 64, 64" />
                                                                                </AxisY>
                                                                                <AxisX LineColor="64, 64, 64, 64" Title="Instancia de Proceso">
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
                                        </asp:Panel>
                                        <cc1:collapsiblepanelextender id="ProcessCollapsiblePanelExtender5" runat="Server"
                                            targetcontrolid="ContentPanel5" expandcontrolid="HeaderPanel5" collapsecontrolid="HeaderPanel5"
                                            collapsed="True" textlabelid="Label1" imagecontrolid="Image1" expandedtext="(Ocultar...)"
                                            collapsedtext="(Mostrar...)" expandedimage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                                            collapsedimage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                                            suppresspostback="true" />
                                    </td>
                                </tr>
                            </table>
                            <!-- End Panel Content -->
                        </td>
                    </tr>
                </tbody>
            </table>
        <%--</ContentTemplate>
    </asp:UpdatePanel>--%>
</asp:Content>