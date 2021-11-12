<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="User.ascx.vb" Inherits="BPMWebSite.User" %>
<table style="width: 100%">
    <tr>
        <td>
            Usuario:
            <asp:Label ID="lblUserName" runat="server" SkinID="Label"></asp:Label></td>
        <td>
            Ultimo Acceso:
            <asp:Label ID="lblLastLogin" runat="server" SkinID="Label"></asp:Label></td>
    </tr>
</table>
