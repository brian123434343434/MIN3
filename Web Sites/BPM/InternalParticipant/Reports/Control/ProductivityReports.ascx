<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ProductivityReports.ascx.vb"
    Inherits="BPMWebSite.ProductivityReports" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>
<style type="text/css">
    .style8
    {
        width: 180px;
    }
    .style11
    {
        height: 20px;
        width: 110px;
    }
</style>
<div style="width: 100%; text-align: center;">
    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="red" Font-Bold="True"></asp:Label>
</div>
<!-- Init Panel Content -->
<table style="width: 100%">
    <tr>
        <td style="height: 20px" colspan="4">
            <b>Reportes de Productividad</b>
            <hr />
        </td>
    </tr>
    <tr>
        <td style="height: 20px" colspan="4">
            <asp:Label ID="lblTituloFiltros" runat="server" Font-Bold="True" Text="Filtros"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style11">
            Caso de Proceso:
        </td>
        <td>
            <asp:DropDownList ID="ddlProcesos" runat="server" Width="300px" AutoPostBack="True">
            </asp:DropDownList>
        </td>
        <td class="style11">
            <asp:Label ID="lblSearchDuration" runat="server" Text="Unidad de Duración:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlUnitTime" runat="server" Width="150px">
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
        <td class="style11">
            Actividad:
        </td>
        <td>
            <asp:DropDownList ID="ddlActividades" runat="server" Width="300px">
            </asp:DropDownList>
        </td>
        <td class="style11">
            Responsable:
        </td>
        <td style="height: 20px">
            <asp:DropDownList ID="ddlParticipant" runat="server" Width="300px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style11">
            Estado de Actividad:
        </td>
        <td>
            <asp:DropDownList ID="ddlStatus" runat="server" Width="150px">
                <asp:ListItem Selected="True" Value="-1">-- Todos --</asp:ListItem>
                <asp:ListItem Value="2">Sin Iniciar</asp:ListItem>
                <asp:ListItem Value="4">En Atención</asp:ListItem>
                <asp:ListItem Value="8">Suspendida</asp:ListItem>
                <asp:ListItem Value="242">Abortada</asp:ListItem>
                <asp:ListItem Value="244">Terminada</asp:ListItem>
                <asp:ListItem Value="248">Completada</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style11">
            <asp:CheckBox ID="cb3D" runat="server" Text="Mostrar en 3D" />
        </td>
        <td style="height: 20px">
        </td>
    </tr>
    <tr>
        <td class="style11">
            Tema Comentario
        </td>
        <td colspan="3">
            <asp:TextBox ID="txtComment" runat="server" Columns="90" MaxLength="500"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <table>
                <tr>
                    <td align="left" valign="middle" class="style11">
                        Fecha Inicial:
                    </td>
                    <td class="style8">
                        <asp:TextBox ID="txtDateInit" runat="server" Height="20px" Width="70px"></asp:TextBox>
                        <MKB:TimeSelector ID="tsTimeInit" runat="server" DisplaySeconds="False" MinuteIncrement="15"
                            SelectedTimeFormat="Twelve">
                        </MKB:TimeSelector>
                        <cc1:CalendarExtender ID="Calendarextender9" runat="server" Enabled="True" Format="yyyy/MM/dd"
                            TargetControlID="txtDateInit">
                        </cc1:CalendarExtender>
                        <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender9" runat="server" TargetControlID="txtDateInit"
                            WatermarkText="aaaa/mm/dd">
                        </cc1:TextBoxWatermarkExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                            ControlToValidate="txtDateInit" Display="Dynamic">Debe ingresar una fecha inicial</asp:RequiredFieldValidator>
                    </td>
                    <td align="left" valign="middle" class="style11">
                        Fecha Final:
                    </td>
                    <td class="style8">
                        
                        <asp:TextBox ID="txtDateFinish" runat="server" Height="20px" Width="70px"></asp:TextBox>
                        <MKB:TimeSelector ID="tsTimeFinish" runat="server" DisplaySeconds="False" MinuteIncrement="15"
                            SelectedTimeFormat="Twelve">
                        </MKB:TimeSelector>
                        <cc1:CalendarExtender ID="CalendarExtender10" runat="server" Enabled="True" Format="yyyy/MM/dd"
                            TargetControlID="txtDateFinish">
                        </cc1:CalendarExtender>
                        <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender10" runat="server" TargetControlID="txtDateFinish"
                            WatermarkText="aaaa/mm/dd">
                        </cc1:TextBoxWatermarkExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"
                            ControlToValidate="txtDateFinish" Display="Dynamic">Debe ingresar la fecha final</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"
                            ControlToCompare="txtDateInit" ControlToValidate="txtDateFinish" Display="Dynamic"
                            Operator="GreaterThanEqual" Type="Date">La fecha final debe ser mayor que la Inicial</asp:CompareValidator>
                    </td>
                    <td align="left" valign="middle" class="style11">
                        Fecha de Creacion:
                    </td>
                    <td class="style8">
                        
                        <asp:TextBox ID="txtCreateDate" runat="server" Height="20px" Width="70px"></asp:TextBox>
                        <MKB:TimeSelector ID="tsTimeCreateDate" runat="server" DisplaySeconds="False" MinuteIncrement="15"
                            SelectedTimeFormat="Twelve">
                        </MKB:TimeSelector>
                        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" Format="yyyy/MM/dd"
                            TargetControlID="txtCreateDate">
                        </cc1:CalendarExtender>
                        <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txtCreateDate"
                            WatermarkText="aaaa/mm/dd">
                        </cc1:TextBoxWatermarkExtender>
                    </td>
                    <td align="center" rowspan="1" valign="middle">
                        <asp:Button ID="btnSearch" runat="server" Text="Filtrar" />
                        &nbsp;<asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/Excel_32.png"
                            Width="20px" Height="20px" ToolTip="Descargar a Excel" />
                    </td>
                </tr>
                <tr>
                    <td colspan="7">
                        <asp:Label ID="lblTituloOptions" runat="server" Text="Opciones de Consulta" Font-Bold="True"
                            ToolTip="De click para expandir o contraer las opciones del historico del filtro"></asp:Label>
                        <asp:UpdatePanel ID="udpOptions" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="pnlContentOptions" runat="server">
                                    <asp:RadioButtonList ID="rblOptionHistory" runat="server" AutoPostBack="True">
                                        <asp:ListItem Value="Save">Guardar Filtro</asp:ListItem>
                                        <asp:ListItem Value="Load">Cargar Filtro</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:Panel ID="pnlHistoryFilter" runat="server" Visible="false">
                                        <asp:DropDownList ID="ddlHistories" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </asp:Panel>
                                    <asp:Panel ID="pnlSaveHistory" runat="server" Visible="false">
                                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar Filtro" />
                                    </asp:Panel>
                                </asp:Panel>
                                <cc1:CollapsiblePanelExtender ID="CollapsiblePanelExtender6" runat="server" ExpandControlID="lblTituloOptions"
                                    TargetControlID="pnlContentOptions" CollapseControlID="lblTituloOptions">
                                </cc1:CollapsiblePanelExtender>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="rblOptionHistory" EventName="SelectedIndexChanged" />
                                <asp:PostBackTrigger ControlID="ddlHistories" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Panel ID="HeaderPanel1" runat="server" CssClass="collapsePanelHeader" Height="30px">
                <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                    <div style="float: left;">
                        Tiempo Promedio por Cliente</div>
                    <div style="float: left; margin-left: 20px;">
                        (Mostrar...)</div>
                    <div style="float: right; vertical-align: middle;">
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                            AlternateText="(Mostrar...)" /></div>
                </div>
            </asp:Panel>
            <asp:Panel ID="ContentPanel1" runat="server" CssClass="collapsePanel" Height="0">
                <table style="width: 100%">
                    <tr>
                        <td style="height: 20px">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="top">
                            <table style="width: 100%">
                                <tr>
                                    <td align="center" valign="top">
                                        <asp:Chart ID="chartTPromedioCliente" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
                                            BackSecondaryColor="White" BorderColor="26, 59, 105" BorderDashStyle="Solid"
                                            BorderWidth="2" ImageLocation="~/Temp/" ImageStorageMode="UseImageLocation" ImageType="Png"
                                            IsSoftShadows="False" Palette="BrightPastel" Visible="false" Width="600px" Height="450px">
                                            <Titles>
                                                <asp:Title Font="Trebuchet MS, 12.25pt, style=Bold" ForeColor="26, 59, 105" ShadowColor="32, 0, 0, 0"
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
                                                <asp:Series ChartArea="ChartArea1" ChartType="Column" Font="Trebuchet MS, 8.25pt, style=Bold"
                                                    Name="Actividad" Palette="Pastel" IsVisibleInLegend="false">
                                                </asp:Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea BackColor="Transparent" BackGradientStyle="TopBottom" BackSecondaryColor="Transparent"
                                                    BorderColor="64, 64, 64, 64" Name="ChartArea1" ShadowColor="Transparent">
                                                    <Area3DStyle Enable3D="False" Inclination="15" IsClustered="False" IsRightAngleAxes="false"
                                                        PointGapDepth="0" Rotation="10" WallWidth="0" />
                                                    <AxisY LineColor="64, 64, 64, 64" Title="Promedio Duracion Real/Actual">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisY>
                                                    <AxisX LineColor="64, 64, 64, 64" Title="Actividades">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt" Angle="90" Interval="1" IsEndLabelVisible="true" />
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
            <cc1:CollapsiblePanelExtender ID="ProcessCollapsiblePanelExtender2" runat="Server"
                TargetControlID="ContentPanel1" ExpandControlID="HeaderPanel1" CollapseControlID="HeaderPanel1"
                Collapsed="False" TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)"
                CollapsedText="(Mostrar...)" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                SuppressPostBack="true" />
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Panel ID="HeaderPanel2" runat="server" CssClass="collapsePanelHeader" Height="30px">
                <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                    <div style="float: left;">
                        Tiempo de Espera Promedio</div>
                    <div style="float: left; margin-left: 20px;">
                        (Mostrar...)</div>
                    <div style="float: right; vertical-align: middle;">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
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
                                    <td align="center" valign="top">
                                        <asp:Chart ID="chartEspera" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
                                            BackSecondaryColor="White" BorderColor="26, 59, 105" BorderDashStyle="Solid"
                                            BorderWidth="2" ImageLocation="~/Temp/" ImageStorageMode="UseImageLocation" ImageType="Png"
                                            IsSoftShadows="False" Palette="BrightPastel" Visible="false" Height="500px" Width="600px">
                                            <Titles>
                                                <asp:Title Font="Trebuchet MS, 12.25pt, style=Bold" ForeColor="26, 59, 105" ShadowColor="32, 0, 0, 0"
                                                    ShadowOffset="3" >
                                                </asp:Title>
                                            </Titles>
                                            <Legends>
                                                <asp:Legend BackColor="Transparent" Docking="Bottom" Enabled="True" Font="Trebuchet MS, 8pt, style=Bold"
                                                    IsEquallySpacedItems="True" IsTextAutoFit="False" Name="Default" TitleFont="Microsoft Sans Serif, 8pt, style=Bold">
                                                </asp:Legend>
                                            </Legends>
                                            <BorderSkin SkinStyle="Emboss" />
                                            <Series>
                                                <asp:Series ChartArea="ChartArea1" ChartType="Column" IsVisibleInLegend="false" Font="Trebuchet MS, 8.25pt, style=Bold"
                                                    Name="Actividad" Palette="Pastel">
                                                </asp:Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea BackColor="Transparent" BackGradientStyle="TopBottom" BackSecondaryColor="Transparent"
                                                    BorderColor="64, 64, 64, 64" Name="ChartArea1" ShadowColor="Transparent">
                                                    <Area3DStyle Enable3D="False" Inclination="15" IsClustered="False" IsRightAngleAxes="False"
                                                        PointGapDepth="0" Rotation="10" WallWidth="0" />
                                                    <AxisY LineColor="64, 64, 64, 64" Title="Tiempo de Espera Promedio">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisY>
                                                    <AxisX LineColor="64, 64, 64, 64" Title="Actividades">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt" Angle="90" Interval="1" />
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
            <cc1:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="Server" TargetControlID="ContentPanel2"
                ExpandControlID="HeaderPanel2" CollapseControlID="HeaderPanel2" Collapsed="True"
                TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)" CollapsedText="(Mostrar...)"
                ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                SuppressPostBack="true" />
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Panel ID="HeaderPanel3" runat="server" CssClass="collapsePanelHeader" Height="30px">
                <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                    <div style="float: left;">
                        Q Codificación Cliente</div>
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
                                    <td align="center" valign="top">
                                        <asp:Chart ID="chartQCod" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
                                            BackSecondaryColor="White" BorderColor="26, 59, 105" BorderDashStyle="Solid"
                                            BorderWidth="2" ImageLocation="~/Temp/" ImageStorageMode="UseImageLocation" ImageType="Png"
                                            IsSoftShadows="False" Palette="BrightPastel" Visible="false" Height="500px" Width="600px">
                                            <Titles>
                                                <asp:Title Font="Trebuchet MS, 12.25pt, style=Bold" ForeColor="26, 59, 105" ShadowColor="32, 0, 0, 0"
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
                                                <asp:Series ChartArea="ChartArea1" ChartType="Column" IsVisibleInLegend="false" Font="Trebuchet MS, 8.25pt, style=Bold"
                                                    Name="Actividad" Palette="Pastel">
                                                </asp:Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea BackColor="Transparent" BackGradientStyle="TopBottom" BackSecondaryColor="Transparent"
                                                    BorderColor="64, 64, 64, 64" Name="ChartArea1" ShadowColor="Transparent">
                                                    <Area3DStyle Enable3D="False" Inclination="15" IsClustered="False" IsRightAngleAxes="False"
                                                        PointGapDepth="0" Rotation="10" WallWidth="0" />
                                                    <AxisY LineColor="64, 64, 64, 64" Title="Cantidad Total">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisY>
                                                    <AxisX LineColor="64, 64, 64, 64" Title="Actividades">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt" Angle="90" Interval="1" />
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
            <cc1:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="Server" TargetControlID="ContentPanel3"
                ExpandControlID="HeaderPanel3" CollapseControlID="HeaderPanel3" Collapsed="True"
                TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)" CollapsedText="(Mostrar...)"
                ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                SuppressPostBack="true" />
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Panel ID="HeaderPanel4" runat="server" CssClass="collapsePanelHeader" Height="30px">
                <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                    <div style="float: left;">
                        Tiempo Promedio por Asistente</div>
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
                                    <td align="center" valign="top">
                                        <asp:Chart ID="chartAvgAsistente" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
                                            BackSecondaryColor="White" BorderColor="26, 59, 105" BorderDashStyle="Solid"
                                            BorderWidth="2" ImageLocation="~/Temp/" ImageStorageMode="UseImageLocation" ImageType="Png"
                                            IsSoftShadows="False" Palette="BrightPastel" Visible="false" Height="500px" Width="600px">
                                            <Titles>
                                                <asp:Title Font="Trebuchet MS, 12.25pt, style=Bold" ForeColor="26, 59, 105" ShadowColor="32, 0, 0, 0"
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
                                                <asp:Series ChartArea="ChartArea1" ChartType="Column" IsVisibleInLegend="false" Font="Trebuchet MS, 8.25pt, style=Bold"
                                                    Name="Actividad" Palette="Pastel">
                                                </asp:Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea BackColor="Transparent" BackGradientStyle="TopBottom" BackSecondaryColor="Transparent"
                                                    BorderColor="64, 64, 64, 64" Name="ChartArea1" ShadowColor="Transparent">
                                                    <Area3DStyle Enable3D="False" Inclination="15" IsClustered="False" IsRightAngleAxes="False"
                                                        PointGapDepth="0" Rotation="10" WallWidth="0" />
                                                    <AxisY LineColor="64, 64, 64, 64" Title="Promedio del Tiempo de Duracion Real/Actual">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisY>
                                                    <AxisX LineColor="64, 64, 64, 64" Title="Asistente">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt" Angle="90" Interval="1" IsEndLabelVisible="true" />
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
            <cc1:CollapsiblePanelExtender ID="CollapsiblePanelExtender3" runat="Server" TargetControlID="ContentPanel4"
                ExpandControlID="HeaderPanel4" CollapseControlID="HeaderPanel4" Collapsed="True"
                TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)" CollapsedText="(Mostrar...)"
                ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                SuppressPostBack="true" />
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Panel ID="HeaderPanel5" runat="server" CssClass="collapsePanelHeader" Height="30px">
                <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                    <div style="float: left;">
                        Tiempo Promedio de Espera por Asistente
                    </div>
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
                                    <td align="center" valign="top">
                                        <asp:Chart ID="chartEsperaAsistente" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
                                            BackSecondaryColor="White" BorderColor="26, 59, 105" BorderDashStyle="Solid"
                                            BorderWidth="2" ImageLocation="~/Temp/" ImageStorageMode="UseImageLocation" ImageType="Png"
                                            IsSoftShadows="False" Palette="BrightPastel" Visible="false" Height="500px" Width="600px">
                                            <Titles>
                                                <asp:Title Font="Trebuchet MS, 12.25pt, style=Bold" ForeColor="26, 59, 105" ShadowColor="32, 0, 0, 0"
                                                    ShadowOffset="3" >
                                                </asp:Title>
                                            </Titles>
                                            <Legends>
                                                <asp:Legend BackColor="Transparent" Docking="Bottom" Enabled="True" Font="Trebuchet MS, 8pt, style=Bold"
                                                    IsEquallySpacedItems="True" IsTextAutoFit="False" Name="Default" TitleFont="Microsoft Sans Serif, 8pt, style=Bold">
                                                </asp:Legend>
                                            </Legends>
                                            <BorderSkin SkinStyle="Emboss" />
                                            <Series>
                                                <asp:Series ChartArea="ChartArea1" ChartType="Column" IsVisibleInLegend="false" Font="Trebuchet MS, 8.25pt, style=Bold"
                                                    Name="Asistente" Palette="Pastel">
                                                </asp:Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea BackColor="Transparent" BackGradientStyle="TopBottom" BackSecondaryColor="Transparent"
                                                    BorderColor="64, 64, 64, 64" Name="ChartArea1" ShadowColor="Transparent">
                                                    <Area3DStyle Enable3D="False" Inclination="15" IsClustered="False" IsRightAngleAxes="False"
                                                        PointGapDepth="0" Rotation="10" WallWidth="0" />
                                                    <AxisY LineColor="64, 64, 64, 64" Title="Tiempo de Espera Promedio">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisY>
                                                    <AxisX LineColor="64, 64, 64, 64" Title="Asistentes">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt" Angle="90" Interval="1" />
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
            <cc1:CollapsiblePanelExtender ID="CollapsiblePanelExtender4" runat="Server" TargetControlID="ContentPanel5"
                ExpandControlID="HeaderPanel5" CollapseControlID="HeaderPanel5" Collapsed="True"
                TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)" CollapsedText="(Mostrar...)"
                ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                SuppressPostBack="true" />
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:Panel ID="HeaderPanel6" runat="server" CssClass="collapsePanelHeader" Height="30px">
                <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                    <div style="float: left;">
                        Q Codificación por Asistente</div>
                    <div style="float: left; margin-left: 20px;">
                        (Mostrar...)</div>
                    <div style="float: right; vertical-align: middle;">
                        <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                            AlternateText="(Mostrar...)" /></div>
                </div>
            </asp:Panel>
            <asp:Panel ID="ContentPanel6" runat="server" CssClass="collapsePanel" Height="0">
                <table style="width: 100%">
                    <tr>
                        <td style="height: 20px">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="top">
                            <table style="width: 100%">
                                <tr>
                                    <td align="center" valign="top">
                                        <asp:Chart ID="chartQAsistente" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
                                            BackSecondaryColor="White" BorderColor="26, 59, 105" BorderDashStyle="Solid"
                                            BorderWidth="2" ImageLocation="~/Temp/" ImageStorageMode="UseImageLocation" ImageType="Png"
                                            IsSoftShadows="False" Palette="BrightPastel" Visible="false" Height="500px" Width="600px">
                                            <Titles>
                                                <asp:Title Font="Trebuchet MS, 12.25pt, style=Bold" ForeColor="26, 59, 105" ShadowColor="32, 0, 0, 0"
                                                    ShadowOffset="3" >
                                                </asp:Title>
                                            </Titles>
                                            <Legends>
                                                <asp:Legend BackColor="Transparent" Docking="Bottom" Enabled="True" Font="Trebuchet MS, 8pt, style=Bold"
                                                    IsEquallySpacedItems="True" IsTextAutoFit="False" Name="Default" TitleFont="Microsoft Sans Serif, 8pt, style=Bold">
                                                </asp:Legend>
                                            </Legends>
                                            <BorderSkin SkinStyle="Emboss" />
                                            <Series>
                                                <asp:Series ChartArea="ChartArea1" ChartType="Column" IsVisibleInLegend="false" Font="Trebuchet MS, 8.25pt, style=Bold"
                                                    Name="Asistentes" Palette="Pastel">
                                                </asp:Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea BackColor="Transparent" BackGradientStyle="TopBottom" BackSecondaryColor="Transparent"
                                                    BorderColor="64, 64, 64, 64" Name="ChartArea1" ShadowColor="Transparent">
                                                    <Area3DStyle Enable3D="False" Inclination="15" IsClustered="False" IsRightAngleAxes="False"
                                                        PointGapDepth="0" Rotation="10" WallWidth="0" />
                                                    <AxisY LineColor="64, 64, 64, 64" Title="Cantidad Total">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisY>
                                                    <AxisX LineColor="64, 64, 64, 64" Title="Asistente">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt" Angle="90" Interval="1" IsEndLabelVisible="true" />
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
            <cc1:CollapsiblePanelExtender ID="CollapsiblePanelExtender5" runat="Server" TargetControlID="ContentPanel6"
                ExpandControlID="HeaderPanel6" CollapseControlID="HeaderPanel6" Collapsed="True"
                TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)" CollapsedText="(Mostrar...)"
                ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                SuppressPostBack="true" />
        </td>
    </tr>
</table>
<!-- End Panel Content -->
