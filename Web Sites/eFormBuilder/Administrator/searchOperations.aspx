<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_searchOperations, App_Web_5zwlr24r" title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">

<div style="margin: 15px">
    <asp:Label ID="lbMensaje" runat="server" Visible="false" Text="La busqueda no produjo resultados" EnableViewState="false"></asp:Label>

     <asp:GridView ID="gvData" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        CssClass="cssGrid" Width="100%" PageSize="12">
            <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Operation.idTargetField" DataNavigateUrlFormatString="addOperation.aspx?idTargetField={0}"
                 HeaderText="Edición" Text="Editar" />
                                        
                <asp:TemplateField HeaderText="Eliminación">
                    <ItemTemplate>
                        <asp:LinkButton ID="deleteButton" runat="server" CommandName="deleteRelation" CommandArgument="<%# CType(Container,GridViewRow).RowIndex %>" >Eliminar</asp:LinkButton>                
                        <ajaxToolkit:ConfirmButtonExtender ID="deleteExtender" runat="server"
                            TargetControlID="deleteButton"
                            ConfirmText="¿Está seguro que desea eliminar la operación?"  />
                    </ItemTemplate>
                </asp:TemplateField>
            
            
                <asp:BoundField DataField="Form.id" HeaderText="ID Formulario" />
                <asp:BoundField DataField="Form.name" HeaderText="Formulario" />            
                <asp:BoundField DataField="Field.text" HeaderText="Campo Objetivo" />
                <asp:BoundField DataField="Operation.idTargetField" HeaderText="ID Campo Objetivo" />
                <asp:BoundField DataField="Operation.operationType" HeaderText="Tipo de operación" />                      
            
            </Columns>
       
        <RowStyle CssClass="cssItemStyle" HorizontalAlign="Center" />
        <PagerStyle CssClass="cssPager" />
        <HeaderStyle CssClass="cssHeaderStyle" HorizontalAlign="Center" />
        <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
    </asp:GridView>

</div>



</asp:Content>

