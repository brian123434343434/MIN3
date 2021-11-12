<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_addDataRelationWebService, App_Web_ezp7xjtf" title="Untitled Page" %>
<%@ Register src="DataRelationControl.ascx" tagname="DataRelationControl" tagprefix="uc1" %>
<%@ Register src="../Controls/MessageBox.ascx" tagname="MessageBox" tagprefix="uc2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">
    
<div>
    <fieldset>
        <legend>Información de la base de datos</legend>
        <div style="width:730px; height:120px; margin: 5px 0px 5px 0px">  
            <div style="width:350px;float:left; " >
                <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
                Servicios Web</label>
                <asp:DropDownList ID="ddlWebServices" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </div>
               
            <div style="width:754px; float:left;" >            
                <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
                Servicio</label>
                <asp:DropDownList ID="ddlServices" runat="server">
                </asp:DropDownList>                
            </div>        
                                                                               
            <div style="width:754px; float:left;" >
                <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
                Filtro (where suCampo = valor)</label>
                <asp:TextBox ID="tbUniqueField" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Debe ingresar el campo que se usara para el filtro &quot;Where&quot;" 
                    ControlToValidate="tbUniqueField" ValidationGroup="databaseInfo">*</asp:RequiredFieldValidator>
            </div>
            <div style="width:754px; float:left;" >
                <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
                Valor de prueba</label>
                <asp:TextBox ID="tbTestValue" runat="server" AutoCompleteType="Disabled" 
                    Height="22px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Debe ingresar un valor de prueba para el filtro" 
                    ControlToValidate="tbTestValue" ValidationGroup="databaseInfo">*</asp:RequiredFieldValidator>
                 <asp:Button ID="btLoadData" runat="server" Text="Probar datos" 
                    ValidationGroup="databaseInfo" />
            </div> 
            <asp:ValidationSummary ID="databaseInfoValidationSummary" runat="server" ShowMessageBox="True" ShowSummary="False"  ValidationGroup="databaseInfo" />
        </div>
    </fieldset>
    
    <uc1:DataRelationControl ID="dataRelationControl" runat="server" />    
</div>    
    
    <uc2:MessageBox ID="messageBoxControl" runat="server" />
    
</asp:Content>

