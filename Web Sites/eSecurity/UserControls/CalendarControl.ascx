<%@ control language="VB" autoeventwireup="false" inherits="CalendarControl, App_Web_a8t2f6fj" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%--<link href="../Administrator/StyleSheets/eContentAdmin.css" rel="stylesheet" type="text/css" />--%>

<table>
<tr>
<td>
<asp:Label ID="lblStart" runat="server" Text="Fecha Inicial: "></asp:Label>
</td>
 <td>
<asp:TextBox ID="txtStartDate" Width="70px" runat="server"></asp:TextBox>
<asp:ImageButton runat="server" ID="ibCalendar1" CausesValidation="false" ImageUrl="~/Images/Calendar_scheduleHS.png" />
    <cc1:CalendarExtender  ID="ceStartDate" Format="yyyy-MM-dd" TargetControlID="txtStartDate" runat="server" PopupButtonID="ibCalendar1">
    </cc1:CalendarExtender>
    <asp:RequiredFieldValidator ID="rfStartDate" runat="server" ErrorMessage="*" ControlToValidate="txtStartDate"></asp:RequiredFieldValidator>

</td>
<tr />
<tr>

<td>
<asp:Label ID="lblEnd" runat="server" Text="Fecha Final: "></asp:Label>
</td>
<td>
<asp:TextBox ID="txtEndDate" Width="70px" runat="server"></asp:TextBox>
<asp:ImageButton runat="server" CausesValidation="false" ID="ibCalendar" ImageUrl="~/Images/Calendar_scheduleHS.png" />
    <cc1:CalendarExtender  ID="ceEndDate" Format="yyyy-MM-dd" TargetControlID="txtEndDate" runat="server" PopupButtonID="ibCalendar" />
         <asp:RequiredFieldValidator ID="rfEndDate" runat="server" ErrorMessage="*" ControlToValidate="txtEndDate"></asp:RequiredFieldValidator>
     </td>
     </tr>
       
</table>

