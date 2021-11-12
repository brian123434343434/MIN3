<%@ page language="VB" autoeventwireup="false" inherits="Administrator_joinFieldToChapter, App_Web_5zwlr24r" masterpagefile="~/Master/mpAdmin.master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="cphPrincipal">
    <asp:UpdatePanel ID="upContent" runat="server">
        <ContentTemplate>
            <table style="width: 100%;">
                        <tr>
                            <td>
                                <asp:Label ID="lblListOfChapter" runat="server" Text="Seleccione un formulario" CssClass="cssLabel"></asp:Label>
                            </td>
                            <td>  
                            </td>
                            <td>
                                <asp:Label ID="lblChapterSelected" runat="server" CssClass="cssLabel"></asp:Label>
                            </td>
                        </tr>
                <tr> 
                    <td>
                        <asp:DropDownList ID="ddlSelectedForm" runat="server" AutoPostBack="True" CssClass="cssDDL" OnSelectedIndexChanged="ddlSelectedForm_SelectedIndexChanged">
                        </asp:DropDownList></td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="ddlSelectedChapter" runat="server" AutoPostBack="True" CssClass="cssDDL">
                                </asp:DropDownList>
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:Label ID="lblMessageFields" runat="server" Text="Campos Agregados" CssClass="cssLabel"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td style="width: 214px">
                                <asp:ListBox ID="lbxFieldsAvailable" CssClass="cssDDL" runat="server" Width="242px"></asp:ListBox>
                            </td>
                            <td align="center">
                                <table>                    
                                    <tr>
                                        <td>
                                            <asp:LinkButton ID="lbtnAddField" Text="Agregar >>" runat="server" CssClass="cssButton"></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:LinkButton ID="lbtnRemoveField" Text="<< Quitar" runat="server" CssClass="cssButton"></asp:LinkButton>
                                        </td>
                                    </tr>                    
                                </table>
                            </td>
                            <td style="width: 229px">
                                <asp:ListBox ID="lbxFieldsAdded" CssClass="cssDDL" runat="server" Width="228px"></asp:ListBox>
                            </td>
                        </tr>
            </table>   
        </ContentTemplate>
    </asp:UpdatePanel>                     
</asp:Content>



