<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_searchFormInstance, App_Web_5zwlr24r" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="left">
                <asp:UpdatePanel ID="upSearch" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <table style="width: 100%">
                            <tr valign="top">
                                <td>
                                    <asp:RadioButtonList ID="rblSearch" runat="server" RepeatDirection="Horizontal" CssClass="cssItemStyle">
                                        <asp:ListItem Selected="True" Value="id">Id</asp:ListItem>
                                        <asp:ListItem Value="idForm">Id del Formulario</asp:ListItem>
                                        <asp:ListItem Value="idUser">Id del Usuario</asp:ListItem>
                                        <asp:ListItem Value="registryDate">Fecha de Registro</asp:ListItem>
                                        <asp:ListItem Value="FormName">Nombre del Formulario</asp:ListItem>
                                        <asp:ListItem Value="ApplicationUserName">Nombre del Usuario</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSearch" runat="server" CssClass="cssDDL"></asp:TextBox>
                                    <asp:Button ID="btnSearch" runat="server" Text="Buscar" CssClass="cssButton" />
                                </td>
                                <td align="right">
                                    <asp:Label ID="lblSort" runat="server" Text="Ordenar por" CssClass="cssLabelForm"></asp:Label>
                                    <asp:DropDownList ID="ddlSort" runat="server" CssClass="cssDDL">
                                        <asp:ListItem Value="FormInstance.id">Id</asp:ListItem>
                                        <asp:ListItem Value="idForm">Id del Formulario</asp:ListItem>
                                        <asp:ListItem Value="idUser">Id del Usuario</asp:ListItem>
                                        <asp:ListItem Selected="True" Value="registryDate">Fecha de Registro</asp:ListItem>
                                        <asp:ListItem Value="FormName">Nombre del Formulario</asp:ListItem>
                                        <asp:ListItem Value="ApplicationUserName">Nombre del Usuario</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:UpdatePanel ID="upMessage" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Label ID="lblSubTitle" runat="server" CssClass="csslabeltitle"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td style="height: 154px">
                <asp:UpdatePanel ID="upData" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                            Width="100%" CssClass="cssGrid" PageSize="12">
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFields="id,idForm,EntryData,IdEntryData" Target="_blank"
                                    DataNavigateUrlFormatString="~/Public/buildFormInstance.aspx?idFormInstance={0}&Form={1}&op=show&IdProcessInstance={2}&IdActivityInstance={3}&searchInstance=true"
                                    HeaderText="Operaciones" Text="Ver" />                               
                                <asp:HyperLinkField DataNavigateUrlFields="id,idForm,EntryData,IdEntryData" Target="_blank"
                                    DataNavigateUrlFormatString="~/Public/buildFormInstance.aspx?idFormInstance={0}&Form={1}&op=update&IdProcessInstance={2}&IdActivityInstance={3}&searchInstance=true"
                                    HeaderText="Operaciones" Text="Editar" />
                                <asp:HyperLinkField DataNavigateUrlFields="id" Target="_blank"
                                DataNavigateUrlFormatString="~/Public/FormFilesList.aspx?formInstanceId={0}"
                                HeaderText="Operaciones" Text="Ver archivos" />
                                <asp:BoundField DataField="id" HeaderText="id" />
                                <asp:BoundField DataField="idForm" HeaderText="Id del Formulario" />
                                <asp:BoundField DataField="idUser" HeaderText="Id del Usuario" />
                                <asp:BoundField DataField="registryDate" HeaderText="Fecha de Registro" />
                                <asp:TemplateField HeaderText="Nombre del Formulario">
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container, "DataItem.form.name")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Nombre del Usuario">
                                    <ItemTemplate>
                                        <%#DataBinder.Eval(Container, "DataItem.user.Name")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
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
