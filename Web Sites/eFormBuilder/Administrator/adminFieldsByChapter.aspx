<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_adminFieldsByChapter, App_Web_5zwlr24r" title="Untitled Page" %>

<%@ Register Assembly="DoubleListBox" Namespace="DoubleListBox" TagPrefix="cc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="100%">
                <tbody>
                    <tr>
                        <td align="left" width="60%">
                            <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">ADMINISTRACION DE CAMPOS POR CAPITULO</asp:Label></td>
                        <td align="right">
                            <asp:Label ID="lblMenuName" runat="server" CssClass="cssLabelForm"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <cc2:DoubleListBox ID="dlbFieldsByChapter" runat="server" Width="100%" />
                        </td>
                    </tr>
                    <tr>
                        <td align="left" colspan="2">
                            <asp:Button ID="btnUpdate" runat="server" CssClass="cssButton" OnClick="btnUpdate_Click"
                                Text="Guardar" />
                            <asp:Button ID="btnCancel" runat="server" CssClass="cssButton" Text="Cancelar" /></td>
                    </tr>
                </tbody>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

