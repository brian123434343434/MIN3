<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_searchInvokeMethod, App_Web_5zwlr24r" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="left">
                <table style="width: 100%">
                    <tr valign="top">
                        <td>
                            <asp:RadioButtonList ID="rblSearch" runat="server" RepeatDirection="Horizontal" CssClass="cssItemStyle">
                                <asp:ListItem Selected="True" Value="id">Id</asp:ListItem>
                                <asp:ListItem Value="idPartnerLink">ID enlace servicio web</asp:ListItem>
                                <asp:ListItem Value="code">Código</asp:ListItem>
                                <asp:ListItem Value="name">Nombre</asp:ListItem>
                                <asp:ListItem Value="method">Método</asp:ListItem>
                                <asp:ListItem Value="IdForm">Id Formulario</asp:ListItem>
                                <asp:ListItem Value="FormEvent">Evento del formulario</asp:ListItem>
                                <asp:ListItem Value="InvoKeType">Tipo invocación</asp:ListItem>
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
                                <asp:ListItem Selected="True" Value="id">Id</asp:ListItem>
                                <asp:ListItem Value="idPartnerLink">ID enlace servicio web</asp:ListItem>
                                <asp:ListItem Value="code">Código</asp:ListItem>
                                <asp:ListItem Value="name">Nombre</asp:ListItem>
                                <asp:ListItem Value="method">Método</asp:ListItem>
                                <asp:ListItem Value="IdForm">Id Formulario</asp:ListItem>
                                <asp:ListItem Value="FormEvent">Evento formulario</asp:ListItem>
                                <asp:ListItem Value="IdField">ID Campo</asp:ListItem>
                                <asp:ListItem Value="FieldEvent">Evento del campo</asp:ListItem>
                                <asp:ListItem Value="InvoKeType">Tipo invocación</asp:ListItem>
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
            <td>
                <asp:UpdatePanel ID="upGrid" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:GridView ID="gvData" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            CssClass="cssGrid" Width="100%" PageSize="12">
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="addInvokeMethod.aspx?op=edit&amp;id={0}"
                                    HeaderText="Operaciones" Text="Editar" />
                                <asp:BoundField DataField="id" HeaderText="ID" />
                                <asp:BoundField DataField="idPartnerLink" HeaderText="ID enlace webservice" />
                                <asp:BoundField DataField="code" HeaderText="Código" />
                                <asp:BoundField DataField="name" HeaderText="Nombre" />
                                <asp:BoundField DataField="method" HeaderText="Método" />
                                <asp:BoundField DataField="IdForm" HeaderText="ID formulario" />
                                <asp:BoundField DataField="FormEvent" HeaderText="Evento formulario" />
                                <asp:BoundField DataField="InvoKeType" HeaderText="Tipo de invocación" />
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
