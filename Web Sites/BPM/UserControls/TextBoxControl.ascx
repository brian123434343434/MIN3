<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="TextBoxControl.ascx.vb"
    Inherits="BPMWebSite.TextBoxControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="gtk" %>
<table>
    <tr>
        <td>
            <asp:Label ID="lblCaption" runat="server" Text="Label" />
        </td>
        <td>
            <asp:TextBox ID="txtValue" MaxLength="50" Width="300px" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                ControlToValidate="txtValue"></asp:RequiredFieldValidator>
            <gtk:FilteredTextBoxExtender ValidChars="áéíóú " FilterType="Numbers,UppercaseLetters,Custom,LowerCaseLetters"
                TargetControlID="txtValue" ID="fteValue" runat="server">
            </gtk:FilteredTextBoxExtender>
        </td>
    </tr>
</table>
