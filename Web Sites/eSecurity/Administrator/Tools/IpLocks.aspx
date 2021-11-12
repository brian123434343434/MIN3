<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Tools_IpLocks, App_Web_v9uqm8rj" theme="GattacaAdmin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <table style="width: 60%;">
            <tr>
                <td align="left" colspan="3">
                    <asp:Label ID="lblInstructions" runat="server" 
                        Text="Seleccione la fecha inicial y final, luego presione &quot;Consultar bloqueos&quot;"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblInitialDate" runat="server" Text="Fecha inicial"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbInitialDate" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="tbInitialDate_CalendarExtender" runat="server" 
                        Enabled="True" PopupButtonID="imbInitalDate" 
                        TargetControlID="tbInitialDate" Format="yyyy/MM/dd">
                    </cc1:CalendarExtender>
                    <asp:ImageButton ID="imbInitalDate" runat="server" CausesValidation="False" 
                        ImageUrl="~/App_Themes/GattacaAdmin/Icons/Calendar.gif" />
                    <asp:CompareValidator ID="cvInitialDate" runat="server" 
                        ControlToValidate="tbInitialDate" ErrorMessage="Formato inválido" 
                        Operator="DataTypeCheck" SetFocusOnError="True" Type="Date"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="rfvInitialDate" runat="server" 
                        ControlToValidate="tbInitialDate" ErrorMessage="Campo obligatorio" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblEndDate" runat="server" Text="Fecha final"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbFinalDate" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="tbFinalDate_CalendarExtender" runat="server" 
                        Enabled="True" PopupButtonID="imbFinalDate" TargetControlID="tbFinalDate" 
                        Format="yyyy/MM/dd">
                    </cc1:CalendarExtender>
                    <asp:ImageButton ID="imbFinalDate" runat="server" CausesValidation="False" 
                        ImageUrl="~/App_Themes/GattacaAdmin/Icons/Calendar.gif" />
                    <asp:CompareValidator ID="cvFinalDate" runat="server" 
                        ControlToValidate="tbFinalDate" ErrorMessage="Formato inválido" 
                        Operator="DataTypeCheck" SetFocusOnError="True" Type="Date"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="rfvFinalDate" runat="server" 
                        ControlToValidate="tbFinalDate" ErrorMessage="Campo obligatorio" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Button ID="btnConsult" runat="server" Text="Consultar bloqueos" />
                </td>
            </tr>
        </table>
        <br />
        <table style="width:100%;">
            <tr>
                <td align="left">
                    <asp:Label ID="lblResult" runat="server" Text="Resultado"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left">
                    <asp:Label ID="lblQueryLimits" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="gvHistoric" runat="server" AutoGenerateColumns="False" CssClass="cssGrid">
                        <Columns>
                            <asp:BoundField DataField="Client" HeaderText="Cliente" />
                            <asp:BoundField DataField="IpAddress" HeaderText="IP" />
                            <asp:BoundField DataField="InitialDate" HeaderText="Fecha inicial" />
                            <asp:BoundField DataField="InitialTime" HeaderText="Hora inicial" />
                            <asp:BoundField DataField="FinalDate" HeaderText="Fecha final" />
                            <asp:BoundField DataField="FinalTime" HeaderText="Hora final" />
                            <asp:BoundField DataField="Try" HeaderText="Intentos" />
                            <asp:BoundField DataField="EnabledBy" HeaderText="Habilitado por" />
                        </Columns>
                    <RowStyle CssClass="cssItemStyle" />
                    <HeaderStyle CssClass="cssHeaderStyle" />
                    <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
                    <FooterStyle Wrap="True" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

