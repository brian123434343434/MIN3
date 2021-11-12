<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_searchDataSourceForDataRelation, App_Web_5zwlr24r" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">

<fieldset>
    <legend>Busqueda</legend>
    <div style="margin: 5px 0px 5px 0px;">
        <asp:GridView ID="gvTestData" runat="server"></asp:GridView>    
        <br />
        <asp:Button ID="btAddDataSourceFields" runat="server" Text="Usar Campos" />
    </div>
</fieldset>


    <asp:GridView ID="gvDataSources" runat="server">
    </asp:GridView>


</asp:Content>

