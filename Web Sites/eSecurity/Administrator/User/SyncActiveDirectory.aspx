<%@ page language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_ActiveDirectory_SyncActiveDirectory, App_Web_z2f_sopw" title="Sincronizar Directorio Activo de Windows" theme="SoftManagement" %>

<%@ Register Assembly="SCS.PickList" Namespace="SCS.Web.UI.WebControls" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" width="100%">
        <tr>
            <td align="center">
                Usuarios del Directorio Activo "<asp:Label ID="lblDom" runat="server" Text=""></asp:Label>"
                <br />
                <br />
                <cc1:PickList ID="plUsers" AddAllButtonText="Agregar Todas >>" RemoveAllButtonText="<< Eliminar todas"
                    runat="server" AddButtonText="Agregar >>" RemoveButtonText="<< Eliminar" DisplayAddAllButton="True"
                    DisplayRemoveAllButton="True" Rows="20" AvailableLabelText="Usuarios disponibles:"
                    CurrentLabelText="Usuarios seleccionados:">
                    <AddButtonStyle Font-Size="X-Small" Width="90px" />
                    <AddAllButtonStyle Font-Size="X-Small" Width="90px" />
                    <RemoveButtonStyle Font-Size="X-Small" Width="90px" />
                    <RemoveAllButtonStyle Font-Size="X-Small" Width="90px" />
                    <AvailableLabelStyle Width="90px" Font-Bold="True" Font-Names="Arial" Font-Overline="False"
                        ForeColor="Red" />
                    <SelectedLabelStyle Font-Bold="True" Font-Names="Arial" ForeColor="Red" />
                    <AvailableListBoxStyle Width="400px" Font-Bold="False" Font-Names="Arial" />
                    <SelectedListBoxStyle Width="400px" Font-Names="Arial" />
                </cc1:PickList>
                <span style="text-align: center">
                    <asp:Button ID="btnSend" runat="server" Text="Actualizar" /><br />
                    <br />
                    <asp:Label ID="lblMessageError" runat="server" Text="Al remover un usuario, éste y su auditoría, serán eliminados del sistema de seguridad eSecurity"
                        Font-Bold="True" ForeColor="Red"></asp:Label></span>
            </td>
        </tr>
    </table>
</asp:Content>
