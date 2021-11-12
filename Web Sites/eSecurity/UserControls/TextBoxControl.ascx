<%@ control language="VB" autoeventwireup="false" inherits="TextBoxControl, App_Web_a8t2f6fj" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="gtk" %>
<div style="width: 30%; float: left; display: block;">
    <asp:Label ID="lblCaption" runat="server" Text="Label" />
</div>
<div style="width: 70%; float: right; display: block;">
    <asp:TextBox ID="txtValue" MaxLength="50" Width="70px" runat="server">
    </asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
        ControlToValidate="txtValue"></asp:RequiredFieldValidator>
    <gtk:FilteredTextBoxExtender ValidChars="áéíóú " FilterType="Numbers,UppercaseLetters,Custom,LowerCaseLetters"
        TargetControlID="txtValue" ID="fteValue" runat="server">
    </gtk:FilteredTextBoxExtender>
</div>