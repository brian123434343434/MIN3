<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Company_AddCompanyType, App_Web__yjwvz_k" theme="SoftManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
    <table style="width: 100%">
        <tr>
            <td colspan="2" style="text-align: left">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" 
                    Text="Categorías de Empresas"></asp:Label>
                <hr />
            </td>
        </tr>
    </table>
        <table style="width: 36%;" align="center">
            <tr>
                <td style="text-align: left">
                    <asp:Label ID="lblName" runat="server" Text="Nombre" style="text-align: right"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbName" runat="server" Width="200px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbName" Display="Dynamic" ErrorMessage="Dato Requerido" 
                        Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:Label ID="lblCategory" runat="server" Text="Categoría" 
                        style="text-align: left"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCategory" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:GridView ID="gvCategories" runat="server" AutoGenerateColumns="False" CssClass="cssGrid"
                        DataKeyNames="IdCategory,NameCategory">
                        <Columns>
                            <asp:BoundField DataField="IdCategory" HeaderText="IdCategory" Visible="false" />
                            <asp:BoundField DataField="NameCategory" HeaderText="Categoría">
                                <ItemStyle HorizontalAlign="Left" Font-Bold="true" VerticalAlign="Top" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Atributos" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <asp:CheckBoxList ID="cblAttributes" runat="server">
                                    </asp:CheckBoxList>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <RowStyle CssClass="cssItemStyle" />
                        <HeaderStyle CssClass="cssHeaderStyle" />
                        <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
                        <FooterStyle Wrap="True" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnAccept" runat="server" Text="Guardar" />
                    &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Eliminar" />
                    &nbsp;<asp:Button ID="btnCancel" runat="server" Text="Cancelar" 
                        CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblReport" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnConfirm" runat="server" Text="Eliminar" Visible="False" />
                    &nbsp;<asp:Button ID="btnCancelDelete" runat="server" Text="Cancelar" 
                        Visible="False" CausesValidation="False" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
