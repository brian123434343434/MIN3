<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Company_AdminCompanyTypeCategory, App_Web__yjwvz_k" theme="SoftManagement" %>

<%@ Register Src="../../UserControls/SearchControl.ascx" TagName="SearchControl"
    TagPrefix="uc1" %>
<%@ Register Assembly="ASPnetPagerV2_8" Namespace="ASPnetControls" TagPrefix="gtk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Administración de Categorías de Empresas"></asp:Label>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSearch" runat="server" CssClass="cssLabelTitle" Text="Búsqueda"></asp:Label>
                <uc1:SearchControl ID="scSearchEngine" runat="server" Columns="Name,Nombre,String" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="gvData" runat="server" Width="100%" AutoGenerateColumns="False"
                    CssClass="cssGrid" DataKeyNames="ID,Name">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AddCompanyTypeCategory.aspx?Option=Edit&amp;Id={0}&amp;Type=2"
                            HeaderText="Operaciones" Text="Editar" />
                        <asp:BoundField DataField="Name" HeaderText="Nombre" />
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
            <td colspan="2">
                <div class="cssAdmOperations">
                    <table width="100%" class="cssSubGrid">
                        <tr align="center">
                            <td>
                                <asp:Label ID="lblItemCount" CssClass="cssLabel" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblTitNumResults" runat="server" Text="Número de resultados por pantalla"></asp:Label>
                                &nbsp;<asp:DropDownList ID="ddlNumResults" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True">10</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>50</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="2">
                                <asp:Button ID="btnNew" runat="server" Text="Adicionar" CssClass="cssButton" />
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
