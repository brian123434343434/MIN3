<%@ control language="VB" autoeventwireup="false" inherits="SearchControl, App_Web_2nohegnh" %>
<%@ Register Assembly="DBauer.Web.UI.WebControls.DynamicControlsPlaceholder" Namespace="DBauer.Web.UI.WebControls"
    TagPrefix="DBWC" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register src="TextBoxControl.ascx" tagname="TextBoxControl" tagprefix="uc1" %>
<%@ Register src="CalendarControl.ascx" tagname="CalendarControl" tagprefix="uc2" %>
<%@ Register src="DropListControl.ascx" tagname="DropListControl" tagprefix="uc3" %>

<table border="0" cellpadding="5" cellspacing="5" class="cssSubGrid">
    <tr class="cssLabel">
        <td style="text-align: center;" nowrap="nowrap" valign="middle">
            Campo
            <br />
            <asp:DropDownList ID="ddlColumns" runat="server" CssClass="cssTextBox">
            </asp:DropDownList>
        </td>
        <td style="width: 10px;">
        </td>
        <td>            
            <asp:Button ID="btnAddSearchCriteria" runat="server" Text="Adicionar" CausesValidation="False"
                CssClass="cssButton" Width="80px" />
            <asp:Button ID="btnDeleteCriterias" runat="server" Text="Eliminar" CausesValidation="False"
                CssClass="cssButton" Width="80px" />
        </td>
        <td class="cssLabel" style="width: 100%;">
            <DBWC:DynamicControlsPlaceholder ID="dcphControls" runat="server">
            </DBWC:DynamicControlsPlaceholder>
        </td>
        <td style="width: 100%; text-align: right" valign="middle">
            <asp:Button ID="btnSearch" runat="server" TabIndex="0" Text="Buscar" CssClass="cssButton" />
        </td>
    </tr>
</table>
<asp:Label ID="lblErrorMsg" runat="server" EnableViewState="false" CssClass="cssErrorMessage"></asp:Label>
