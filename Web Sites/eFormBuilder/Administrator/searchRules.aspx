<%@ page title="" language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_searchRules, App_Web_5zwlr24r" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">

<div style="margin: 15px">
    <asp:Label ID="lbMensaje" runat="server" Visible="false" Text="La busqueda no produjo resultados" EnableViewState="false"></asp:Label>

     <asp:GridView ID="gvData" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        CssClass="cssGrid" Width="100%" PageSize="12">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="FormRule.id" DataNavigateUrlFormatString="addRule.aspx?idFormRule={0}"
                     HeaderText="Edición" Text="Editar" />
                                        
                <asp:TemplateField HeaderText="Eliminación">
                    <ItemTemplate>
                        <asp:LinkButton ID="deleteButton" runat="server" CommandName="deleteRule" CommandArgument="<%# CType(Container,GridViewRow).RowIndex %>" >Eliminar</asp:LinkButton>
                        <ajaxToolkit:ConfirmButtonExtender ID="deleteExtender" runat="server"
                            TargetControlID="deleteButton"
                            ConfirmText="¿Está seguro que desea eliminar la regla?"  />
                    </ItemTemplate>
                </asp:TemplateField>            
            
                <asp:TemplateField HeaderText="Expresión">
                    <ItemTemplate>                       
                          <img id="ibtShowExpression" runat="server" alt="Mostrar expresión" src="../Images/calculator24.png" />                    
                        
                        <asp:Panel ID="pnlExpression" runat="server" BorderWidth="2" BackColor="White" Width="250" EnableTheming="false" >
                            <%#Container.DataItem("FormRule.logicalExpression")%>
                        </asp:Panel>
                        <ajaxToolkit:PopupControlExtender ID="PopupControlExtender1" runat="server" Position="Left" PopupControlID="pnlExpression" TargetControlID="ibtShowExpression"></ajaxToolkit:PopupControlExtender>
                    </ItemTemplate>
                </asp:TemplateField>
            
            
                <asp:BoundField DataField="FormRule.id" HeaderText="ID Regla" />
                <asp:BoundField DataField="FormRule.name" HeaderText="Nombre" />
                <asp:BoundField DataField="FormRule.activationEvent" HeaderText="Activación" />
                <asp:BoundField DataField="FormRule.action" HeaderText="Acción" />
                <asp:BoundField DataField="Form.id" HeaderText="ID Formulario" />
                <asp:BoundField DataField="Form.name" HeaderText="Nombre Formulario" />
                
            </Columns>
       
        <RowStyle CssClass="cssItemStyle" HorizontalAlign="Center" />
        <PagerStyle CssClass="cssPager" />
        <HeaderStyle CssClass="cssHeaderStyle" HorizontalAlign="Center" />
        <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
    </asp:GridView>

</div>

</asp:Content>

