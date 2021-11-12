<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_SearchPartnerLink, App_Web_5zwlr24r" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="left">
                <table style="width: 100%">
                    <tr valign="top">
                        <td>
                            <asp:RadioButtonList ID="rblSearch" runat="server" RepeatDirection="Horizontal" CssClass="cssItemStyle">
                                <asp:ListItem Selected="True" Value="id">Id</asp:ListItem>
                                <asp:ListItem Value="name">Nombre</asp:ListItem>
                                <asp:ListItem Value="description">Descripción</asp:ListItem>
                                <asp:ListItem Value="url">URL</asp:ListItem>
                                <asp:ListItem Value="enabled">Estado</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSearch" runat="server" Width="137px" CssClass="cssTextBoxForm"></asp:TextBox>
                        </td>
                        <td>
                            <asp:UpdatePanel ID="upButton" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:Button ID="btnSearch" runat="server" Text="Buscar" CssClass="cssButton" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblSort" runat="server" Text="Ordenar por" CssClass="cssLabelForm"></asp:Label>
                            <asp:DropDownList ID="ddlSort" runat="server" CssClass="cssDDL">
                                <asp:ListItem Value="id">Id</asp:ListItem>
                                <asp:ListItem Value="name" Selected="True">Nombre</asp:ListItem>
                                <asp:ListItem Value="description">Descripción</asp:ListItem>
                                <asp:ListItem Value="url">URL</asp:ListItem>
                                <asp:ListItem Value="enabled">Estado</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:UpdatePanel ID="upMessage" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Label ID="lblSubTitle" runat="server"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:UpdatePanel ID="upGrid" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:GridView ID="gvData" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            CssClass="cssGrid" Width="100%"  PageSize="12">
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="addpartnerlink.aspx?op=edit&amp;id={0}"
                                    HeaderText="Operaciones" Text="Editar" />
                                <asp:BoundField DataField="id" HeaderText="ID" />
                                <asp:BoundField DataField="name" HeaderText="Nombre" />
                                <asp:BoundField DataField="description" HeaderText="Texto Descriptivo" />
                                <asp:BoundField DataField="url" HeaderText="URL" />
                                <asp:BoundField DataField="enabled" HeaderText="Habilitado" />
                            </Columns>
                            <RowStyle CssClass="cssItemStyle" />
                            <PagerStyle CssClass="cssPager" />
                            <HeaderStyle CssClass="cssHeaderStyle" />
                            <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
                        </asp:GridView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>
