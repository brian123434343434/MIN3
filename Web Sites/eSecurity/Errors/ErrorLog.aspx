<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Errors_ErrorLog, App_Web_iuqambc1" theme="GattacaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script type="text/jscript" language="Javascript">

        function OpenLogFile(fileName) {
            window.open('../Errors/ErrorList.aspx?file=' + fileName, 'EventLog', 'scrollbars=1,status=0,Height=750,Width=700');
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Administrador de Eventos - Error"></asp:Label>
    <hr />
    <br />
    <asp:GridView ID="gvErrorLog" runat="server" AllowPaging="True" CssClass="cssGrid"
        DataKeyNames="Components,PathFile" AutoGenerateColumns="False" PageSize="20">
        <Columns>
            <asp:TemplateField HeaderText="Documento">
                <ItemTemplate>
                    <asp:HyperLink ID="hlOpenFile" runat="server" NavigateUrl="" Text='<%# Bind("Components") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField HeaderText="Administración" DeleteText="Eliminar documento" ShowDeleteButton="True" />
        </Columns>
        <RowStyle CssClass="cssItemStyle" />
        <HeaderStyle CssClass="cssHeaderStyle" />
        <AlternatingRowStyle CssClass="cssAlternatingItemStyle" />
        <FooterStyle Wrap="True" />
    </asp:GridView>
    <br />
    <asp:Label ID="lblReport" runat="server" Text="" ForeColor="Red"></asp:Label>
</asp:Content>
