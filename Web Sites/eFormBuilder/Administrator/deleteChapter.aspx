<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_deleteChapter, App_Web_5zwlr24r" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">
    <asp:UpdatePanel ID="upContent" runat="server">
        <ContentTemplate>
            <table style="width: 100%;">
                        <tr>
                            <td style="width: 940px">
                                <asp:Label ID="lblListOfChapter" runat="server" Text="Seleccione un formulario" CssClass="cssLabel"></asp:Label>
                            </td>
                            <td style="width: 552px">
                                <asp:Label ID="lblChapterSelected" runat="server" CssClass="cssLabel"></asp:Label>
                            </td>
                        </tr>
                <tr> 
                    <td style="width: 940px">
                        <asp:DropDownList ID="ddlSelectedForm" runat="server" AutoPostBack="True" CssClass="cssDDL" OnSelectedIndexChanged="ddlSelectedForm_SelectedIndexChanged">
                        </asp:DropDownList></td>
                    <td style="width: 552px">
                    </td>
                </tr>
                        <tr>
                            <td style="width: 940px">
                                <asp:DropDownList ID="ddlSelectedChapter" runat="server" AutoPostBack="True" CssClass="cssDDL">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 552px">
                                &nbsp;</td>
                        </tr>

                        <tr>
                            <td style="width: 940px">
                                &nbsp;<asp:LinkButton ID="lbtnDeleteChapter" Text="Eliminar" runat="server" CssClass="cssButton" OnClick="lbtnDeleteChapter_Click" OnClientClick='return confirm("Esta seguro que desea eliminar este capitulo")'></asp:LinkButton></td>
                            <td style="width: 552px">
                                &nbsp;</td>
                        </tr>
            </table>   
        </ContentTemplate>
    </asp:UpdatePanel>                     

</asp:Content>

