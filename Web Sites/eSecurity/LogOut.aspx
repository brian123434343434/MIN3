<%@ page language="VB" masterpagefile="~/MasterPages/SecurityDefault.master" autoeventwireup="false" inherits="LogOut, App_Web_3snivjku" title="Untitled Page" Theme="SoftManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td align="center" valign="middle">
                <asp:Label ID="Label1" runat="server" Text="Fin de Sesión de Administración"></asp:Label><br />
                <br />
                <br />
                <asp:HyperLink ID="hlSend" runat="server" NavigateUrl="">Ingresar Nuevamente</asp:HyperLink><br />
                <br />
                <br />
                <br />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br />
            </td>
        </tr>
    </table>
</asp:Content>
