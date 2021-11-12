<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ProcessInstance.ascx.vb"
    Inherits="BPMWebSite.ProcessInstance1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<div style="width: 100%; text-align: center;">
    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="red" Font-Bold="True"></asp:Label>
</div>
<!-- Init Panel Content -->
<table style="width: 100%">
    <tr>
        <td style="height: 20px">
            <b>Estadísticas de Procesos</b>
            <hr />
        </td>
    </tr>
    <tr>
        <td style="height: 20px">
            Caso de Proceso:&nbsp;
            <asp:DropDownList ID="ddlProcesos" runat="server" Width="300px">
            </asp:DropDownList>
            <br />
            <asp:Label ID="lblFilter" runat="server" Text="Filtro:"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtFilter" runat="server" Height="20px" Width="136px"></asp:TextBox>
            &nbsp;
            <asp:DropDownList ID="ddlFilter" runat="server" Width="150px">
                <asp:ListItem Value="0">-- Ninguno --</asp:ListItem>
                <asp:ListItem Value="1">No. Solicitud</asp:ListItem>
                <asp:ListItem Value="2">Tema / Comentario</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;<asp:Label ID="lblSearchDuration" runat="server" Text="Unidad de Duración:"></asp:Label>
            &nbsp;
            <asp:DropDownList ID="ddlUnitTime" runat="server" Width="150px">
                <asp:ListItem Value="9">Segundos</asp:ListItem>
                <asp:ListItem Value="8">Minutos</asp:ListItem>
                <asp:ListItem Value="7" Selected="True">Horas</asp:ListItem>
                <asp:ListItem Value="4">Dias</asp:ListItem>
                <asp:ListItem Value="2">Meses</asp:ListItem>
                <asp:ListItem Value="0">Años</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/Excel_32.png"
                Width="20px" Height="20px" ToolTip="Descargar a Excel" />
        </td>
    </tr>
    <tr>
        <td>
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
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
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
                            <asp:Chart ID="chartEstadosP" runat="server" ImageType="Png" ImageLocation="~/Temp/"
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
            <cc1:CollapsiblePanelExtender ID="ProcessCollapsiblePanelExtender1" runat="Server"
                TargetControlID="ContentPanel1" ExpandControlID="HeaderPanel1" CollapseControlID="HeaderPanel1"
                Collapsed="False" TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)"
                CollapsedText="(Mostrar...)" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                SuppressPostBack="true" />
        </td>
    </tr>
    <tr>
        <td>
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
                <br />
                <table style="width: 100%">
                    <%--<tr>
                                                    <td align="center" valign="top">
                                                        Fecha Inicial:
                                                        <asp:TextBox ID="txtInicio" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                                        <cc1:maskededitvalidator id="MaskedEditValidator5" runat="server" controlextender="txtInicio_MaskedEditExtender"
                                                            controltovalidate="txtInicio" display="Dynamic" errormessage="Fecha inválida"
                                                            invalidvaluemessage="Fecha inválida" validationgroup="grpD">
                                                        &nbsp;&nbsp;
                                                        </cc1:maskededitvalidator>
                                                        <cc1:calendarextender id="Calendarextender4" runat="server" enabled="True" format="dd/MM/yyyy"
                                                            targetcontrolid="txtInicio">
                                                        </cc1:calendarextender>
                                                        <cc1:maskededitextender id="txtInicio_MaskedEditExtender" runat="server" acceptnegative="Left"
                                                            cultureampmplaceholder="" culturecurrencysymbolplaceholder="" culturedateformat=""
                                                            culturedateplaceholder="" culturedecimalplaceholder="" culturethousandsplaceholder=""
                                                            culturetimeplaceholder="" displaymoney="Left" enabled="True" errortooltipenabled="True"
                                                            mask="99/99/9999" masktype="Date" targetcontrolid="txtInicio">
                                                        </cc1:maskededitextender>
                                                        <cc1:textboxwatermarkextender id="TextBoxWatermarkExtender5" runat="server" targetcontrolid="txtInicio"
                                                            watermarktext="dd/mm/aaaa">
                                                        </cc1:textboxwatermarkextender>
                                                    </td>
                                                    <td align="center" valign="top">
                                                        Fecha Final:
                                                        <asp:TextBox ID="txtFin" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                                        <cc1:maskededitvalidator id="MaskedEditValidator6" runat="server" controlextender="txtFin_MaskedEditExtender"
                                                            controltovalidate="txtFin" display="Dynamic" errormessage="Fecha inválida" invalidvaluemessage="Fecha inválida"
                                                            validationgroup="grpD">
                                                        &nbsp;&nbsp;
                                                        </cc1:maskededitvalidator>
                                                        <cc1:calendarextender id="CalendarExtender5" runat="server" enabled="True" format="dd/MM/yyyy"
                                                            targetcontrolid="txtFin">
                                                        </cc1:calendarextender>
                                                        <cc1:maskededitextender id="txtFin_MaskedEditExtender" runat="server" acceptnegative="Left"
                                                            cultureampmplaceholder="" culturecurrencysymbolplaceholder="" culturedateformat=""
                                                            culturedateplaceholder="" culturedecimalplaceholder="" culturethousandsplaceholder=""
                                                            culturetimeplaceholder="" displaymoney="Left" enabled="True" errortooltipenabled="True"
                                                            mask="99/99/9999" masktype="Date" targetcontrolid="txtFin">
                                                        </cc1:maskededitextender>
                                                        <cc1:textboxwatermarkextender id="TextBoxWatermarkExtender6" runat="server" targetcontrolid="txtFin"
                                                            watermarktext="dd/mm/aaaa">
                                                        </cc1:textboxwatermarkextender>
                                                    </td>
                                                    <td align="center" rowspan="1" valign="middle">
                                                        <asp:Button ID="btnConsultarD" runat="server" Text="Consultar" ValidationGroup="grpD" />
                                                    </td>
                                                </tr>--%>
                    <tr>
                        <td align="center" valign="top" colspan="3">
                            <asp:Chart ID="chartDuracionP" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
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
            </asp:Panel>
            <cc1:CollapsiblePanelExtender ID="ProcessCollapsiblePanelExtender2" runat="Server"
                TargetControlID="ContentPanel2" ExpandControlID="HeaderPanel2" CollapseControlID="HeaderPanel2"
                Collapsed="True" TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)"
                CollapsedText="(Mostrar...)" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                SuppressPostBack="true" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Panel ID="HeaderPanel3" runat="server" CssClass="collapsePanelHeader" Height="30px">
                <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                    <div style="float: left;">
                        Tiempo transcurrido en retraso</div>
                    <div style="float: left; margin-left: 20px;">
                        (Mostrar...)</div>
                    <div style="float: right; vertical-align: middle;">
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                            AlternateText="(Mostrar...)" /></div>
                </div>
            </asp:Panel>
            <asp:Panel ID="ContentPanel3" runat="server" CssClass="collapsePanel" Height="0">
                <br />
                <table style="width: 100%">
                    <%--<tr>
                                                    <td align="center" valign="top">
                                                        Fecha Inicial:
                                                        <asp:TextBox ID="txtInicioR" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                                        <cc1:maskededitvalidator id="MaskedEditValidator1" runat="server" controlextender="txtInicioR_MaskedEditExtender"
                                                            controltovalidate="txtInicioR" display="Dynamic" errormessage="Fecha inválida"
                                                            invalidvaluemessage="Fecha inválida" validationgroup="grpR">
                                                        &nbsp;&nbsp;
                                                        </cc1:maskededitvalidator>
                                                        <cc1:calendarextender id="Calendarextender1" runat="server" enabled="True" format="dd/MM/yyyy"
                                                            targetcontrolid="txtInicioR">
                                                        </cc1:calendarextender>
                                                        <cc1:maskededitextender id="txtInicioR_MaskedEditExtender" runat="server" acceptnegative="Left"
                                                            cultureampmplaceholder="" culturecurrencysymbolplaceholder="" culturedateformat=""
                                                            culturedateplaceholder="" culturedecimalplaceholder="" culturethousandsplaceholder=""
                                                            culturetimeplaceholder="" displaymoney="Left" enabled="True" errortooltipenabled="True"
                                                            mask="99/99/9999" masktype="Date" targetcontrolid="txtInicioR">
                                                        </cc1:maskededitextender>
                                                        <cc1:textboxwatermarkextender id="TextBoxWatermarkExtender1" runat="server" targetcontrolid="txtInicioR"
                                                            watermarktext="dd/mm/aaaa">
                                                        </cc1:textboxwatermarkextender>
                                                    </td>
                                                    <td align="center" valign="top">
                                                        Fecha Final:
                                                        <asp:TextBox ID="txtFinR" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                                        <cc1:maskededitvalidator id="MaskedEditValidator2" runat="server" controlextender="txtFinR_MaskedEditExtender"
                                                            controltovalidate="txtFinR" display="Dynamic" errormessage="Fecha inválida" invalidvaluemessage="Fecha inválida"
                                                            validationgroup="grpR">
                                                        &nbsp;&nbsp;
                                                        </cc1:maskededitvalidator>
                                                        <cc1:calendarextender id="CalendarExtender2" runat="server" enabled="True" format="dd/MM/yyyy"
                                                            targetcontrolid="txtFinR">
                                                        </cc1:calendarextender>
                                                        <cc1:maskededitextender id="txtFinR_MaskedEditExtender" runat="server" acceptnegative="Left"
                                                            cultureampmplaceholder="" culturecurrencysymbolplaceholder="" culturedateformat=""
                                                            culturedateplaceholder="" culturedecimalplaceholder="" culturethousandsplaceholder=""
                                                            culturetimeplaceholder="" displaymoney="Left" enabled="True" errortooltipenabled="True"
                                                            mask="99/99/9999" masktype="Date" targetcontrolid="txtFinR">
                                                        </cc1:maskededitextender>
                                                        <cc1:textboxwatermarkextender id="TextBoxWatermarkExtender2" runat="server" targetcontrolid="txtFinR"
                                                            watermarktext="dd/mm/aaaa">
                                                        </cc1:textboxwatermarkextender>
                                                    </td>
                                                    <td align="center" rowspan="1" valign="middle">
                                                        <asp:Button ID="btnConsultarR" runat="server" Text="Consultar" ValidationGroup="grpR" />
                                                    </td>
                                                </tr>--%>
                    <tr>
                        <td align="center" valign="top" colspan="3">
                            <asp:Chart ID="chartRetrasoP" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
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
            </asp:Panel>
            <cc1:CollapsiblePanelExtender ID="ProcessCollapsiblePanelExtender3" runat="Server"
                TargetControlID="ContentPanel3" ExpandControlID="HeaderPanel3" CollapseControlID="HeaderPanel3"
                Collapsed="True" TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)"
                CollapsedText="(Mostrar...)" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                SuppressPostBack="true" />
        </td>
    </tr>
    <tr>
        <td>
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
                <br />
                <table style="width: 100%">
                    <%--<tr>
                                                    <td align="center" valign="top">
                                                        Fecha Inicial:
                                                        <asp:TextBox ID="txtInicioC" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                                        <cc1:maskededitvalidator id="MaskedEditValidator3" runat="server" controlextender="txtInicioC_MaskedEditExtender"
                                                            controltovalidate="txtInicioC" display="Dynamic" errormessage="Fecha inválida"
                                                            invalidvaluemessage="Fecha inválida" validationgroup="grpC">
                                                        &nbsp;&nbsp;
                                                        </cc1:maskededitvalidator>
                                                        <cc1:calendarextender id="Calendarextender3" runat="server" enabled="True" format="dd/MM/yyyy"
                                                            targetcontrolid="txtInicioC">
                                                        </cc1:calendarextender>
                                                        <cc1:maskededitextender id="txtInicioC_MaskedEditExtender" runat="server" acceptnegative="Left"
                                                            cultureampmplaceholder="" culturecurrencysymbolplaceholder="" culturedateformat=""
                                                            culturedateplaceholder="" culturedecimalplaceholder="" culturethousandsplaceholder=""
                                                            culturetimeplaceholder="" displaymoney="Left" enabled="True" errortooltipenabled="True"
                                                            mask="99/99/9999" masktype="Date" targetcontrolid="txtInicioC">
                                                        </cc1:maskededitextender>
                                                        <cc1:textboxwatermarkextender id="TextBoxWatermarkExtender3" runat="server" targetcontrolid="txtInicioC"
                                                            watermarktext="dd/mm/aaaa">
                                                        </cc1:textboxwatermarkextender>
                                                    </td>
                                                    <td align="center" valign="top">
                                                        Fecha Final:
                                                        <asp:TextBox ID="txtFinC" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                                        <cc1:maskededitvalidator id="MaskedEditValidator4" runat="server" controlextender="txtFinC_MaskedEditExtender"
                                                            controltovalidate="txtFinC" display="Dynamic" errormessage="Fecha inválida" invalidvaluemessage="Fecha inválida"
                                                            validationgroup="grpC">
                                                        &nbsp;&nbsp;
                                                        </cc1:maskededitvalidator>
                                                        <cc1:calendarextender id="CalendarExtender6" runat="server" enabled="True" format="dd/MM/yyyy"
                                                            targetcontrolid="txtFinC">
                                                        </cc1:calendarextender>
                                                        <cc1:maskededitextender id="txtFinC_MaskedEditExtender" runat="server" acceptnegative="Left"
                                                            cultureampmplaceholder="" culturecurrencysymbolplaceholder="" culturedateformat=""
                                                            culturedateplaceholder="" culturedecimalplaceholder="" culturethousandsplaceholder=""
                                                            culturetimeplaceholder="" displaymoney="Left" enabled="True" errortooltipenabled="True"
                                                            mask="99/99/9999" masktype="Date" targetcontrolid="txtFinC">
                                                        </cc1:maskededitextender>
                                                        <cc1:textboxwatermarkextender id="TextBoxWatermarkExtender4" runat="server" targetcontrolid="txtFinC"
                                                            watermarktext="dd/mm/aaaa">
                                                        </cc1:textboxwatermarkextender>
                                                    </td>
                                                    <td align="center" rowspan="1" valign="middle">
                                                        <asp:Button ID="btnConsultarC" runat="server" Text="Consultar" ValidationGroup="grpC" />
                                                    </td>
                                                </tr>--%>
                    <tr>
                        <td align="center" valign="top" colspan="3">
                            <asp:Chart ID="chartCostosP" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
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
            </asp:Panel>
            <cc1:CollapsiblePanelExtender ID="ProcessCollapsiblePanelExtender4" runat="Server"
                TargetControlID="ContentPanel4" ExpandControlID="HeaderPanel4" CollapseControlID="HeaderPanel4"
                Collapsed="True" TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)"
                CollapsedText="(Mostrar...)" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                SuppressPostBack="true" />
        </td>
    </tr>
    <tr>
        <td>
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
                <br />
                <table style="width: 100%">
                    <%--<tr>
                                                    <td align="center" valign="top">
                                                        Fecha Inicial:
                                                        <asp:TextBox ID="txtInicioP" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                                        <cc1:maskededitvalidator id="MaskedEditValidator7" runat="server" controlextender="txtInicioP_MaskedEditExtender"
                                                            controltovalidate="txtInicioP" display="Dynamic" errormessage="Fecha inválida"
                                                            invalidvaluemessage="Fecha inválida" validationgroup="grpP">
                                                        &nbsp;&nbsp;
                                                        </cc1:maskededitvalidator>
                                                        <cc1:calendarextender id="Calendarextender7" runat="server" enabled="True" format="dd/MM/yyyy"
                                                            targetcontrolid="txtInicioP">
                                                        </cc1:calendarextender>
                                                        <cc1:maskededitextender id="txtInicioP_MaskedEditExtender" runat="server" acceptnegative="Left"
                                                            cultureampmplaceholder="" culturecurrencysymbolplaceholder="" culturedateformat=""
                                                            culturedateplaceholder="" culturedecimalplaceholder="" culturethousandsplaceholder=""
                                                            culturetimeplaceholder="" displaymoney="Left" enabled="True" errortooltipenabled="True"
                                                            mask="99/99/9999" masktype="Date" targetcontrolid="txtInicioP">
                                                        </cc1:maskededitextender>
                                                        <cc1:textboxwatermarkextender id="TextBoxWatermarkExtender7" runat="server" targetcontrolid="txtInicioP"
                                                            watermarktext="dd/mm/aaaa">
                                                        </cc1:textboxwatermarkextender>
                                                    </td>
                                                    <td align="center" valign="top">
                                                        Fecha Final:
                                                        <asp:TextBox ID="txtFinP" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                                        <cc1:maskededitvalidator id="MaskedEditValidator8" runat="server" controlextender="txtFinP_MaskedEditExtender"
                                                            controltovalidate="txtFinP" display="Dynamic" errormessage="Fecha inválida" invalidvaluemessage="Fecha inválida"
                                                            validationgroup="grpP">
                                                        &nbsp;&nbsp;
                                                        </cc1:maskededitvalidator>
                                                        <cc1:calendarextender id="CalendarExtender8" runat="server" enabled="True" format="dd/MM/yyyy"
                                                            targetcontrolid="txtFinP">
                                                        </cc1:calendarextender>
                                                        <cc1:maskededitextender id="txtFinP_MaskedEditExtender" runat="server" acceptnegative="Left"
                                                            cultureampmplaceholder="" culturecurrencysymbolplaceholder="" culturedateformat=""
                                                            culturedateplaceholder="" culturedecimalplaceholder="" culturethousandsplaceholder=""
                                                            culturetimeplaceholder="" displaymoney="Left" enabled="True" errortooltipenabled="True"
                                                            mask="99/99/9999" masktype="Date" targetcontrolid="txtFinP">
                                                        </cc1:maskededitextender>
                                                        <cc1:textboxwatermarkextender id="TextBoxWatermarkExtender8" runat="server" targetcontrolid="txtFinP"
                                                            watermarktext="dd/mm/aaaa">
                                                        </cc1:textboxwatermarkextender>
                                                    </td>
                                                    <td align="center" rowspan="1" valign="middle">
                                                        <asp:Button ID="btnConsultarP" runat="server" Text="Consultar" ValidationGroup="grpP" />
                                                    </td>
                                                </tr>--%>
                    <tr>
                        <td align="center" valign="top" colspan="3">
                            <asp:Chart ID="chartProductividadP" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
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
                                        Font="Trebuchet MS, 8.25pt, style=Bold" Name="Productividad">
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
            </asp:Panel>
            <cc1:CollapsiblePanelExtender ID="ProcessCollapsiblePanelExtender5" runat="Server"
                TargetControlID="ContentPanel5" ExpandControlID="HeaderPanel5" CollapseControlID="HeaderPanel5"
                Collapsed="True" TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)"
                CollapsedText="(Mostrar...)" ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                SuppressPostBack="true" />
        </td>
    </tr>
</table>
<!-- End Panel Content -->