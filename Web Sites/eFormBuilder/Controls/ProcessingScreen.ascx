<%@ control language="VB" autoeventwireup="false" inherits="Controls_ProcessingScreen, App_Web_opgzw_gw" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="toolkit" %>
  

<asp:Panel ID="progressIndicatorServerPanel" runat="server" style="display:none">
    <div id="progressIndicatorPanel" class="modalPopup">    
        <asp:Image ID="progressIndicator" runat="server" ImageUrl="~/Images/clock.png" />    
        <br />
        <br />
        Cargando datos. Por favor espere un momento.
    </div>
</asp:Panel>

<div style="display:none">
    <asp:Button ID="btHiddenProgressIndicator" runat="server" Text="" />
    <toolkit:ModalPopupExtender ID="progressIndicatorModalPopup" runat="server" TargetControlID="btHiddenProgressIndicator"
        BackgroundCssClass="modalBack"
        DropShadow="true" 
        PopupControlID="progressIndicatorServerPanel" />
</div>

<script type="text/javascript">
    function showProgressIndicatorPanel() {
        var modal = $find("<%= progressIndicatorModalPopup.ClientID %>");
        modal.show();
    }

    function hideProgressIndicatorPanel() {
        var modal = $find("<%= progressIndicatorModalPopup.ClientID %>");
        modal.hide();
    }
</script>