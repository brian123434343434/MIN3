<%@ page title="" language="VB" masterpagefile="~/MasterPages/SecurityDefault.master" autoeventwireup="false" inherits="Errors_ErrorList, App_Web_iuqambc1" theme="GattacaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Detalles del Log"></asp:Label>
    <hr />

    <asp:Label ID="lblDetail" runat="server" Text=""></asp:Label>
    
    <asp:GridView ID="gvErrorData" runat="server" AutoGenerateColumns="False" CssClass="cssGrid">
        <Columns>
            <asp:BoundField DataField="DateTime" HeaderText="Fecha" />
            <asp:BoundField DataField="ExceptionId" HeaderText="Número" />
            <asp:BoundField DataField="Message" HeaderText="Descripción" />
            <asp:BoundField DataField="Source" HeaderText="Origen" />
            <asp:BoundField DataField="Module" HeaderText="Módulo" />
            <asp:BoundField DataField="Method" HeaderText="Método" />
            <asp:BoundField DataField="MachineName" HeaderText="Host" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="lblReport" runat="server" Text="" ForeColor="Red"></asp:Label>
</asp:Content>

