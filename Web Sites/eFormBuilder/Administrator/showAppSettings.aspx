<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_showAppSettings, App_Web_5zwlr24r" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" runat="Server">
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <asp:GridView ID="gvData" runat="server" Width="100%">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnShowParams" runat="server" TabIndex="3" Text="Mostrar los parametros cargados" />
                <asp:Button ID="btnReloadParams" runat="server" TabIndex="3" Text="Recargar los parametros" />
            </td>
        </tr>
    </table>
</asp:Content>
