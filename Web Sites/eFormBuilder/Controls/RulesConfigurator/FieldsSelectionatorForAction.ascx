<%@ control language="VB" autoeventwireup="false" inherits="FieldsSelectionatorForAction, App_Web_m-90gtsv" %>

<div style="margin: 5px 0px 5px 0px">
    <label style="font-weight:bold;float:left; padding:0px 10px 0px 0px; display:block; width: 100px">
    Campos para la acción</label>       
    <asp:CheckBoxList ID="cblFields" runat="server" RepeatColumns="3" RepeatDirection="Vertical" RepeatLayout="Table">
    </asp:CheckBoxList>
</div>


