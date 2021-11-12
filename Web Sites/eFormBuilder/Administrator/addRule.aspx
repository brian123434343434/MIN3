<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_addRule, App_Web_5zwlr24r" title="Untitled Page" %>

<%@ Register src="../Controls/ExpressionEditor.ascx" tagname="ExpressionEditor" tagprefix="uc1" %>

<%@ Register src="../Controls/ExternalValueSourceSelector.ascx" tagname="ExternalValueSourceSelector" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">

    <div style="margin: 5px 0px 5px 0px">
        <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
        Nombre</label>
        <asp:TextBox ID="tbRuleName" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="tbRuleName" ErrorMessage="Debe ingresar un nombre de regla">*</asp:RequiredFieldValidator>
    </div>   

    <div style="margin: 5px 0px 5px 0px">
        <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
        Acción</label>
        <asp:DropDownList ID="ddlActions" runat="server" AutoPostBack="True">
        </asp:DropDownList>
    </div>

    <asp:PlaceHolder ID="phEvents" runat="server" Visible="false">
    <div style="margin: 5px 0px 5px 0px">
        <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
        Evento</label>
        <asp:DropDownList ID="ddlEvents" runat="server" AutoPostBack="true">
        </asp:DropDownList>
    </div>
    </asp:PlaceHolder>
    
    <asp:PlaceHolder ID="phSources" runat="server" Visible="false">    
     <div style="margin: 5px 0px 5px 0px">
        <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
        Fuente</label>
        <asp:DropDownList ID="ddlValuesSource" runat="server" AutoPostBack="true">
        </asp:DropDownList>
    </div>    
    </asp:PlaceHolder>
    
    <asp:PlaceHolder ID="phForm" runat="server" Visible="false">
     <div style="margin: 5px 0px 5px 0px">
        <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
        Formulario</label>
        <asp:DropDownList ID="ddlForm" runat="server" AutoPostBack="True">
        </asp:DropDownList>
    </div>
    </asp:PlaceHolder>
    
    <%--<asp:PlaceHolder ID="phSourceForm" runat="server" Visible="false">
    <div style="margin: 5px 0px 5px 0px">
        <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
        Formulario Fuente</label>
        <asp:DropDownList ID="ddlSourceForm" runat="server" AutoPostBack="True">
        </asp:DropDownList>
    </div>
    </asp:PlaceHolder>--%>
       
       
    <asp:PlaceHolder ID="phExternalValueSelector" runat="server" Visible="false">
       
        <uc2:ExternalValueSourceSelector ID="externalValueSelector"  runat="server"  />
    
    </asp:PlaceHolder> 
       
    
    <asp:PlaceHolder ID="phActicationFields" runat="server" Visible="false">
        <div style="margin: 5px 0px 5px 0px">
            <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
            Campos activadores</label>
            <asp:CheckBoxList ID="cblActivationFields" runat="server" RepeatLayout="Table" RepeatColumns="3" RepeatDirection="Vertical">
            </asp:CheckBoxList>    
        </div>
    </asp:PlaceHolder>
    

    <asp:Panel ID="pnlConfiguration" runat="server" EnableTheming="false">    
    </asp:Panel>


    <uc1:ExpressionEditor ID="expressionEditor" runat="server" />

    <div>
        <asp:ValidationSummary ID="validationSummary" runat="server" 
            ShowMessageBox="True" ShowSummary="False" />
        <asp:Button ID="btSave" runat="server" Text="Guardar" />
    </div>




</asp:Content>

