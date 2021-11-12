<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="CreateReports.ascx.vb"
    Inherits="BPMWebSite.CreateReports" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>
<style type="text/css">
    .style1
    {
        height: 20px;
        width: 118px;
    }
    .style2
    {
        width: 332px;
    }
    .style3
    {
        height: 20px;
        width: 332px;
    }
    .style4
    {
        width: 50px;
    }
    .style5
    {
        width: 120px;
    }
    .style6
    {
        width: 150px;
    }
    .style8
    {
        width: 108px;
    }
    .style9
    {
        width: 107px;
    }
</style>
<div style="width: 100%; text-align: center;">
    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="red" Font-Bold="True"></asp:Label>
</div>
<!-- Init Panel Content -->
    <table style="width: 100%">
        <tr>
            <td style="height: 20px" colspan="4">
                <b>Creacion de Reportes</b>
                <hr />
            </td>
        </tr>
        <tr>
            <td style="height: 20px" colspan="4">
                <table>
                    <tr valign="top">
                        <td valign="top" align="center" class="style4">
                            Eje Y:
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlEjeY" runat="server" ToolTip="Seleccione una opcion para usar en el eje X ">
                            </asp:DropDownList>
                        </td>
                        <td valign="top" align="center" class="style4">
                            Eje X:
                        </td>
                        <td>
                            <asp:ListBox ID="lbEjeX" runat="server" SelectionMode="Multiple" ToolTip="Seleccione varias opciones manteniendo oprimida la tecla Ctrl">
                            </asp:ListBox>
                            <asp:CustomValidator ID="cvEjeY" runat="server" ErrorMessage="CustomValidator" Display="Dynamic"
                                Text="Debe seleccionar al menos una opcion para el eje Y"></asp:CustomValidator>
                        </td>
                        <td valign="top" align="center" class="style5">
                            Tipo de Grafico:
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlTipoGrafica" runat="server" ToolTip="Seleccione un tipo de gráfica">
                            </asp:DropDownList>
                        </td>
                        <td valign="top" align="center" class="style6">
                            <asp:CheckBox ID="cb3D" runat="server" Text="Mostrar en 3D" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="height: 20px" colspan="4">
                <hr />
            </td>
        </tr>
        <tr>
            <td style="height: 20px" colspan="4">
                <asp:Label ID="lblTituloFiltros" runat="server" Font-Bold="True" Text="Filtros"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Caso de Proceso:
            </td>
            <td class="style2">
                <asp:DropDownList ID="ddlProcesos" runat="server" Width="300px" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="style1">
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
            <td class="style1">
                Actividad:
            </td>
            <td class="style3">
                <asp:DropDownList ID="ddlActividades" runat="server" Width="300px">
                </asp:DropDownList>
            </td>
            <td class="style1">
                Responsable:
            </td>
            <td style="height: 20px">
                <asp:DropDownList ID="ddlParticipant" runat="server" Width="300px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Estado de Actividad:
            </td>
            <td class="style3">
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
            <td class="style1">
            </td>
            <td style="height: 20px">
            </td>
        </tr>
        <tr>
            <td class="style1">
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
                        <td align="left" valign="middle" class="style8">
                            Fecha Inicial:
                        </td>
                        <td>
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
                        <td align="left" valign="middle" class="style8">
                            Fecha Final:
                        </td>
                        <td>
                                                   
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
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="CompareValidator"
                                ControlToCompare="txtDateInit" ControlToValidate="txtDateFinish" Display="Dynamic"
                            Operator="GreaterThanEqual" Type="Date">La fecha final debe ser mayor que la Inicial</asp:CompareValidator>
                        </td>
                        <td align="center" valign="middle" class="style9">
                            Fecha de Creacion:
                        </td>
                        <td>
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
                        <td align="center" valign="middle">
                            <asp:Button ID="btnSearch" runat="server" Text="Filtrar" />
                            &nbsp;<asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/Excel_32.png"
                                Width="20px" Height="20px" ToolTip="Descargar a Excel" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="7">
                            <asp:Label ID="lblTituloOptions" runat="server" Text="Opciones de Consulta" Font-Bold="True"
                                ToolTip="De click para expandir o contraer las opciones del historico de filtro"></asp:Label>
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
            <td style="height: 20px" colspan="4">
                <hr />
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <asp:Panel ID="HeaderPanel4" runat="server" CssClass="collapsePanelHeader" Height="30px">
                    <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                        <div style="float: left;">
                            Gráfico Resultante</div>
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
                                            <asp:Chart ID="Grafico" runat="server" BackColor="#D3DFF0" BackGradientStyle="TopBottom"
                                                BackSecondaryColor="White" BorderColor="26, 59, 105" BorderDashStyle="Solid"
                                                BorderWidth="2" ImageLocation="~/Temp/" ImageStorageMode="UseImageLocation" ImageType="Png"
                                                IsSoftShadows="False" Palette="BrightPastel" Visible="false" Width="800px" Height="430px">
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
                                                </Series>
                                                <ChartAreas>
                                                    <asp:ChartArea Name="ChartArea1">
                                                        <Area3DStyle Enable3D="False" Inclination="15" IsClustered="False" IsRightAngleAxes="False"
                                                            PointGapDepth="0" Rotation="10" WallWidth="0" />
                                                        <AxisY LineColor="64, 64, 64, 64" Title="">
                                                            <LabelStyle Font="Trebuchet MS, 8.25pt, style=Bold" />
                                                            <MajorGrid LineColor="64, 64, 64, 64" />
                                                        </AxisY>
                                                        <AxisX LineColor="64, 64, 64, 64" Title="">
                                                            <LabelStyle Font="Trebuchet MS, 8.25pt" Interval="1" />
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
                <cc1:CollapsiblePanelExtender ID="cpeGraph" runat="Server" TargetControlID="ContentPanel4"
                    ExpandControlID="HeaderPanel4" CollapseControlID="HeaderPanel4" Collapsed="True"
                    TextLabelID="Label1" ImageControlID="Image1" ExpandedText="(Ocultar...)" CollapsedText="(Mostrar...)"
                    ExpandedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/collapse_blue.jpg"
                    CollapsedImage="~/App_Themes/GattacaAdmin/Images/AjaxImages/expand_blue.jpg"
                    SuppressPostBack="true" />
            </td>
        </tr>
    </table>

<!-- End Panel Content -->
