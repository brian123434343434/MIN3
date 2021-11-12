<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="EstimatedTimeForCompletionProcess.ascx.vb"
    Inherits="BPMWebSite.EstimatedTimeForCompletionProcess" %>
<%@ Register Assembly="AjaxControlToolkit, Version=3.0.30930.28736, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e"
    Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="TimePicker" Namespace="MKB.TimePicker" TagPrefix="MKB" %>
<style type="text/css">
    .style1
    {
        width: 80px;
    }
    .style2
    {
        height: 20px;
        width: 80px;
    }
    .style3
    {
        height: 20px;
        width: 15%;
    }
    .style4
    {
        height: 20px;
        width: 30%;
    }
    .style5
    {
        height: 20px;
        width: 10%;
    }
</style>
<div style="width: 100%; text-align: center;">
    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="red" Font-Bold="True"></asp:Label>
</div>
<!-- Init Panel Content -->
<table style="width: 100%">
    <tr>
        <td style="height: 20px" colspan="5">
            <b>Tiempo Estimado</b>
            <hr />
        </td>
    </tr>
    <tr>
        <td class="style3">
            Caso de Proceso:
        </td>
        <td class="style4">
            <asp:DropDownList ID="ddlProcesos" runat="server">
            </asp:DropDownList>
        </td>
        <td class="style3">
            <asp:Label ID="lblSearchDuration" runat="server" Text="Unidad de Duración:"></asp:Label>
        </td>
        <td class="style4">
            <asp:DropDownList ID="ddlUnitTime" runat="server">
                <asp:ListItem Value="9">Segundos</asp:ListItem>
                <asp:ListItem Value="8">Minutos</asp:ListItem>
                <asp:ListItem Selected="True" Value="7">Horas</asp:ListItem>
                <asp:ListItem Value="4">Dias</asp:ListItem>
                <asp:ListItem Value="2">Meses</asp:ListItem>
                <asp:ListItem Value="0">Años</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td align="center" valign="middle" class="style5">
            <asp:Button ID="btnSearch" runat="server" Text="Filtrar" />
            <%--<asp:ImageButton ID="imgBtnExport" runat="server" ImageUrl="~/App_Themes/GattacaAdmin/Images/Excel_32.png"
                Width="20px" Height="20px" ToolTip="Descargar a Excel" />--%>
        </td>
    </tr>
    <tr>
        <td style="height: 20px" colspan="5">
            <hr />
        </td>
    </tr>
    <tr>
        <td colspan="5">
            <table style="width: 100%">
                <tr>
                    <td align="center" valign="top">
                        <asp:Panel ID="HeaderPanel1" runat="server" CssClass="collapsePanelHeader" Height="30px">
                            <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                <div style="float: left;">
                                    Tiempo Estimado para la Finalización de Procesos</div>
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
                                        <asp:UpdatePanel ID="udpGvPI" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="gvProcessInstance" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                                                    AllowPaging="True" PageSize="20">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Id Instancia de Proceso" SortExpression="IDProcessInstance">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblID" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Nombre" SortExpression="Name">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblName" runat="server" Text='<%# Bind("NameProcesCase") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Duracion Esperada" SortExpression="Duration">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblDuration" runat="server" Text='<%# Bind("Duration") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Tiempo Transcurrido" SortExpression="ElapsedTime">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblElapsedTime" runat="server" Text='<%# Bind("ElapsedTime") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Tiempo Estimado para Finalizacion" SortExpression="ElapsedTime">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblDiffTimeToEnd" runat="server" Text='<%# Bind("DiffTimeToEnd") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Fecha Estimada" SortExpression="EstimedTimeFinish">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblExpectedEndTime" runat="server" Text='<%# Bind("ExpectedEndTime") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
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
            </table>
        </td>
    </tr>
</table>
