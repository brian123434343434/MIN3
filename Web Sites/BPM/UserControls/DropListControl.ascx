<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="DropListControl.ascx.vb"
    Inherits="BPMWebSite.DropListControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="gtk" %>
<table>
    <tr>
        <td>
            <asp:Label ID="lblCaption" EnableViewState="true" runat="server" Text="Label" />
        </td>
        <td>
            <asp:DropDownList ID="ddlValue" EnableViewState="true" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
</table>
