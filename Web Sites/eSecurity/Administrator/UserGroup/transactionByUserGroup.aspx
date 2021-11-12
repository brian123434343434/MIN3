<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_UserGroup_transactionByUserGroup, App_Web_hery_agv" theme="GattacaAdmin" %>
<%@ Register Assembly="SCS.PickList" Namespace="SCS.Web.UI.WebControls" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .cssButton
        {
            width: 82px;
        }
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="100%">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">Administración de Operaciones por Grupo de Usuarios<hr /></asp:Label>
                <asp:Label ID="lblCompanyName" runat="server" CssClass="cssLabelTitle"></asp:Label><asp:Label ID="lblAreaName" runat="server" CssClass="cssLabelForm" Visible="False"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2">
               <cc1:PickList ID="dlbTransactionByUserGroup" runat="server" AddAllButtonText="Agregar todo &gt;&gt;" 
                    AddButtonText="Agregar &gt;" AvailableLabelText="Disponibles:" CssClass="grid_header" 
                    CurrentLabelText="Seleccionados:" DisplayAddAllButton="True" 
                    DisplayRemoveAllButton="True" RemoveAllButtonText="&lt;&lt; Remover todo" 
                    RemoveButtonText="&lt; Remover" Rows="10">
                    <AddButtonStyle Font-Size="X-Small" Width="90px" />
                    <AddAllButtonStyle Font-Size="X-Small" Width="90px" />
                    <RemoveButtonStyle Font-Size="X-Small" Width="90px" />
                    <RemoveAllButtonStyle Font-Size="X-Small" Width="90px" />
                    <AvailableListBoxStyle Width="400px" Font-Bold="False" Font-Names="Arial" />
                    <SelectedListBoxStyle Width="400px" Font-Names="Arial" />           
                </cc1:PickList>
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2" style="height: 26px">
                <asp:Button ID="btnUpdate" runat="server" CssClass="cssButton" Text="Guardar" />
                <asp:Button ID="btnCancel" runat="server" CssClass="cssButton" Text="Cancelar" /></td>
        </tr>
    </table>
</asp:Content>