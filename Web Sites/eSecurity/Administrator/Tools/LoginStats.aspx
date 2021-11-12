<%@ page language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Tools_LoginStats, App_Web_v9uqm8rj" title="Untitled Page" theme="GattacaAdmin" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="updUsers" runat="server">
        <ContentTemplate>
            <table style="width: 100%">
                <tr>
                    <td style="height: 20px">
                        <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Estadísticas del Sistema. Ingresos"></asp:Label>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="width: 100%">
                            <tr>
                                <td style="height: 20px" colspan="3">
                                    <asp:Label ID="Label1" runat="server" CssClass="cssLabelTitle" Text="Entradas"></asp:Label>
                                </td>
                                <td align="center" rowspan="3" width="550" valign="top">
                                    <asp:Chart ID="chartEntradas" runat="server" ImageType="Png" ImageLocation="~/TempImageFiles/"
                                        ImageStorageMode="UseImageLocation" BorderWidth="2" Palette="BrightPastel" BackColor="#D3DFF0"
                                        BorderDashStyle="Solid" BackGradientStyle="TopBottom" BackSecondaryColor="White"
                                        Visible="false" BorderColor="26, 59, 105" IsSoftShadows="False" Width="500px">
                                        <Titles>
                                            <asp:Title ShadowColor="32, 0, 0, 0" Font="Trebuchet MS, 14.25pt, style=Bold" ShadowOffset="3"
                                                ForeColor="26, 59, 105">
                                            </asp:Title>
                                        </Titles>
                                        <BorderSkin SkinStyle="Emboss"></BorderSkin>
                                        <Series>
                                            <asp:Series ChartArea="ChartArea1" Name="Series1" BorderColor="64, 64, 64, 64" Color="180, 65, 140, 240"
                                                Font="Trebuchet MS, 8.25pt, style=Bold" CustomProperties="DrawingStyle=Cylinder">
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
                            <tr>
                                <td align="center" valign="top" colspan="3">
                                    <asp:GridView ID="gvDataE" runat="server" Width="100%" CssClass="cssGrid" ShowFooter="True">
                                        <Columns>
                                            <asp:BoundField DataFormatString="{0:d}" DataField="Fecha" HeaderText="Fecha" />
                                        </Columns>
                                        <RowStyle CssClass="cssItemStyle" />
                                        <HeaderStyle CssClass="cssHeaderStyle" />
                                        <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
                                        <FooterStyle Wrap="True" BackColor="Silver" Font-Bold="True" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="top">
                                    Fecha Inicial:
                                    <asp:TextBox ID="txtInicio" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                    <cc1:MaskedEditValidator ID="MaskedEditValidator1" runat="server" ControlExtender="txtInicio_MaskedEditExtender"
                                        ControlToValidate="txtInicio" Display="Dynamic" ErrorMessage="Fecha inválida"
                                        InvalidValueMessage="Fecha inválida" ValidationGroup="grpE"></cc1:MaskedEditValidator>
                                    <cc1:CalendarExtender ID="txtInicio_CalendarExtender" runat="server" Enabled="True"
                                        Format="dd/MM/yyyy" TargetControlID="txtInicio">
                                    </cc1:CalendarExtender>
                                    <cc1:MaskedEditExtender ID="txtInicio_MaskedEditExtender" runat="server" AcceptNegative="Left"
                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                        CultureTimePlaceholder="" DisplayMoney="Left" Enabled="True" ErrorTooltipEnabled="True"
                                        Mask="99/99/9999" MaskType="Date" TargetControlID="txtInicio">
                                    </cc1:MaskedEditExtender>
                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txtInicio"
                                        WatermarkText="dd/mm/aaaa">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                                <td align="center" valign="top">
                                    Fecha Final:
                                    <asp:TextBox ID="txtFin" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                    <cc1:MaskedEditValidator ID="MaskedEditValidator2" runat="server" ControlExtender="txtFin_MaskedEditExtender"
                                        ControlToValidate="txtFin" Display="Dynamic" ErrorMessage="Fecha inválida" InvalidValueMessage="Fecha inválida"
                                        ValidationGroup="grpE"></cc1:MaskedEditValidator>
                                    <cc1:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" Format="dd/MM/yyyy"
                                        TargetControlID="txtFin">
                                    </cc1:CalendarExtender>
                                    <cc1:MaskedEditExtender ID="txtFin_MaskedEditExtender" runat="server" AcceptNegative="Left"
                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                        CultureTimePlaceholder="" DisplayMoney="Left" Enabled="True" ErrorTooltipEnabled="True"
                                        Mask="99/99/9999" MaskType="Date" TargetControlID="txtFin">
                                    </cc1:MaskedEditExtender>
                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" TargetControlID="txtFin"
                                        WatermarkText="dd/mm/aaaa">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                                <td align="center" valign="middle">
                                    <asp:Button ID="btnConsultarE" runat="server" Text="Consultar" ValidationGroup="grpE" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="width: 100%">
                            <tr>
                                <td style="height: 20px" colspan="3">
                                    <asp:Label ID="Label2" runat="server" CssClass="cssLabelTitle" Text="Usuarios"></asp:Label>
                                </td>
                                <td align="center" rowspan="3" width="550" valign="top">
                                    <asp:Chart ID="chartUsuarios" runat="server" ImageType="Png" ImageLocation="~/TempImageFiles/"
                                        ImageStorageMode="UseImageLocation" BorderWidth="2" Palette="BrightPastel" BackColor="#D3DFF0"
                                        BorderDashStyle="Solid" BackGradientStyle="TopBottom" BackSecondaryColor="White"
                                        Visible="false" BorderColor="26, 59, 105" IsSoftShadows="False" Width="500px">
                                        <Titles>
                                            <asp:Title ShadowColor="32, 0, 0, 0" Font="Trebuchet MS, 14.25pt, style=Bold" ShadowOffset="3"
                                                ForeColor="26, 59, 105">
                                            </asp:Title>
                                        </Titles>
                                        <BorderSkin SkinStyle="Emboss"></BorderSkin>
                                        <Series>
                                            <asp:Series ChartArea="ChartArea1" Name="Series1" BorderColor="64, 64, 64, 64" Color="180, 65, 140, 240"
                                                Font="Trebuchet MS, 8.25pt, style=Bold" CustomProperties="DrawingStyle=Cylinder">
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
                            <tr>
                                <td align="center" valign="top" colspan="3">
                                    <asp:GridView ID="gvDataU" runat="server" Width="100%" CssClass="cssGrid" ShowFooter="True">
                                        <Columns>
                                            <asp:BoundField DataFormatString="{0:d}" DataField="Fecha" HeaderText="Fecha" />
                                        </Columns>
                                        <RowStyle CssClass="cssItemStyle" />
                                        <HeaderStyle CssClass="cssHeaderStyle" />
                                        <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
                                        <FooterStyle Wrap="True" BackColor="Silver" Font-Bold="True" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="top">
                                    Fecha Inicial:
                                    <asp:TextBox ID="txtInicioU" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                    <cc1:MaskedEditValidator ID="MaskedEditValidator3" runat="server" ControlExtender="txtInicioU_MaskedEditExtender"
                                        ControlToValidate="txtInicioU" Display="Dynamic" ErrorMessage="Fecha inválida"
                                        InvalidValueMessage="Fecha inválida" ValidationGroup="grpU"></cc1:MaskedEditValidator>
                                    <cc1:CalendarExtender ID="Calendarextender2" runat="server" Enabled="True" Format="dd/MM/yyyy"
                                        TargetControlID="txtInicioU">
                                    </cc1:CalendarExtender>
                                    <cc1:MaskedEditExtender ID="txtInicioU_MaskedEditExtender" runat="server" AcceptNegative="Left"
                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                        CultureTimePlaceholder="" DisplayMoney="Left" Enabled="True" ErrorTooltipEnabled="True"
                                        Mask="99/99/9999" MaskType="Date" TargetControlID="txtInicioU">
                                    </cc1:MaskedEditExtender>
                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" TargetControlID="txtInicioU"
                                        WatermarkText="dd/mm/aaaa">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                                <td align="center" valign="top">
                                    Fecha Final:
                                    <asp:TextBox ID="txtFinU" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                    <cc1:MaskedEditValidator ID="MaskedEditValidator4" runat="server" ControlExtender="txtFinU_MaskedEditExtender"
                                        ControlToValidate="txtFinU" Display="Dynamic" ErrorMessage="Fecha inválida" InvalidValueMessage="Fecha inválida"
                                        ValidationGroup="grpU"></cc1:MaskedEditValidator>
                                    <cc1:CalendarExtender ID="CalendarExtender3" runat="server" Enabled="True" Format="dd/MM/yyyy"
                                        TargetControlID="txtFinU">
                                    </cc1:CalendarExtender>
                                    <cc1:MaskedEditExtender ID="txtFinU_MaskedEditExtender" runat="server" AcceptNegative="Left"
                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                        CultureTimePlaceholder="" DisplayMoney="Left" Enabled="True" ErrorTooltipEnabled="True"
                                        Mask="99/99/9999" MaskType="Date" TargetControlID="txtFinU">
                                    </cc1:MaskedEditExtender>
                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" runat="server" TargetControlID="txtFinU"
                                        WatermarkText="dd/mm/aaaa">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                                <td align="center" valign="middle">
                                    <asp:Button ID="btnConsultarU" runat="server" Text="Consultar" Style="height: 26px"
                                        ValidationGroup="grpU" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="width: 100%">
                            <tr>
                                <td style="height: 20px" colspan="3">
                                    <asp:Label ID="Label3" runat="server" CssClass="cssLabelTitle" Text="Entradas por Grupos de Usuarios"></asp:Label>
                                </td>
                                <td align="center" rowspan="4" width="550" valign="top">
                                    <asp:Chart ID="chartGrupos" runat="server" ImageType="Png" ImageLocation="~/TempImageFiles/"
                                        ImageStorageMode="UseImageLocation" BorderWidth="2" Palette="BrightPastel" BackColor="#D3DFF0"
                                        BorderDashStyle="Solid" BackGradientStyle="TopBottom" BackSecondaryColor="White"
                                        Visible="false" BorderColor="26, 59, 105" IsSoftShadows="False" Width="500px"
                                        Height="350px">
                                        <Titles>
                                            <asp:Title ShadowColor="32, 0, 0, 0" Font="Trebuchet MS, 14.25pt, style=Bold" ShadowOffset="3"
                                                ForeColor="26, 59, 105">
                                            </asp:Title>
                                        </Titles>
                                        <Legends>
                                            <asp:Legend Enabled="True" TitleFont="Microsoft Sans Serif, 8pt, style=Bold" BackColor="Transparent"
                                                Docking="Bottom" IsEquallySpacedItems="True" Font="Trebuchet MS, 8pt, style=Bold"
                                                IsTextAutoFit="False" Name="Default">
                                            </asp:Legend>
                                        </Legends>
                                        <BorderSkin SkinStyle="Emboss"></BorderSkin>
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
                            <tr>
                                <td align="center" valign="top" colspan="3">
                                    <asp:GridView ID="gvDataG" runat="server" Width="100%" CssClass="cssGrid">
                                        <Columns>
                                            <asp:BoundField DataFormatString="{0:d}" DataField="Fecha" HeaderText="Fecha" />
                                        </Columns>
                                        <RowStyle CssClass="cssItemStyle" />
                                        <HeaderStyle CssClass="cssHeaderStyle" />
                                        <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
                                        <FooterStyle Wrap="True" BackColor="Silver" Font-Bold="True" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="top">
                                    Fecha Inicial:
                                    <asp:TextBox ID="txtInicioG" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                    <cc1:MaskedEditValidator ID="MaskedEditValidator5" runat="server" ControlExtender="txtInicioG_MaskedEditExtender"
                                        ControlToValidate="txtInicioG" Display="Dynamic" ErrorMessage="Fecha inválida"
                                        InvalidValueMessage="Fecha inválida" ValidationGroup="grpG"></cc1:MaskedEditValidator>
                                    <cc1:CalendarExtender ID="Calendarextender4" runat="server" Enabled="True" Format="dd/MM/yyyy"
                                        TargetControlID="txtInicioG">
                                    </cc1:CalendarExtender>
                                    <cc1:MaskedEditExtender ID="txtInicioG_MaskedEditExtender" runat="server" AcceptNegative="Left"
                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                        CultureTimePlaceholder="" DisplayMoney="Left" Enabled="True" ErrorTooltipEnabled="True"
                                        Mask="99/99/9999" MaskType="Date" TargetControlID="txtInicioG">
                                    </cc1:MaskedEditExtender>
                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender5" runat="server" TargetControlID="txtInicioG"
                                        WatermarkText="dd/mm/aaaa">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                                <td align="center" valign="top">
                                    Fecha Final:
                                    <asp:TextBox ID="txtFinG" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                    <cc1:MaskedEditValidator ID="MaskedEditValidator6" runat="server" ControlExtender="txtFinG_MaskedEditExtender"
                                        ControlToValidate="txtFinG" Display="Dynamic" ErrorMessage="Fecha inválida" InvalidValueMessage="Fecha inválida"
                                        ValidationGroup="grpG"></cc1:MaskedEditValidator>
                                    <cc1:CalendarExtender ID="CalendarExtender5" runat="server" Enabled="True" Format="dd/MM/yyyy"
                                        TargetControlID="txtFinG">
                                    </cc1:CalendarExtender>
                                    <cc1:MaskedEditExtender ID="txtFinG_MaskedEditExtender" runat="server" AcceptNegative="Left"
                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                        CultureTimePlaceholder="" DisplayMoney="Left" Enabled="True" ErrorTooltipEnabled="True"
                                        Mask="99/99/9999" MaskType="Date" TargetControlID="txtFinG">
                                    </cc1:MaskedEditExtender>
                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender6" runat="server" TargetControlID="txtFinG"
                                        WatermarkText="dd/mm/aaaa">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                                <td align="center" rowspan="2" valign="middle">
                                    <asp:Button ID="btnConsultarG" runat="server" Text="Consultar" ValidationGroup="grpG" />
                                </td>
                            </tr>
                            <tr>
                                <td align="left" valign="top" colspan="2">
                                    Grupo:
                                    <asp:CheckBoxList ID="chklGrupos" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">
                                    </asp:CheckBoxList>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="width: 100%">
                            <tr>
                                <td style="height: 20px" colspan="3">
                                    <asp:Label ID="Label4" runat="server" CssClass="cssLabelTitle" Text="Entradas por Compañia"></asp:Label>
                                </td>
                                <td align="center" rowspan="4" width="550" valign="top">
                                    <asp:Chart ID="chartCompania" runat="server" ImageType="Png" ImageLocation="~/TempImageFiles/"
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
                                                Docking="Bottom" IsEquallySpacedItems="True" Font="Trebuchet MS, 8pt, style=Bold"
                                                IsTextAutoFit="False" Name="Default">
                                            </asp:Legend>
                                        </Legends>
                                        <BorderSkin SkinStyle="Emboss"></BorderSkin>
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
                            <tr>
                                <td align="center" valign="top" colspan="3">
                                    <asp:GridView ID="gvDataC" runat="server" Width="100%" CssClass="cssGrid">
                                        <Columns>
                                            <asp:BoundField DataFormatString="{0:d}" DataField="Fecha" HeaderText="Fecha" />
                                        </Columns>
                                        <RowStyle CssClass="cssItemStyle" />
                                        <HeaderStyle CssClass="cssHeaderStyle" />
                                        <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
                                        <FooterStyle Wrap="True" BackColor="Silver" Font-Bold="True" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="top">
                                    Fecha Inicial:
                                    <asp:TextBox ID="txtInicioC" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                    <cc1:MaskedEditValidator ID="MaskedEditValidator7" runat="server" ControlExtender="txtInicioC_MaskedEditExtender"
                                        ControlToValidate="txtInicioC" Display="Dynamic" ErrorMessage="Fecha inválida"
                                        InvalidValueMessage="Fecha inválida" ValidationGroup="grpC"></cc1:MaskedEditValidator>
                                    <cc1:CalendarExtender ID="Calendarextender6" runat="server" Enabled="True" Format="dd/MM/yyyy"
                                        TargetControlID="txtInicioC">
                                    </cc1:CalendarExtender>
                                    <cc1:MaskedEditExtender ID="txtInicioC_MaskedEditExtender" runat="server" AcceptNegative="Left"
                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                        CultureTimePlaceholder="" DisplayMoney="Left" Enabled="True" ErrorTooltipEnabled="True"
                                        Mask="99/99/9999" MaskType="Date" TargetControlID="txtInicioC">
                                    </cc1:MaskedEditExtender>
                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender7" runat="server" TargetControlID="txtInicioC"
                                        WatermarkText="dd/mm/aaaa">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                                <td align="center" valign="top">
                                    Fecha Final:
                                    <asp:TextBox ID="txtFinC" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                    <cc1:MaskedEditValidator ID="MaskedEditValidator8" runat="server" ControlExtender="txtFinC_MaskedEditExtender"
                                        ControlToValidate="txtFinC" Display="Dynamic" ErrorMessage="Fecha inválida" InvalidValueMessage="Fecha inválida"
                                        ValidationGroup="grpC"></cc1:MaskedEditValidator>
                                    <cc1:CalendarExtender ID="CalendarExtender7" runat="server" Enabled="True" Format="dd/MM/yyyy"
                                        TargetControlID="txtFinC">
                                    </cc1:CalendarExtender>
                                    <cc1:MaskedEditExtender ID="txtFinC_MaskedEditExtender" runat="server" AcceptNegative="Left"
                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                        CultureTimePlaceholder="" DisplayMoney="Left" Enabled="True" ErrorTooltipEnabled="True"
                                        Mask="99/99/9999" MaskType="Date" TargetControlID="txtFinC">
                                    </cc1:MaskedEditExtender>
                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender8" runat="server" TargetControlID="txtFinC"
                                        WatermarkText="dd/mm/aaaa">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                                <td align="center" rowspan="2" valign="middle">
                                    <asp:Button ID="btnConsultarC" runat="server" Text="Consultar" ValidationGroup="grpC" />
                                </td>
                            </tr>
                            <tr>
                                <td align="left" valign="top" colspan="2">
                                    Grupo:
                                    <asp:CheckBoxList ID="chklCompanias" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
                                    </asp:CheckBoxList>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="width: 100%">
                            <tr>
                                <td style="height: 20px" colspan="3">
                                    <asp:Label ID="Label5" runat="server" CssClass="cssLabelTitle" Text="Entradas por Localidad"></asp:Label>
                                </td>
                                <td align="center" rowspan="4" width="550" valign="top">
                                    <asp:Chart ID="chartLocalidad" runat="server" ImageType="Png" ImageLocation="~/TempImageFiles/"
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
                                                Docking="Bottom" IsEquallySpacedItems="True" Font="Trebuchet MS, 8pt, style=Bold"
                                                IsTextAutoFit="False" Name="Default">
                                            </asp:Legend>
                                        </Legends>
                                        <BorderSkin SkinStyle="Emboss"></BorderSkin>
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
                            <tr>
                                <td align="center" valign="top" colspan="3">
                                    <asp:GridView ID="gvDataL" runat="server" Width="100%" CssClass="cssGrid">
                                        <Columns>
                                            <asp:BoundField DataFormatString="{0:d}" DataField="Fecha" HeaderText="Fecha" />
                                        </Columns>
                                        <RowStyle CssClass="cssItemStyle" />
                                        <HeaderStyle CssClass="cssHeaderStyle" />
                                        <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
                                        <FooterStyle Wrap="True" BackColor="Silver" Font-Bold="True" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="top">
                                    Fecha Inicial:
                                    <asp:TextBox ID="txtInicioL" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                    <cc1:MaskedEditValidator ID="MaskedEditValidator9" runat="server" ControlExtender="txtInicioL_MaskedEditExtender"
                                        ControlToValidate="txtInicioL" Display="Dynamic" ErrorMessage="Fecha inválida"
                                        InvalidValueMessage="Fecha inválida" ValidationGroup="grpL"></cc1:MaskedEditValidator>
                                    <cc1:CalendarExtender ID="Calendarextender8" runat="server" Enabled="True" Format="dd/MM/yyyy"
                                        TargetControlID="txtInicioL">
                                    </cc1:CalendarExtender>
                                    <cc1:MaskedEditExtender ID="txtInicioL_MaskedEditExtender" runat="server" AcceptNegative="Left"
                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                        CultureTimePlaceholder="" DisplayMoney="Left" Enabled="True" ErrorTooltipEnabled="True"
                                        Mask="99/99/9999" MaskType="Date" TargetControlID="txtInicioL">
                                    </cc1:MaskedEditExtender>
                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender9" runat="server" TargetControlID="txtInicioL"
                                        WatermarkText="dd/mm/aaaa">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                                <td align="center" valign="top">
                                    Fecha Final:
                                    <asp:TextBox ID="txtFinL" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                    <cc1:MaskedEditValidator ID="MaskedEditValidator10" runat="server" ControlExtender="txtFinL_MaskedEditExtender"
                                        ControlToValidate="txtFinL" Display="Dynamic" ErrorMessage="Fecha inválida" InvalidValueMessage="Fecha inválida"
                                        ValidationGroup="grpL"></cc1:MaskedEditValidator>
                                    <cc1:CalendarExtender ID="CalendarExtender9" runat="server" Enabled="True" Format="dd/MM/yyyy"
                                        TargetControlID="txtFinL">
                                    </cc1:CalendarExtender>
                                    <cc1:MaskedEditExtender ID="txtFinL_MaskedEditExtender" runat="server" AcceptNegative="Left"
                                        CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat=""
                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder=""
                                        CultureTimePlaceholder="" DisplayMoney="Left" Enabled="True" ErrorTooltipEnabled="True"
                                        Mask="99/99/9999" MaskType="Date" TargetControlID="txtFinL">
                                    </cc1:MaskedEditExtender>
                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender10" runat="server" TargetControlID="txtFinL"
                                        WatermarkText="dd/mm/aaaa">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                                <td align="center" rowspan="2" valign="middle">
                                    <asp:Button ID="btnConsultarL" runat="server" Text="Consultar" ValidationGroup="grpL" />
                                </td>
                            </tr>
                            <tr>
                                <td align="left" valign="top" colspan="2">
                                    Localidad:
                                    <asp:CheckBoxList ID="chklLocalidad" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
                                    </asp:CheckBoxList>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
