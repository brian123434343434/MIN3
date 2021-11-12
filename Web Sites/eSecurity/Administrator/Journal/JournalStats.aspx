<%@ page language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Journal_JournalStats, App_Web_qr9widkq" title="Estadísticas de Operaciones" theme="GattacaAdmin" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Estadísticas de Operaciones (Log)"></asp:Label>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" bgcolor="White" border="0" cellpadding="1" cellspacing="1">
                    <tr>
                        <td class="cssFormFieldName" style="width: 280px">
                            Operación
                        </td>
                        <td>
                            <asp:ListBox ID="lstApplicationTransaction" runat="server" Width="400px"></asp:ListBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 280px">
                            Presentación:
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rblDistributionGroup" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="Week">Semanal</asp:ListItem>
                                <asp:ListItem Value="Month">Mensual</asp:ListItem>
                                <asp:ListItem Value="Quarter">Trimestral</asp:ListItem>
                                <asp:ListItem Value="Year">Anual</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 280px">
                            Año
                        </td>
                        <td>
                            <asp:TextBox ID="txtYear" runat="server" Width="60px" Wrap="False"></asp:TextBox>
                            <cc1:NumericUpDownExtender ID="txtYear_NumericUpDownExtender" runat="server" Enabled="True"
                                Maximum="2100" Minimum="0" RefValues="" ServiceDownMethod="" ServiceDownPath=""
                                ServiceUpMethod="" Tag="" TargetButtonDownID="" TargetButtonUpID="" TargetControlID="txtYear"
                                Width="60">
                            </cc1:NumericUpDownExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 280px">
                            Códigos de Error (Opcional)
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlErrores" runat="server" Width="400px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" height="10">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnBuscar" runat="server" Text="Consultar Operaciones" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" height="10">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Chart ID="Chart1" runat="server" ImageType="Png" ImageLocation="~/TempImageFiles/ChartImg.png"
                                ImageStorageMode="UseImageLocation" BorderWidth="2" Palette="BrightPastel" BackColor="WhiteSmoke"
                                BackSecondaryColor="White" BackGradientStyle="TopBottom" Visible="false" BorderColor="26, 59, 105"
                                BorderDashStyle="Solid" Width="800px">
                                <Titles>
                                    <asp:Title ShadowColor="32, 0, 0, 0" Font="Trebuchet MS, 14.25pt, style=Bold" ShadowOffset="3"
                                        Text="Estadísticas de Operaciones" ForeColor="26, 59, 105">
                                    </asp:Title>
                                </Titles>
                                <Legends>
                                    <asp:Legend Enabled="False" IsTextAutoFit="False" Name="Default" BackColor="Transparent"
                                        Font="Trebuchet MS, 8.25pt, style=Bold">
                                    </asp:Legend>
                                </Legends>
                                <BorderSkin SkinStyle="Emboss"></BorderSkin>
                                <Series>
                                    <asp:Series ChartArea="ChartArea1" Name="Series1" BorderColor="180, 26, 59, 105"
                                        Color="220, 65, 140, 240" CustomProperties="DrawingStyle=Cylinder">
                                    </asp:Series>
                                </Series>   
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1" BorderColor="64, 64, 64, 64" BackSecondaryColor="White"
                                        BackColor="WhiteSmoke" ShadowColor="Transparent">
                                        <Area3DStyle PointGapDepth="0" Rotation="10" Enable3D="True" Inclination="15" IsRightAngleAxes="False"
                                            WallWidth="0" IsClustered="False" />
                                        <AxisY LineColor="64, 64, 64, 64">
                                            <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                            <MajorGrid LineColor="64, 64, 64, 64" />
                                        </AxisY>
                                        <AxisX LineColor="64, 64, 64, 64" Interval="1" IntervalType="Number">
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
        <tr>
            <td>
                <asp:GridView ID="gvData" runat="server" Width="100%" AutoGenerateColumns="true"
                    CssClass="cssGrid">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="Client" DataNavigateUrlFormatString="../User/AddUser.aspx?Option=Edit&amp;Id={0}"
                            HeaderText="Usuario" DataTextField="Name" />
                    </Columns>
                    <RowStyle CssClass="cssItemStyle" />
                    <HeaderStyle CssClass="cssHeaderStyle" />
                    <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
                    <FooterStyle Wrap="True" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
