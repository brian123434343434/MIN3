<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="AssignOthers.aspx.vb" Inherits="BPMWebSite.AssignOthers" Title="Asignar Otros a la Actividad"
    Theme="SoftManagement" %>

<%@ Register Assembly="Gattaca.WebControls.DoubleListBox" Namespace="Gattaca.WebControls.DoubleListBox"
    TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cssLabelTitle">
        Asignar Otros a la Actividad</div>
    <br />
    <cc2:DoubleListBox ID="dblOthers" runat="server" Height="200px" Width="800px" />
    <br />
    <asp:Button ID="btnOk" runat="server" Text="Aceptar" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancelar" />
</asp:Content>
