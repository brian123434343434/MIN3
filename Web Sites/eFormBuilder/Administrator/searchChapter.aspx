<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_searchChapter, App_Web_5zwlr24r" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="left">
                <table style="width: 100%">
                    <tr valign="top">
                        <td>
                            <asp:RadioButtonList ID="rblSearch" runat="server" RepeatDirection="Horizontal" CssClass="cssItemStyle">
                                <asp:ListItem Selected="True" Value="id">Id</asp:ListItem>
                                <asp:ListItem Value="idForm">Id Formulario</asp:ListItem>
                                <asp:ListItem Value="headerText">Título</asp:ListItem>
                                <asp:ListItem Value="helpText">Texto ayuda</asp:ListItem>
                                <asp:ListItem Value="tabOrder">Orden del capítulo</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:UpdatePanel ID="upSearch" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:TextBox ID="txtSearch" runat="server" Width="137px" CssClass="cssTextBoxForm"></asp:TextBox>
                                    <asp:Button ID="btnSearch" runat="server" Text="Buscar" CssClass="cssButton" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                        <td align="right">
                            <asp:Label ID="lblSort" runat="server" Text="Ordenar por" CssClass="cssLabelForm"></asp:Label>
                            <asp:DropDownList ID="ddlSort" runat="server" CssClass="cssDDL">
                                <asp:ListItem Text="Id" Value="id">Id</asp:ListItem>
                                <asp:ListItem Text="Id Formulario" Value="idForm">Id Formulario</asp:ListItem>
                                <asp:ListItem Text="Título" Selected="True" Value="headerText">Título</asp:ListItem>
                                <asp:ListItem Text="Texto de ayuda" Value="helpText">Texto de ayuda</asp:ListItem>
                                <asp:ListItem Text="Orden del capítulo" Value="tabOrder">Orden del capítulo</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:UpdatePanel ID="upSubTitle" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Label ID="lblSubTitle" runat="server"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:UpdatePanel ID="upData" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                            Width="100%" CssClass="cssGrid" PageSize="12">
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="addChapter.aspx?op=edit&id={0}"
                                    HeaderText="Operaciones" Text="Editar" />
                                <asp:BoundField DataField="idForm" HeaderText="Id Formulario" />
                                <asp:BoundField DataField="headerText" HeaderText="Título" />
                                <asp:BoundField DataField="helpText" HeaderText="Texto ayuda" />
                                <asp:BoundField DataField="tabOrder" HeaderText="Orden Capítulo" />
                                <asp:HyperLinkField HeaderText="Asociar Campos al Capitulo" Text="Ver Campos" ItemStyle-HorizontalAlign="Center"
                                    DataNavigateUrlFields="id" DataNavigateUrlFormatString="adminFieldsByChapter.aspx?idChapter={0}" />
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
