<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="AdminUser.aspx.vb" Inherits="BPMWebSite.AdminUser" Title="Administración de Usuarios" %>

<%@ Register Src="../../UserControls/SearchControl.ascx" TagName="SearchControl" TagPrefix="uc1" %>
<%@ Register Assembly="ASPnetPagerV2_8" Namespace="ASPnetControls" TagPrefix="gtk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table id="Table4" class="cssTable" cellspacing="1" cellpadding="1" border="0" width="100%">
        <tr>
            <td class="cssLabelTitle">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" >Administración de Usuarios</asp:Label>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSearch" runat="server" CssClass="cssLabelTitle" Text="Búsqueda"></asp:Label>
                <uc1:SearchControl ID="scSearchEngine" runat="server" Columns="Code,Código,String;Name,Nombre,String;EMail,E-Mail,String;Identification,Identificación,String;Edited,Fecha,Date" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvData" runat="server" Width="100%" AutoGenerateColumns="False"
                    CssClass="cssGrid" DataKeyNames="ID,Name">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="AddUser.aspx?Option=Edit&amp;Id={0}"
                            HeaderText="Operaciones" Text="Editar" />
                        <asp:BoundField DataField="IsEnabled" HeaderText="Estado" />
                        <asp:BoundField DataField="Code" HeaderText="Codigo" />
                        <asp:BoundField DataField="Name" HeaderText="Nombre" />
                        <asp:BoundField DataField="Identification" HeaderText="Identificaci&#243;n" Visible="False" />
                        <asp:BoundField DataField="EMail" HeaderText="eMail" />
                        <asp:TemplateField HeaderText="Asociaciones">
                            <ItemTemplate>
                                <asp:HyperLink ID="hlUserGroups" runat="server">Grupos</asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
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
            <td>
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
