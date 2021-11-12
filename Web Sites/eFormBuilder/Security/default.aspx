<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Security_Default, App_Web_ss47c5xs" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">
    <br />
    <asp:Label ID="lblWelcome" runat="server" Text="Para continuar, por favor elija una opción del menú superior."></asp:Label>
    <br />
    <br />
    <br />
    <span>El estado del cache de servidor es: </span>
    <asp:Label ID="lbCacheState" runat="server" Text=""></asp:Label>
    <br />
    <asp:PlaceHolder ID="phCacheMessage" runat="server" Visible="false">
    <span>
        Debe desactivar el cache de servidor si va a realizar modificaciones en cualquier funcionalidad de los formularios dinámicos. 
        <br />
        
        Al finalizar, puede volver a activara el cache de servidor.
    </span>
    </asp:PlaceHolder>
        
</asp:Content>

