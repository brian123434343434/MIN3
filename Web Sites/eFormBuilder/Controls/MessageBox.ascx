<%@ control language="VB" autoeventwireup="false" inherits="Controls_MessageBox, App_Web_opgzw_gw" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<div>
<script type="text/javascript">
function showMessageBox(title, message, showCloseButton)
{
    var titleControl = $get("<%= lblTitle.ClientID %>");
    titleControl.innerHTML = title;
    
    var messageControl = $get("<%= lblMessage.ClientID %>");
    messageControl.innerHTML = message;    

    var modal = $find("<%= mpeMessageBox.ClientID %>");
    modal.show();
    
    var divClose = $get("<%= pnlCloseButton.ClientID %>")
    if(showCloseButton)
        divClose.style.display = 'inline';
    else
        divClose.style.display = 'none';
    
}

function hideMessageBox()
{
    var modal = $find("<%= mpeMessageBox.ClientID %>");
    modal.hide();    
}

</script>


</div>

<div>
    <asp:Panel ID="pnlMessageBox" runat="server" style="display:none" Width="400px">
        <div style="height:50px; width:400px;" class="cssFooterBg">
            <asp:Label ID="lblTitle" runat="server" Text="Form Builder" CssClass="cssTxtFooter" EnableTheming="false"></asp:Label>
            <asp:Panel ID="pnlCloseButton" runat="server" style="float:right">            
                <asp:ImageButton ID="btCloseWindow" runat="server" ImageUrl="~/Images/closewindows24.gif" EnableTheming="false" />
            </asp:Panel>
        </div>
        <div>
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </div>
        
    </asp:Panel>
</div>

<div style="display:none">
    <asp:Button ID="btHiddenMessageBox" runat="server" Text="" />
    <ajaxToolkit:ModalPopupExtender ID="mpeMessageBox" runat="server"
    TargetControlID="btHiddenMessageBox"
    PopupControlID="pnlMessageBox"
    BackgroundCssClass="bg-modal" 
    DropShadow="true"
    CancelControlID="btCloseWindow"  />
</div>


