<%@ page language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Country_AdminCountry, App_Web_tzvzaxrd" title="Administraci�n de Departamentos / Estados" theme="GattacaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Administraci�n de Pa�ses"></asp:Label>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSearch" runat="server" CssClass="cssLabelTitle" Text="B�squeda"></asp:Label>
                <table id="Table1" border="0" cellpadding="5" cellspacing="0" class="cssSubGrid"
                    width="100%">
                    <tr>
                        <td style="height: 2px">
                            <table id="_ctl5_rblSearch" border="0" cellpadding="0" cellspacing="0" class="cssLabelForm">
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtSearch" runat="server" CssClass="cssTextBoxForm"></asp:TextBox>
                                    </td>
                                    <td width="10">
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:RadioButtonList ID="rblSearch" runat="server" CssClass="cssFormFieldName" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="Name">Nombre</asp:ListItem>
                                            <asp:ListItem Value="City">Capital</asp:ListItem>                                            
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlNumResults" runat="server" AutoPostBack="True">
                                            <asp:ListItem Selected="True">10</asp:ListItem>
                                            <asp:ListItem>20</asp:ListItem>
                                            <asp:ListItem>50</asp:ListItem>
                                        </asp:DropDownList>
                                        N�mero de resultados por pantalla
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td align="right" style="height: 2px">
                            <asp:Button ID="btnSearch" runat="server" CssClass="cssButton" Text="Buscar" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="gvData" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CssClass="cssGrid" DataKeyNames="Id" Width="100%">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AddCountry.aspx?Option=Edit&amp;Id={0}"
                            HeaderText="Operaciones" Text="Editar" />
                        <asp:BoundField DataField="IsEnabled" HeaderText="Estado" />
                        <asp:BoundField DataField="Name" HeaderText="Pa�s" />
                        <asp:BoundField DataField="City" HeaderText="Capital" />
                    </Columns>
                    <RowStyle CssClass="cssItemStyle" />
                    <HeaderStyle CssClass="cssHeaderStyle" />
                    <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
                    <FooterStyle Wrap="True" />
                </asp:GridView>
            </td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <br />
                <asp:Button ID="btnNew" runat="server" CssClass="cssButton" Text="Adicionar" />
            </td>
        </tr>
    </table>
</asp:Content>
