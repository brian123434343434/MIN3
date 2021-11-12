<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="SearchControl.ascx.vb"
    Inherits="BPMWebSite.SearchControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="TextBoxControl.ascx" TagName="TextBoxControl" TagPrefix="uc1" %>
<%@ Register Src="CalendarControl.ascx" TagName="CalendarControl" TagPrefix="uc2" %>
<%@ Register Src="DropListControl.ascx" TagName="DropListControl" TagPrefix="uc3" %>
<%@ Register Assembly="DBauer.Web.UI.WebControls.DynamicControlsPlaceholder" Namespace="DBauer.Web.UI.WebControls"
    TagPrefix="DBWC" %>
z<table border="0" class="cssSubGrid">
    <tr class="cssLabel">
        <td style="text-align: center;" nowrap="nowrap" valign="top">
            Buscar por campo:<br />
            <asp:DropDownList ID="ddlColumns" runat="server" CssClass="cssTextBox">
            </asp:DropDownList>
        </td>
        <td style="width: 10px;" valign="top">
        </td>
        <td valign="top">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Button ID="btnAddSearchCriteria" runat="server" Text="Adicionar" CausesValidation="False"
                        CssClass="cssButton" Width="80px" />
                    <asp:Button ID="btnDeleteCriterias" runat="server" Text="Eliminar" CausesValidation="False"
                        CssClass="cssButton" Width="80px" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td class="cssLabel" style="width: 100%; text-align: center" valign="top">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <DBWC:DynamicControlsPlaceholder ID="dcphControls" runat="server">
                    </DBWC:DynamicControlsPlaceholder>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
        <td style="width: 100%; text-align: right" valign="middle" valign="top">
            <asp:Button ID="btnSearch" runat="server" TabIndex="0" Text="Buscar" CssClass="cssButton" />
        </td>
    </tr>
</table>
<asp:Label ID="lblErrorMsg" runat="server" EnableViewState="false" CssClass="cssErrorMessage"
    Style="color: #CC0000"></asp:Label>
