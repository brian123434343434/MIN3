<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_UserGroup_userByUserGroup, App_Web_hery_agv" theme="GattacaAdmin" %>
<%@ Register Assembly="SCS.PickList" Namespace="SCS.Web.UI.WebControls" TagPrefix="cc1" %>
<%@ Register Assembly="ASPnetPagerV2_8" Namespace="ASPnetControls" TagPrefix="gtk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .cssButton
        {
            width: 82px;
        }
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="100%">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">Administración 
                de Usuarios por Grupo de Usuarios<hr /></asp:Label>
                <asp:Label ID="lblCompanyName" runat="server" CssClass="cssLabelTitle"></asp:Label><asp:Label ID="lblAreaName" runat="server" CssClass="cssLabelForm" Visible="False"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2">
              <asp:GridView ID="grdUsersByUserGroup" runat="server" Width="100%" AutoGenerateColumns="False"
                CssClass="cssGrid" DataKeyNames="ID,Name">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="~/Administrator/User/AddUser.aspx?Option=Edit&amp;Id={0}" HeaderText="Operaciones" Text="Editar"/>
                        <asp:BoundField DataField="Code" HeaderText="Codigo" />
                        <asp:BoundField DataField="Name" HeaderText="Nombre" />
                        <asp:BoundField DataField="Identification" HeaderText="Identificaci&#243;n" />
                        <asp:BoundField DataField="EMail" HeaderText="E-Mail" />
                        <asp:BoundField DataField="IsEnabled" HeaderText="Estado" />
                        <asp:TemplateField HeaderText="Asociaciones">
                            <ItemTemplate>
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
                                <asp:Label ID="lblItemCount" CssClass="cssLabel" runat="server"></asp:Label></td><td>
                                <asp:Label ID="lblTitNumResults" runat="server" Text="Número de resultados por pantalla"></asp:Label><asp:DropDownList ID="ddlNumResults" runat="server" AutoPostBack="True">
                                <asp:ListItem Selected="True">10</asp:ListItem><asp:ListItem>20</asp:ListItem><asp:ListItem>50</asp:ListItem></asp:DropDownList></td></tr><tr align="center">
                            <td colspan="2" style="text-align: center">
                                <asp:Label ID="lblError" runat="server" style="text-align: left"></asp:Label>
                                <asp:Button ID="btnNewGroup" runat="server" Text="Adicionar" 
                                    CssClass="cssButton" Visible="False" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>