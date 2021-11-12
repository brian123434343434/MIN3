<%@ page language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Tools_VisitorStats, App_Web_v9uqm8rj" title="Untitled Page" theme="GattacaAdmin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="updUsers" runat="server">
        <ContentTemplate>
            <table style="width: 100%">
                <tr>
                    <td style="height: 20px">
                        <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Estadísticas de Visitas"></asp:Label>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="width: 100%">
                            <tr>
                                <td style="height: 20px" colspan="3" colspan="2">
                                    <asp:Label ID="Label1" runat="server" CssClass="cssLabelTitle" Text="Visitantes"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="top" colspan="3">
                                    <asp:GridView ID="gvData" runat="server" Width="100%" CssClass="cssGrid" ShowFooter="True">
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
                                    <cc1:CalendarExtender ID="txtInicio_CalendarExtender" runat="server" Enabled="True"
                                        PopupButtonID="imbInitalDate" Format="yyyy/MM/dd" TargetControlID="txtInicio">
                                    </cc1:CalendarExtender>
                                    <asp:ImageButton ID="imbInitalDate" runat="server" CausesValidation="False" ImageUrl="~/App_Themes/GattacaAdmin/Icons/Calendar.gif" />
                                    <asp:CompareValidator ID="cvInicio" runat="server" ControlToValidate="txtInicio"
                                        ErrorMessage="Formato inválido" Operator="DataTypeCheck" SetFocusOnError="True"
                                        Type="Date"></asp:CompareValidator>
                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txtInicio"
                                        WatermarkText="aaaa/MM/dd">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                                <td align="center" valign="top">
                                    Fecha Final:
                                    <asp:TextBox ID="txtFin" runat="server" Height="20px" Width="90px"></asp:TextBox>
                                    <cc1:CalendarExtender ID="txtFin_CalendarExtender" runat="server" Enabled="True" Format="yyyy/MM/dd"
                                        PopupButtonID="imbFinalDate" TargetControlID="txtFin">
                                    </cc1:CalendarExtender>
                                    <asp:ImageButton ID="imbFinalDate" runat="server" CausesValidation="False" ImageUrl="~/App_Themes/GattacaAdmin/Icons/Calendar.gif" />
                                    <asp:CompareValidator ID="cvFin" runat="server" ControlToValidate="txtFin"
                                        ErrorMessage="Formato inválido" Operator="DataTypeCheck" SetFocusOnError="True"
                                        Type="Date"></asp:CompareValidator>
                                    <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" TargetControlID="txtFin"
                                        WatermarkText="aaaa/MM/dd">
                                    </cc1:TextBoxWatermarkExtender>
                                </td>
                                <td align="center" valign="middle">
                                    <asp:Button ID="btnConsultar" runat="server" Text="Consultar" ValidationGroup="grpE" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
