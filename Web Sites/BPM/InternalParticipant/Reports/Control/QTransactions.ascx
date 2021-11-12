<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="QTransactions.ascx.vb"
    Inherits="BPMWebSite.QTransactions" %>
<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<style type="text/css">
    .style1
    {
    }
    .style2
    {
        width: 130px;
    }
    .style3
    {
        width: 15px;
    }
    .style4
    {
        width: 125px;
    }
    .style5
    {
        width: 473px;
    }
    .style6
    {
        width: 179px;
    }
</style>

<div style="width: 100%; text-align: center;">
    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="red" Font-Bold="True"></asp:Label>
</div>
<!-- Init Panel Content -->
<table style="width: 100%">
    <tr>
        <td style="height: 20px" colspan="5">
            <b>Reporte de Cantidad de Transacciones</b>
            <hr />
        </td>
    </tr>
    <tr>
        <td style="height: 20px" colspan="5">
            <asp:Label ID="lblTituloFiltros" runat="server" Font-Bold="True" Text="Filtros"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Caso de Proceso:
        </td>
        <td class="style5">
            <asp:DropDownList ID="ddlProcesos" runat="server" Width="300px">
            </asp:DropDownList>
        </td>
        <td class="style3">
            &nbsp;
        </td>
        <td class="style2">
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
        <td class="style2">
            Actividad:
        </td>
        <td class="style5">
            <asp:TextBox ID="txtActividad" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                Display="Dynamic" Text="Debe ingresar un nombre de actividad asociada" ControlToValidate="txtActividad"
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
        <td class="style3">
            &nbsp;
        </td>
        <td class="style2">
            Responsable:
        </td>
        <td style="height: 20px">
            <asp:DropDownList ID="ddlParticipant" runat="server" Width="300px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Estado de Actividad:
        </td>
        <td class="style5">
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
        <td class="style3">
            &nbsp;
        </td>
        <td class="style2">
            <asp:CheckBox ID="cb3D" runat="server" Text="Mostrar en 3D" />
        </td>
        <td style="height: 20px">
        </td>
    </tr>
    <tr>
        <td class="style2">
            Tema Comentario
        </td>
        <td class="style1" colspan="4">
            <asp:TextBox ID="txtComment" runat="server" Columns="90"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="5">
            <table>
                <tr>
                    <td align="left" valign="middle" class="style4">
                        Fecha Inicial:
                    </td>
                    <td>
                       <asp:TextBox ID="txtDateInit" runat="server" Height="20px" Width="70px"></asp:TextBox>
                        <MKB:TimeSelector ID="tsTimeInit" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve">
                        </MKB:TimeSelector>
                        <cc1:CalendarExtender ID="Calendarextender9" runat="server" Enabled="True" Format="yyyy/MM/dd"
                            TargetControlID="txtDateInit">
                        </cc1:CalendarExtender>
                        <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender9" runat="server" TargetControlID="txtDateInit"
                            WatermarkText="aaaa/mm/dd">
                        </cc1:TextBoxWatermarkExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDateInit" 
                            Display="Dynamic">Debe ingresar una fecha inicial</asp:RequiredFieldValidator>
                    </td>
                    <td align="center" valign="middle" class="style3">
                        &nbsp;
                    </td>
                    <td align="left" valign="middle" class="style4">
                        Fecha Final:
                    </td>
                    <td>
                        <asp:TextBox ID="txtDateFinish" runat="server" Height="20px" Width="70px"></asp:TextBox>
                         <MKB:TimeSelector ID="tsTimeFinish" runat="server" DisplaySeconds="False" MinuteIncrement="15" SelectedTimeFormat="Twelve">
                        </MKB:TimeSelector>
                        <cc1:CalendarExtender ID="CalendarExtender10" runat="server" Enabled="True" Format="yyyy/MM/dd"
                            TargetControlID="txtDateFinish">
                        </cc1:CalendarExtender>
                        <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender10" runat="server" TargetControlID="txtDateFinish"
                            WatermarkText="aaaa/mm/dd">
                        </cc1:TextBoxWatermarkExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDateFinish" 
                            Display="Dynamic">Debe ingresar la fecha final</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ErrorMessage="CompareValidator" ControlToCompare="txtDateInit" 
                            ControlToValidate="txtDateFinish" Display="Dynamic" Operator="GreaterThanEqual" 
                            Type="Date">La fecha final debe ser mayor que la Inicial</asp:CompareValidator>
                    </td>
                    <td align="center" rowspan="1" valign="middle">
                        <asp:Button ID="btnSearch" runat="server" Text="Filtrar" />
                        &nbsp;<asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/Excel_32.png"
                            Width="20px" Height="20px" ToolTip="Descargar a Excel" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="5">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td colspan="5">
            <asp:Panel ID="HeaderPanel3" runat="server" CssClass="collapsePanelHeader" Height="30px">
                <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                    <div style="float: left;">
                        Numero de Transacciones por Cliente</div>
                    <div style="float: left; margin-left: 20px;">
                        (Mostrar...)</div>
                    <div style="float: right; vertical-align: middle;">
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                            AlternateText="(Mostrar...)" /></div>
                </div>
            </asp:Panel>
            <asp:Panel ID="ContentPanel3" runat="server" CssClass="collapsePanel" Height="599px">
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
                                        <asp:Chart ID="chartQTrans" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
                                            BackSecondaryColor="White" BorderColor="26, 59, 105" BorderDashStyle="Solid"
                                            BorderWidth="2" ImageLocation="~/Temp/" 
                                            ImageStorageMode="UseImageLocation" ImageType="Png"
                                            IsSoftShadows="False" Palette="BrightPastel" Visible="false" 
                                            Height="980px" Width="700px">
                                            <Titles>
                                                <asp:Title Font="Trebuchet MS, 10.25pt, style=Bold" ForeColor="26, 59, 105" ShadowColor="32, 0, 0, 0"
                                                    ShadowOffset="3" Name="Titulo">
                                                </asp:Title>
                                            </Titles>
                                            <Legends>
                                                <asp:Legend BackColor="Transparent" Docking="Bottom" Enabled="True" Font="Trebuchet MS, 8pt, style=Bold"
                                                    IsEquallySpacedItems="True" IsTextAutoFit="False" Name="Default" TitleFont="Microsoft Sans Serif, 8pt, style=Bold">
                                                </asp:Legend>
                                            </Legends>
                                            <BorderSkin SkinStyle="Emboss" />
                                            <Series>
                                                <asp:Series ChartArea="ChartAreaQTran" CustomProperties="LabelStyle=Bottom" Palette="Pastel"
                                                    Font="Trebuchet MS, 8.25pt, style=Bold" IsVisibleInLegend="false" Name="sActividades">
                                                </asp:Series>
                                            </Series>
                                            <ChartAreas>
                                                <asp:ChartArea BackColor="Transparent" BackGradientStyle="TopBottom" BackSecondaryColor="Transparent"
                                                    BorderColor="64, 64, 64, 64" Name="ChartAreaQTran" ShadowColor="Transparent">
                                                    <Area3DStyle Enable3D="False" Inclination="10" IsClustered="False" IsRightAngleAxes="False"
                                                        PointGapDepth="0" Rotation="10" WallWidth="0" />
                                                    <AxisY LineColor="64, 64, 64, 64" Title="Cantidad Transacciones">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisY>
                                                    <AxisX LineColor="64, 64, 64, 64" Title="Actividades">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt" Angle="90" IsEndLabelVisible="true" Interval="1" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisX>
                                                </asp:ChartArea>
                                                <asp:ChartArea BackColor="Transparent" BackGradientStyle="TopBottom" BackSecondaryColor="Transparent"
                                                    BorderColor="64, 64, 64, 64" Name="ChartAreaQTran2" ShadowColor="Transparent" >
                                                    <Area3DStyle Enable3D="False" Inclination="10" IsClustered="true" IsRightAngleAxes="False"
                                                        PointGapDepth="0" Rotation="10" WallWidth="0" />
                                                    <AxisY LineColor="64, 64, 64, 64" Title="Cantidad Transacciones">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                        <MajorGrid LineColor="64, 64, 64, 64" />
                                                    </AxisY>
                                                    <AxisX LineColor="64, 64, 64, 64" Title="Actividades">
                                                        <LabelStyle Font="Trebuchet MS, 8.25pt" Angle="-90" IsEndLabelVisible="true" Interval="1" />
                                                        <MajorGrid LineColor="64, 64, 64, 64"  />
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
</table>
<!-- End Panel Content -->
