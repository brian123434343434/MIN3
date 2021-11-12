<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_searchField, App_Web_5zwlr24r" title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphPrincipal" runat="Server">
    <asp:UpdatePanel ID="upSearchField" runat="server">
        <ContentTemplate>
            <table width="100%">
                <tr>
                    <td align="left">
                        <table width="100%">
                            <tr valign="top">
                                <td>
                                    <asp:RadioButtonList ID="rblSearch" runat="server" RepeatDirection="Horizontal"  CssClass="cssItemStyle" Width="520">
                                        <asp:ListItem Value="id" Selected="True">Id</asp:ListItem>
                                        <asp:ListItem Value="idForm">Id Formulario</asp:ListItem>
                                        <asp:ListItem Value="text">Texto</asp:ListItem>
                                        <asp:ListItem Value="field">Campo</asp:ListItem>
                                        <asp:ListItem Value="sourceSql">Fuente</asp:ListItem>
                                        <asp:ListItem Value="type">Tipo</asp:ListItem>
                                        <asp:ListItem Value="required">Requerido</asp:ListItem>
                                        <asp:ListItem Value="tablename">Tabla</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                                <td style="width: 230px">
                                    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                                </td>
                                <td style="width: 230px">
                                    <asp:Button ID="btnSearch" runat="server" CssClass="cssButton" Text="Buscar" />
                                </td>
                                <td align="left" valign="top">
                                    <asp:Label ID="lblSort" runat="server" Text="Ordenar por"></asp:Label>
                                    <asp:DropDownList ID="ddlSort" runat="server" CssClass="cssDDL">
                                        <asp:ListItem Value="id" Selected="True">Id</asp:ListItem>
                                        <asp:ListItem Value="idForm">Id Formulario</asp:ListItem>
                                        <asp:ListItem Value="text">Texto</asp:ListItem>
                                        <asp:ListItem Value="field">Campo</asp:ListItem>
                                        <asp:ListItem Value="sourceSql">Fuente</asp:ListItem>
                                        <asp:ListItem Value="type">Tipo</asp:ListItem>
                                        <asp:ListItem Value="required">Requerido</asp:ListItem>
                                        <asp:ListItem Value="tablename">Tabla</asp:ListItem>
                                        <asp:ListItem Value="sortorder">Orden</asp:ListItem>
                                        <asp:ListItem Value="datatype">Tipo de dato</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="lblSubTitle" runat="server"></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:UpdatePanel ID="upData" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                                    CssClass="cssGrid" Width="100%" PageSize="12">
                                    <Columns>
                                        <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="addFields.aspx?op=edit&amp;id={0}"
                                            HeaderText="Operaciones" Text="Editar" />
                                        <asp:BoundField DataField="id" HeaderText="Id" />
                                        <asp:BoundField DataField="code" HeaderText="Código" />
                                        <asp:BoundField DataField="idForm" HeaderText="Id Formulario" />
                                        <asp:BoundField DataField="text" HeaderText="Texto" />
                                        <asp:BoundField DataField="type" HeaderText="Tipo" />
                                        <asp:BoundField DataField="table" HeaderText="Tabla" />
                                        <asp:BoundField DataField="field" HeaderText="Campo" />
                                        <asp:BoundField DataField="required" HeaderText="Requerido" />
                                        <asp:BoundField DataField="sourceSql" HeaderText="Fuente" />
                                        <asp:BoundField DataField="sortOrder" HeaderText="Orden" />
                                        <asp:BoundField DataField="datatype" HeaderText="Tipo de dato" />
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
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
