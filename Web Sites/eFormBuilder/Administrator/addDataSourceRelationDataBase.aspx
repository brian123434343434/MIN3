<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_addDataSourceRelationDataBase, App_Web_ezp7xjtf" title="Untitled Page" %>

<%@ Register src="DataRelationControl.ascx" tagname="DataRelationControl" tagprefix="uc1" %>

<%@ Register src="../Controls/MessageBox.ascx" tagname="MessageBox" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">
<div>
    <fieldset>
        <legend>Información de la base de datos</legend>
        <div style="width:730px; height:260px; margin: 5px 0px 5px 0px">  
            <div style="width:350px;float:left; " >
                <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
                Registro de la base de datos</label>
                <asp:TextBox ID="tbDataBaseName" runat="server" Width="139px">DB99</asp:TextBox>  
                <asp:RequiredFieldValidator ID="rvDataBaseName" runat="server" 
                    ErrorMessage="Debe escribir el nombre del registro de la base de datos Ej. (DB99)" 
                    ControlToValidate="tbDataBaseName">*</asp:RequiredFieldValidator>
            </div>
               
            <div style="width:754px; float:left;" >            
                <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
                Comando Select</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    
                    ErrorMessage="Debe ingresar una sentencia SQL de consulta sin una clausula &quot;Where&quot;" 
                    ControlToValidate="tbSelectCommand" ValidationGroup="databaseInfo">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="tbSelectCommand" runat="server" Height="155px" 
                    Width="740px" AutoCompleteType="Disabled" TextMode="MultiLine"></asp:TextBox>
            </div>        
                                                                               
            <div style="width:754px; float:left;" >
                <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
                Idenntificador del parametro a reemplazar</label>
                <asp:TextBox ID="tbUniqueField" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Debe ingresar el campo que se usara para el filtro &quot;Where&quot;" 
                    ControlToValidate="tbUniqueField" ValidationGroup="databaseInfo">*</asp:RequiredFieldValidator>
            </div>
            <div style="width:754px; float:left;" >
                <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
                Valor de prueba</label>
                <asp:TextBox ID="tbTestValue" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Debe ingresar un valor de prueba para el filtro" 
                    ControlToValidate="tbTestValue" ValidationGroup="databaseInfo">*</asp:RequiredFieldValidator>
                 <asp:Button ID="btLoadData" runat="server" Text="Probar datos" 
                    ValidationGroup="databaseInfo" />
            </div> 
            <asp:ValidationSummary ID="databaseInfoValidationSummary" runat="server" 
                ShowMessageBox="True" ShowSummary="False"  ValidationGroup="databaseInfo" 
                Height="292px" />
        </div>
    </fieldset>
    
    <uc1:DataRelationControl ID="dataRelationControl" runat="server" />    
</div>

<uc2:MessageBox ID="messageBoxControl" runat="server" />
</asp:Content>

