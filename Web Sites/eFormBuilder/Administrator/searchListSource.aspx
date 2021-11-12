<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_searchListSource, App_Web_5zwlr24r" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="left">
                <table style="width: 100%">
                    <tr valign="top">
                        <td>
                            <asp:RadioButtonList ID="rblSearch" runat="server" RepeatDirection="Horizontal" CssClass="cssItemStyle">
                                <asp:ListItem Selected="True" Value="id">Id</asp:ListItem>
                                <asp:ListItem Value="code">Código</asp:ListItem>
                                <asp:ListItem Value="name">Nombre</asp:ListItem>
                                <asp:ListItem Value="type">Tipo de lista</asp:ListItem>
                                <asp:ListItem Value="source">Fuente</asp:ListItem>
                                <asp:ListItem Value="idinvokemethod">Id método de invocación</asp:ListItem>
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
                                <asp:ListItem Value="code">Código</asp:ListItem>
                                <asp:ListItem Value="name" Selected="True">Nombre</asp:ListItem>
                                <asp:ListItem Value="type">Tipo de lista</asp:ListItem>
                                <asp:ListItem Value="source">Fuente</asp:ListItem>
                                <asp:ListItem Value="idinvokemethod">Id método de invocación</asp:ListItem>
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
            <td style="height: 154px">
                <asp:UpdatePanel ID="upGrid" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:GridView ID="gvData" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            CssClass="cssGrid" Width="100%" HorizontalAlign="Center" PageSize="12">
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="addListSource.aspx?op=edit&amp;id={0}"
                                    HeaderText="Operaciones" Text="Editar" />
                                <asp:BoundField DataField="id" HeaderText="ID" />
                                <asp:BoundField DataField="code" HeaderText="Código" />
                                <asp:BoundField DataField="name" HeaderText="Nombre" />
                                <asp:BoundField DataField="listtype" HeaderText="Tipo de lista" />
                                <asp:BoundField DataField="source" HeaderText="Fuente" />
                                <asp:BoundField DataField="idinvokemethod" HeaderText="Método de invocación" />
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
