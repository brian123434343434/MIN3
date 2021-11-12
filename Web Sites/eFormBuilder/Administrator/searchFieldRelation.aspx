<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_searchFieldRelation, App_Web_5zwlr24r" title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">

<div style="margin: 3px">
    Formulario <asp:DropDownList ID="ddlForm" runat="server" AutoPostBack="True" Width="500px"></asp:DropDownList>
</div>
    

<div style="margin: 15px">
    <asp:Label ID="lbMensaje" runat="server" Visible="false" Text="La busqueda no produjo resultados" EnableViewState="false"></asp:Label>

 <asp:GridView ID="gvData" runat="server" AllowPaging="True" AutoGenerateColumns="False"
    CssClass="cssGrid" Width="100%" PageSize="12">
    <Columns>
     <asp:HyperLinkField DataNavigateUrlFields="idFieldA, idFieldB, relationType" DataNavigateUrlFormatString="addFieldRelation.aspx?idFieldA={0}&idFieldB={1}&relationType={2}"
                                    HeaderText="Edición" Text="Editar" />
                                    
        <asp:TemplateField HeaderText="Eliminación">
            <ItemTemplate>
                <asp:LinkButton ID="deleteButton" runat="server" CommandName="deleteRelation" CommandArgument="<%# CType(Container,GridViewRow).RowIndex %>" >Eliminar</asp:LinkButton>                
                <ajaxToolkit:ConfirmButtonExtender ID="deleteExtender" runat="server"
                    TargetControlID="deleteButton"
                    ConfirmText="¿Está seguro que desea eliminar la relación?"  />
            </ItemTemplate>
        </asp:TemplateField>
                                    
        <asp:BoundField HeaderText="Campo A" DataField="idFieldA"  />
        <asp:BoundField HeaderText="Título Campo A" DataField="textFieldA" />
        <asp:BoundField HeaderText="Campo B" DataField="idFieldB"/>
        <asp:BoundField HeaderText="Título Campo B" DataField="textFieldB" />
    </Columns>    
   
    <RowStyle CssClass="cssItemStyle" />
    <PagerStyle CssClass="cssPager" />
    <HeaderStyle CssClass="cssHeaderStyle" />
    <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
</asp:GridView>

</div>


</asp:Content>

