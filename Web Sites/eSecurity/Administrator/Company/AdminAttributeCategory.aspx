<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Company_AdminAttributeCategory, App_Web__yjwvz_k" theme="SoftManagement" %>

<%@ Register Assembly="DBauer.Web.UI.WebControls.DynamicControlsPlaceholder" Namespace="DBauer.Web.UI.WebControls"
    TagPrefix="DBWC" %>
<%@ Register Assembly="ASPnetPagerV2_8" Namespace="ASPnetControls" TagPrefix="gtk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 540px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table style="width: 100%;" align="center">
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Administración de Categorías de Atributos"></asp:Label>
                    <hr />
                    <asp:Label ID="lblSearch" runat="server" CssClass="cssLabelTitle" Text="Búsqueda"></asp:Label>
                    <br />
                    <table border="0" cellpadding="5" cellspacing="5" class="cssSubGrid" style="width: 50%">
                        <tr class="cssLabel">
                            <td nowrap="nowrap" style="text-align: center;" valign="middle">
                                Nombre:
                            </td>
                            <td style="width: 10px;">
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td class="cssLabel" style="width: 100%;">
                                <asp:TextBox ID="txtSearchName" runat="server" MaxLength="200" Width="200px"></asp:TextBox>
                            </td>
                            <td style="width: 100%; text-align: right" valign="middle">
                                <asp:Button ID="btnSearch" runat="server" CssClass="cssButton" TabIndex="0" Text="Buscar" />
                            </td>
                        </tr>
                    </table>
                    <asp:GridView ID="gvCategories" runat="server" AutoGenerateColumns="False" CssClass="cssGrid"
                        DataKeyNames="ID,Name" Width="100%">
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="AddAttributeCategory.aspx?Option=Edit&amp;Id={0}"
                                HeaderText="Operaciones" Text="Editar" />
                            <asp:BoundField DataField="Name" HeaderText="Nombre Categoría" />
                        </Columns>
                        <RowStyle CssClass="cssItemStyle" />
                        <HeaderStyle CssClass="cssHeaderStyle" />
                        <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
                        <FooterStyle Wrap="True" />
                    </asp:GridView>
                    <gtk:PagerV2_8 ID="pgPublication" runat="server" GenerateGoToSection="True" OfClause="de"
                        PageSize="5" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    <asp:Label ID="lblItemCount" runat="server" CssClass="cssLabel"></asp:Label>
                </td>
                <td align="center">
                    <asp:Label ID="lblTitNumResults" runat="server" Text="Número de resultados por pantalla"></asp:Label>
                    &nbsp;<asp:DropDownList ID="ddlNumResults" runat="server" AutoPostBack="True">
                        <asp:ListItem Selected="True">10</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="btnAdd" runat="server" Text="Adicionar" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
</asp:Content>
