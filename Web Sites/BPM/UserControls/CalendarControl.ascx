<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="CalendarControl.ascx.vb" Inherits="BPMWebSite.CalendarControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<table width="100%">
    <tr>
        <td colspan="2"><asp:Label ID="lblCaption" runat="server" Text="" /></td>
    </tr>
    <tr>
        <td style="width: 100px">
            <asp:Label ID="lblStart" runat="server" Text="Fecha Inicial: "></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txtStartDate" Width="70px" runat="server"></asp:TextBox>
            <asp:ImageButton runat="server" ID="ibCalendar1" CausesValidation="false" ImageUrl="~/App_Themes/GattacaAdmin/Images/Icons/Calendar.gif" />
            <cc1:CalendarExtender ID="ceStartDate" Format="yyyy-MM-dd" TargetControlID="txtStartDate"
                runat="server" PopupButtonID="ibCalendar1">
            </cc1:CalendarExtender>
            <asp:RequiredFieldValidator ID="rfStartDate" runat="server" ErrorMessage="*" ControlToValidate="txtStartDate"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 100px">
            <asp:Label ID="lblEnd" runat="server" Text="Fecha Final: "></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txtEndDate" Width="70px" runat="server"></asp:TextBox>
            <asp:ImageButton runat="server" CausesValidation="false" ID="ibCalendar" ImageUrl="~/App_Themes/GattacaAdmin/Images/Icons/Calendar.gif" />
            <cc1:CalendarExtender ID="ceEndDate" Format="yyyy-MM-dd" TargetControlID="txtEndDate"
                runat="server" PopupButtonID="ibCalendar" />
            <asp:RequiredFieldValidator ID="rfEndDate" runat="server" ErrorMessage="*" ControlToValidate="txtEndDate"></asp:RequiredFieldValidator>
        </td>
    </tr>
</table>
