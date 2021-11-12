<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Message_AdminMessage, App_Web_fpnxofoj" theme="GattacaAdmin" %>

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
    <table border="0" cellpadding="1" cellspacing="1" align="center" bgcolor="White" width="100%">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Administración de Mensajes"></asp:Label>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSearch" runat="server" CssClass="cssLabelTitle" Text="Búsqueda"></asp:Label>
                <uc1:SearchControl ID="search" runat="server" Columns="Id,Código,Integer;Name,Mensaje,String" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="grdMessage" runat="server" Width="100%" AutoGenerateColumns="False"
                    CssClass="cssGrid" DataKeyNames="ID,Name">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="addMessage.aspx?Id={0}"
                            HeaderText="Operaciones" Text="Editar" />
                        <asp:BoundField DataField="ID" HeaderText="Código" />
                        <asp:BoundField DataField="Name" HeaderText="Mensaje" />
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
                                <asp:Label ID="lblTitNumResults" runat="server" Text="Número de resultados por pantalla"></asp:Label><asp:DropDownList
                                    ID="ddlNumResults" runat="server" AutoPostBack="True">
                                    <asp:ListItem Selected="True">10</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>50</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="2" style="text-align: center">
                                <asp:Label ID="lblError" runat="server" Style="text-align: left"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
