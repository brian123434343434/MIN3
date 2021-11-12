<%@ page title="Configuración del Cache de servidor" language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_CacheSettings, App_Web_5zwlr24r" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">

 

    <div style="margin: 5px 0px 5px 0px">
           <asp:Label ID="lbMessage" runat="server" Text="" EnableViewState="False"></asp:Label> 
    </div>

    <div style="margin: 5px 0px 5px 0px">
        <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
        Cache activado</label>
        <asp:CheckBox ID="cbActivateCache"  runat="server" />        
    </div>

    <div style="margin: 5px 0px 5px 0px">
        <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
        Duración</label>
        <asp:TextBox ID="tbCacheDuration" runat="server"></asp:TextBox> minutos       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="tbCacheDuration" ErrorMessage="*"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvDuration" runat="server" 
            ControlToValidate="tbCacheDuration" 
            ErrorMessage="Debe ser mayor que 0 y menor que 2880" MaximumValue="2880" 
            MinimumValue="0" Type="Integer"></asp:RangeValidator>
    </div>

    <div style="margin: 5px 0px 5px 0px">
        <asp:Button ID="btSaveSettings" runat="server" Text="Guardar" />    
    </div>
    
    
    


    <asp:Button ID="btClearClientCache" runat="server" 
        Text="Limpiar cache del cliente" ValidationGroup="cleanCache" />


</asp:Content>

