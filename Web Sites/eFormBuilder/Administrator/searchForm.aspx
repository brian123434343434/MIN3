<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_searchForm, App_Web_5zwlr24r" title="Untitled Page" %>

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
                                <asp:ListItem Value="type">Tipo</asp:ListItem>
                                <asp:ListItem Value="descriptionText">Descripcion</asp:ListItem>
                                <asp:ListItem Value="helpText">Texto Ayuda</asp:ListItem>
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
                                <asp:ListItem Selected="True" Value="name">Nombre</asp:ListItem>
                                <asp:ListItem Value="type">Tipo</asp:ListItem>
                                <asp:ListItem Value="descriptionText">Descripcion</asp:ListItem>
                                <asp:ListItem Value="helpText">Texto Ayuda</asp:ListItem>
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
                            CssClass="cssGrid" Width="100%" PageSize="12">
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="addForm.aspx?op=edit&amp;id={0}"
                                    HeaderText="Operaciones" Text="Editar" />
                                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="showForm.aspx?id={0}"
                                    Target="_blank" Text="Visualizar" />
                                <asp:BoundField DataField="id" HeaderText="ID" />
                                <asp:BoundField DataField="name" HeaderText="Nombre" />
                                <asp:BoundField DataField="type" HeaderText="Tipo" />
                                <asp:BoundField DataField="descriptionText" HeaderText="Texto Descriptivo" />
                                <asp:BoundField DataField="helpText" HeaderText="Texto Ayuda" />
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
