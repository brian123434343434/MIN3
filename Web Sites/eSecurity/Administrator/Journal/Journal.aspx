<%@ page language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Journal_Journal, App_Web_qr9widkq" title="Consulta de Operaciones" theme="GattacaAdmin" %>

<%@ Register Src="../../UserControls/SearchControl.ascx" TagName="SearchControl"
    TagPrefix="uc1" %>
<%@ Register Assembly="ASPnetPagerV2_8" Namespace="ASPnetControls" TagPrefix="gtk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" CssClass="cssLabelTitle" Text="Consulta de Operaciones (Log)"></asp:Label>
                <hr />
                <asp:LinkButton ID="lnbJournalStats" runat="server" PostBackUrl="~/Administrator/Journal/JournalStats.aspx">Estadisticas Consolidadas</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSearch" runat="server" CssClass="cssLabelTitle" Text="Búsqueda"></asp:Label>
                <br />
                Seleccione los parámetros de consulta, luego presione el botón &quot;Buscar&quot;
            </td>
        </tr>
        <tr>
            <td>
                <uc1:SearchControl ID="scSearchEngine" runat="server" Columns="StartDate,Fecha,Date;IdApplicationTransaction,Operación,List;Client,Usuario,List;Code,Código de Error,List" />
                <asp:Label ID="Label2" CssClass="cssLabel" runat="server" Text="Criterio de Ordenamiento: "></asp:Label>
                <asp:DropDownList ID="ddlOrder" runat="server">
                    <asp:ListItem Value="ID">ID</asp:ListItem>
                    <asp:ListItem Value="StartDate">Fecha</asp:ListItem>
                    <asp:ListItem Value="IdApplicationTransaction">Operación</asp:ListItem>
                    <asp:ListItem Value="Client">Usuario</asp:ListItem>
                    <asp:ListItem Value="Code">Código de Error</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvData" runat="server" Width="100%" AutoGenerateColumns="False"
                    CssClass="cssGrid" DataKeyNames="ID">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="JournalDetail.aspx?Id={0}"
                            Text="Detalles" />
                        <asp:HyperLinkField DataNavigateUrlFields="Client" DataNavigateUrlFormatString="../User/AddUser.aspx?Option=Edit&amp;Id={0}"
                            HeaderText="Usuario" DataTextField="ClientName" />
                        <asp:BoundField DataField="ApplicationTransactionName" HeaderText="Operaciones" />
                        <asp:BoundField DataField="StartDate" HeaderText="Fecha Inicial" />
                        <asp:BoundField DataField="StartTime" HeaderText="Hora Inicial" />
                        <asp:BoundField DataField="EndDate" HeaderText="Fecha Final" />
                        <asp:BoundField DataField="EndTime" HeaderText="Hora Final" />
                        <asp:BoundField DataField="Message" HeaderText="Mensaje" />
                        <asp:BoundField DataField="Code" HeaderText="Código" />
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
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
