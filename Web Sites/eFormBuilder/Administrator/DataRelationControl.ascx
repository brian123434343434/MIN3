<%@ control language="VB" autoeventwireup="false" inherits="DataRelationControl, App_Web_5zwlr24r" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:UpdatePanel ID="updatePanelDataRelation" runat="server">
<ContentTemplate>
<div>
    <asp:Label ID="lbMessage" runat="server" Text="" EnableViewState="false"></asp:Label>
    <fieldset>
        <legend>Datos de prueba</legend>
        <div style="margin: 5px 0px 5px 0px;">
            <asp:GridView ID="gvTestData" runat="server"></asp:GridView>    
            <br />
            <asp:Button ID="btAddDataSourceFields" runat="server" Text="Usar Campos" />
        </div>
    </fieldset>    
    <fieldset>
        <legend>Información del formulario</legend>
        <div style="margin: 5px 0px 5px 0px">
            <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">Formulario</label>
            <asp:DropDownList ID="ddlForm" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </div>
        <div style="margin: 5px 0px 5px 0px">
            <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">Campo Activador</label>
            <asp:DropDownList ID="ddlTriggerField" runat="server" AutoPostBack="True">
            </asp:DropDownList>
        </div>
    </fieldset>
    <fieldset>
        <legend>Relaciones</legend>
        <div style="width:730px; height:260px; margin: 5px 0px 5px 0px">        
            <div style="width:350px;float:left">
                <label style="text-align:center; display:block;font-weight:bold">Campos del formulario</label>
                <asp:ListBox ID="lbxFormFields" runat="server" style="float:left; display:block" Height="200px" Width="350px"></asp:ListBox>
            </div>
            <div style="width:350px;float:left" >
                <label style="text-align:center; display:block; font-weight:bold">Campos de la fuente de datos</label>
                <asp:ListBox ID="lbxDataSourceFields" runat="server" Height="200px" 
                    Width="350px"></asp:ListBox>
            </div>
            <div style="float:left; width:730px; text-align:center;">
                <asp:Button ID="btAddRelation" runat="server" Text="Añadir relación" />    
                <asp:Button ID="btAddRelationReadOnly" runat="server" Text="Añadir relación como solo lectura" />
            </div>        
        </div>
        
        <div style="float:left; width:730px; margin: 5px 0px 5px 0px">
            <asp:GridView ID="gvRelationList" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="idField,textField,dataSourceField" Width="100%">
                <Columns> 
                    <asp:BoundField DataField="idField" FooterText="Formulario" 
                        HeaderText="ID Campo Formulario" >
                        <HeaderStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="textField" FooterText="Formulario" 
                        HeaderText="Nombre Campo Formulario" />
                    <asp:BoundField DataField="dataSourceField" FooterText="Fuente de datos" 
                        HeaderText="Nombre Campo Fuente de Datos" />
                     <asp:CheckBoxField DataField="isReadOnlyField" HeaderText="Solo lectura" />
                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="deleteButton" runat="server" CommandName="deleteRelation" CommandArgument="<%# CType(Container,GridViewRow).RowIndex %>" >Eliminar</asp:LinkButton>                
                            <ajaxToolkit:ConfirmButtonExtender ID="deleteExtender" runat="server"
                                TargetControlID="deleteButton"
                                ConfirmText="¿Está seguro que desea eliminar la relación?"  />
                        </ItemTemplate>                
                        <HeaderStyle Width="100px" />
                    </asp:TemplateField>
                   
                </Columns>
            
            </asp:GridView>    
        </div>  
    </fieldset>
    
    <asp:Button ID="btSave" runat="server" Text="Guardar" />
    
    
</div>

</ContentTemplate>
</asp:UpdatePanel>