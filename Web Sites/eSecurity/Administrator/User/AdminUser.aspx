<%@ page language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_User_AdminUser, App_Web_z2f_sopw" title="Administraci�n de Usuarios" theme="SoftManagement" %>

<%@ Register Src="../../UserControls/SearchControl.ascx" TagName="SearchControl"
    TagPrefix="uc1" %>
<%@ Register Assembly="ASPnetPagerV2_8" Namespace="ASPnetControls" TagPrefix="gtk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .cssButton
        {
            width: 82px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Administraci�n de Usuarios"></asp:Label>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSearch" runat="server" CssClass="cssLabelTitle" Text="B�squeda"></asp:Label>
                <uc1:SearchControl ID="scSearchEngine" runat="server" Columns="Code,C�digo,String;Name,Nombre,String;EMail,E-Mail,String;Identification,Identificaci�n,String;Edited,Fecha,Date" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
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
                                <asp:HyperLink ID="hlModule" runat="server">M�dulos</asp:HyperLink>
                                <asp:HyperLink ID="hlUserGroups" runat="server">Grupos</asp:HyperLink>
                                <asp:HyperLink ID="hlCompany" runat="server">Empresas</asp:HyperLink>
                                <asp:HyperLink ID="hlOperations" runat="server">Operaciones</asp:HyperLink>
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
            <td colspan="2">
                <div class="cssAdmOperations">
                    <table width="100%" class="cssSubGrid">
                        <tr align="center">
                            <td>
                                <asp:Label ID="lblItemCount" CssClass="cssLabel" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblTitNumResults" runat="server" Text="N�mero de resultados por pantalla"></asp:Label>
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
