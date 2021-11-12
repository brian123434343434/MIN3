<%@ page language="VB" masterpagefile="~/Master/mpClient.master" autoeventwireup="false" inherits="Public_startProcessMessage, App_Web_ggmy1egd" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphClient" Runat="Server">

    <table style="width:100%">
        <tr>
            <td align="center">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="RESULTADO" SkinID="LabelFormTitle"></asp:Label></td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblMessage" runat="server" Text="Proceso realizado correctamente" CssClass="cssLabelForm" SkinID="LabelForm"></asp:Label></td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblError" runat="server" Text="" CssClass="cssLabelForm" SkinID="LabelForm"></asp:Label></td>
        </tr>
               
         <tr>
            <td align="center">
                <asp:Label ID="lblExternalMessage" runat="server" Text="" CssClass="cssLabelForm" SkinID="LabelForm"></asp:Label>
            </td>
        </tr>
         <tr>
            <td align="center">
                <asp:Button ID="btClose" runat="server" Text="Cerrar"  CssClass="cssButton" OnClientClick="window.close()" />
            </td>
        </tr>
    </table>

</asp:Content>

