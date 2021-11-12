<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_addOperation, App_Web_5zwlr24r" title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">
    <div style="margin: 5px 0px 5px 0px">
        <asp:Label ID="lbMessage" runat="server" Text="" EnableViewState="false" ForeColor="Red"></asp:Label>
    </div>


  <fieldset>
        <legend>Información del formulario</legend>
        <div style="margin: 5px 0px 5px 0px">
            <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
            Operación</label>
            <asp:DropDownList ID="ddlOperation" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </div>
        
        <div style="margin: 5px 0px 5px 0px">
            <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
            Formulario</label>
            <asp:DropDownList ID="ddlForm" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </div>
        
        <div style="margin: 5px 0px 5px 0px">
            <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
            Campo destino</label>
            <asp:DropDownList ID="ddlTargetField" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </div>
    </fieldset>
    
    <fieldset>
        <legend>Campos fuente</legend>
        
        <div style="margin: 5px 0px 5px 0px">
            <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
            Campo fuente</label>
            <asp:DropDownList ID="ddlSourceFields" runat="server" AutoPostBack="True">
            </asp:DropDownList>
            <asp:Button ID="btAddField" runat="server" Text="Agregar" />
        </div>
        <div>
         <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
            Columnas</label>
            <asp:DropDownList ID="ddlColumns" runat="server">
            </asp:DropDownList>
        </div>
        
        <div style="margin: 5px 0px 5px 0px">
            <asp:GridView ID="gvSelectedSourceFields" runat="server" DataKeyNames="idField">
            <Columns>
             <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="deleteButton" runat="server" CommandName="deleteRelation" CommandArgument="<%# CType(Container,GridViewRow).RowIndex %>" >Eliminar</asp:LinkButton>                
                            <ajaxToolkit:ConfirmButtonExtender ID="deleteExtender" runat="server"
                                TargetControlID="deleteButton"
                                ConfirmText="¿Está seguro que desea quitar el campo de la operación?"  />
                        </ItemTemplate>                
                        <HeaderStyle Width="100px" />
                    </asp:TemplateField>
            </Columns>
            </asp:GridView>
        </div>
    </fieldset>
    
    <div>    
        <asp:Button ID="btSave" runat="server" Text="Guardar" />
    </div>
</asp:Content>

