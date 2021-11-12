<%@ page language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Tools_FailureTryCons, App_Web_v9uqm8rj" title="Estadísticas de Configuración del Sistema" theme="GattacaAdmin" %>

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
                        <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Estadisticas de Configuración del Sistema. Elemento : Intentos Fallidos de Acceso, Consolidados"></asp:Label>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="width: 100%">
                            <tr>
                                <td style="height: 20px" colspan="3">
                                    <asp:Label ID="Label1" runat="server" CssClass="cssLabelTitle" Text="Usuarios"></asp:Label>
                                </td>
                                <td align="center" rowspan="3" width="550" valign="top">
                                    <asp:Chart ID="ChartFailureUser" runat="server" ImageType="Png" ImageLocation="~/TempImageFiles/"
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
                                                Font="Trebuchet MS, 8.25pt, style=Bold" CustomProperties="LabelsRadialLineSize=1, LabelStyle=outside">
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
                                    <cc1:maskededitvalidator id="MaskedEditValidator1" runat="server" controlextender="txtInicio_MaskedEditExtender"
                                        controltovalidate="txtInicio" display="Dynamic" errormessage="Fecha inválida"
                                        invalidvaluemessage="Fecha inválida" validationgroup="grpU"></cc1:maskededitvalidator>
                                    <cc1:calendarextender id="txtInicio_CalendarExtender" runat="server" enabled="True"
                                        format="dd/MM/yyyy" targetcontrolid="txtInicio">
                                    </cc1:calendarextender>
                                    <cc1:maskededitextender id="txtInicio_MaskedEditExtender" runat="server" acceptnegative="Left"
                                        cultureampmplaceholder="" culturecurrencysymbolplaceholder="" culturedateformat=""
                                        culturedateplaceholder="" culturedecimalplaceholder="" culturethousandsplaceholder=""
                                        culturetimeplaceholder="" displaymoney="Left" enabled="True" errortooltipenabled="True"
                                        mask="99/99/9999" masktype="Date" targetcontrolid="txtInicio">
                                    </cc1:maskededitextender>
                                    <cc1:textboxwatermarkextender id="TextBoxWatermarkExtender1" runat="server" targetcontrolid="txtInicio"
                                        watermarktext="dd/mm/aaaa">
                                    </cc1:textboxwatermarkextender>
                                </td>
                                <td align="center" valign="top">
                                    Fecha Final:
                                    <asp:TextBox ID="txtFin" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                    <cc1:maskededitvalidator id="MaskedEditValidator2" runat="server" controlextender="txtFin_MaskedEditExtender"
                                        controltovalidate="txtFin" display="Dynamic" errormessage="Fecha inválida" invalidvaluemessage="Fecha inválida"
                                        validationgroup="grpU"></cc1:maskededitvalidator>
                                    <cc1:calendarextender id="CalendarExtender1" runat="server" enabled="True" format="dd/MM/yyyy"
                                        targetcontrolid="txtFin">
                                    </cc1:calendarextender>
                                    <cc1:maskededitextender id="txtFin_MaskedEditExtender" runat="server" acceptnegative="Left"
                                        cultureampmplaceholder="" culturecurrencysymbolplaceholder="" culturedateformat=""
                                        culturedateplaceholder="" culturedecimalplaceholder="" culturethousandsplaceholder=""
                                        culturetimeplaceholder="" displaymoney="Left" enabled="True" errortooltipenabled="True"
                                        mask="99/99/9999" masktype="Date" targetcontrolid="txtFin">
                                    </cc1:maskededitextender>
                                    <cc1:textboxwatermarkextender id="TextBoxWatermarkExtender2" runat="server" targetcontrolid="txtFin"
                                        watermarktext="dd/mm/aaaa">
                                    </cc1:textboxwatermarkextender>
                                </td>
                                <td align="center" valign="middle">
                                    <asp:Button ID="btnConsultarU" runat="server" Text="Consultar" ValidationGroup="grpU" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="width: 100%">
                            <tr>
                                <td style="height: 20px">
                                    <asp:Label ID="Label2" runat="server" CssClass="cssLabelTitle" Text="Direcciones IP"></asp:Label>
                                </td>
                                <td align="center" rowspan="2" width="550" valign="top">
                                    <asp:Chart ID="ChartFailureIP" runat="server" ImageType="Png" ImageLocation="~/TempImageFiles/"
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
                            <tr>
                                <td align="center" valign="top">
                                    <asp:GridView ID="gvDataI" runat="server" Width="100%" CssClass="cssGrid" ShowFooter="True">
                                        <RowStyle CssClass="cssItemStyle" />
                                        <HeaderStyle CssClass="cssHeaderStyle" />
                                        <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
                                        <FooterStyle Wrap="True" BackColor="Silver" Font-Bold="True" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
