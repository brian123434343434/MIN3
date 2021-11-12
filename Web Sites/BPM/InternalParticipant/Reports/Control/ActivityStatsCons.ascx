<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ActivityStatsCons.ascx.vb"
    Inherits="BPMWebSite.ActivityStatsCons1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>
<style type="text/css">
    .style1
    {
        width: 300px;
    }
    .style2
    {
        width: 293px;
    }
    .style3
    {
        width: 124px;
    }
    .style4
    {
        width: 95px;
    }
</style>
<div style="width: 100%; text-align: center;">
    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="red" Font-Bold="True"></asp:Label>
</div>
<!-- Init Panel Content -->
<table style="width: 100%">
    <tr>
        <td colspan="5">
            <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Estadísticas de Actividades"></asp:Label>
            <hr />
        </td>
    </tr>
    <tr>
        <td class="style3">
            Caso de Proceso:
        </td>
        <td class="style1">
            <asp:DropDownList ID="ddlProcesos" runat="server" Width="300px">
            </asp:DropDownList>
        </td>
        <td class="style4">
            Responsable:
        </td>
        <td class="style2">
            <asp:DropDownList ID="ddlParticipant" runat="server" Width="300px">
            </asp:DropDownList>
        </td>
        <td></td>
    </tr>
    <tr>
        <td class="style3">
            Tema Comentario
        </td>
        <td colspan="3">
            <asp:TextBox ID="txtComment" runat="server" Columns="90" MaxLength="500"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3" >
            Fecha Inicial:
        </td>
        <td class="style1">
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
                            ControlToValidate="txtDateInit" Display="Dynamic">Debe ingresar la fecha inicial</asp:RequiredFieldValidator>
            
        </td>
        <td class="style4">
            Fecha Final:
        </td>
        <td class="style2">
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
        <td>
        <asp:Button ID="btnSearch" runat="server" Text="Filtrar" />
            &nbsp;<asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/Excel_32.png"
                Width="20px" Height="20px" ToolTip="Descargar a Excel" />
        </td>
     </tr>
     <tr>
        <td colspan="5">
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
