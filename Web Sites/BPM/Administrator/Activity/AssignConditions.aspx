<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="AssignConditions.aspx.vb" Inherits="BPMWebSite.AssignConditions1"
    Title="Asignar Condiciones a la Actividad" Theme="SoftManagement" %>

<%@ Register Assembly="Gattaca.WebControls.DoubleListBox" Namespace="Gattaca.WebControls.DoubleListBox"
    TagPrefix="cc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cssLabelTitle">
        Asociar Condiciones a la Actividad</div>
    <br />
    <cc2:DoubleListBox ID="dblConditions" runat="server" Height="200px" Width="800px" />
    <br />
    <asp:Button ID="btnOk" runat="server" Text="Aceptar" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancelar" />
</asp:Content>
