<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Company_AdminCompany, App_Web__yjwvz_k" theme="SoftManagement" %>

<%@ Register Src="../../UserControls/SearchControl.ascx" TagName="SearchControl"
    TagPrefix="uc1" %>
<%@ Register Assembly="ASPnetPagerV2_8" Namespace="ASPnetControls" TagPrefix="gtk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Administración de Entidades"></asp:Label>
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
                    CssClass="cssGrid" DataKeyNames="ID,Name,ContactName,eMail">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AddCompany.aspx?Option=Edit&amp;Id={0}&amp;Type=2"
                            HeaderText="Operaciones" Text="Editar" />
                        <asp:BoundField DataField="IsEnabled" HeaderText="Estado" />
                        <asp:BoundField DataField="Code" HeaderText="Codigo" Visible="False" />
                        <asp:BoundField DataField="Name" HeaderText="Nombre de la Entidad" />
                        <asp:BoundField DataField="Identification" HeaderText="Nit" Visible="False" />
                        <asp:TemplateField HeaderText="Contacto">
                            <ItemTemplate>
                                <asp:HyperLink ID="hlMail" runat="server" Text='<%# Bind("ContactName") %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ContactName" HeaderText="Contacto" Visible="False" />
                        <asp:TemplateField HeaderText="Reportes">
                            <ItemTemplate>
                                <asp:HyperLink ID="hlUsers" runat="server">Empleados</asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Asociaciones">
                            <ItemTemplate>
                                <asp:HyperLink ID="hlUserGroups" runat="server">Grupos de Usuarios</asp:HyperLink>
                                <asp:HyperLink ID="hlModules" runat="server">Módulos</asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Address" HeaderText="Dirección" />
                        <asp:BoundField DataField="CityName" HeaderText="Ciudad" Visible="true" />             
                        <asp:BoundField DataField="PhoneNumber1" HeaderText="Teléfono1" />
                        <asp:BoundField DataField="PhoneNumber2" HeaderText="Teléfono2" />
                        <asp:BoundField DataField="eMail" HeaderText="email" Visible="false"/>
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
                                &nbsp;<asp:DropDownList ID="ddlNumResults" runat="server" AutoPostBack="True" 
                                    Height="16px">
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
