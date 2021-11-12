<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_addFieldRelation, App_Web_5zwlr24r" title="Relación de campos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">

<div>

    <asp:Panel ID="pnlMessages" runat="server"  EnableTheming="false" BorderStyle="Solid" EnableViewState="false" Visible="false" style="margin: 5px">    
        <div style="margin: 5px">
            <asp:Label ID="lbMessages" runat="server" Text="" EnableViewState="false"></asp:Label>
        </div>
    </asp:Panel>

    <div style="margin: 3px">
        <div style="width:70px; float:left">Formulario</div> 
        <div>
            <asp:DropDownList ID="ddlForm" runat="server" AutoPostBack="True" Width="500px"></asp:DropDownList>
        </div>
    </div>    
    
    <div style="margin: 3px">
        <div style="width:70px; float:left">Campo A </div>
        <div>
            <asp:DropDownList ID="ddlFieldA" runat="server" AutoPostBack="True" Width="500px"></asp:DropDownList>
        </div>
    </div>


    <div style="margin: 3px">
        <div style="width:70px; float:left">Campo B</div> 
        <div>
            <asp:DropDownList ID="ddlFieldB" runat="server" Width="500px"></asp:DropDownList>
        </div>
    </div>

    <div style="margin: 3px">
        Donde el valor de <strong> A es </strong> 
        <asp:DropDownList ID="ddlOperator" runat="server">
        <asp:ListItem Value="GreaterThan">Mayor</asp:ListItem>
        <asp:ListItem Value="GreaterThanEqual">Mayor o igual</asp:ListItem>
        <asp:ListItem Value="LessThan">Menor</asp:ListItem>
        <asp:ListItem Value="LessThanEqual">Menor o igual</asp:ListItem>
        <asp:ListItem Value="Equal">Igual</asp:ListItem>
        <asp:ListItem Value="NotEqual">Diferente</asp:ListItem>
        </asp:DropDownList>        
        <strong> el valor de B.</strong>
    </div>    
</div>
<div style="margin: 3px">
    <asp:Button ID="btnSave" runat="server" Text="Guardar" />
</div>

</asp:Content>

