<%@ page language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Journal_JournalDetail, App_Web_qr9widkq" title="Untitled Page" theme="GattacaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle" Text="Detalle de Operación (Log)"></asp:Label>
                <hr />
            </td>
        </tr>
        <tr>
            <td colspan="2"  >
                <table align="center" bgcolor="White" border="0" cellpadding="1" cellspacing="1">
                    <tr>
                        <td class="cssFormFieldName" style="width: 280px">
                            Operación
                        </td>
                        <td >
                            <asp:Label ID="lbApplicationTransaction" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 280px">
                            Nombre del Usuario
                        </td>
                        <td >
                            <asp:Label ID="lbClient" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 280px">
                            Información General
                        </td>
                        <td >
                            <asp:Label ID="lbInformation" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 280px">
                            Fecha de Inicio de la Operación
                        </td>
                        <td >
                            <asp:Label ID="lbStartDate" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 280px">
                            Fecha de Finalización de la Operación
                        </td>
                        <td >
                            <asp:Label ID="lbEndDate" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 280px">
                            Parametro1
                        </td>
                        <td >
                            <asp:Label ID="lbParameter1" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 280px">
                            Parametro2
                        </td>
                        <td >
                            <asp:Label ID="lbParameter2" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="cssFormFieldName" style="width: 280px">
                            Parametro3
                        </td>
                        <td >
                            <asp:Label ID="lbParameter3" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnAtras" runat="server" Text="Anterior Operación" Width="130px" />
                &nbsp;<asp:Button ID="btnSiguiente" runat="server" Text="Siguiente Operación" Width="130px" />
            </td>
        </tr>
    </table>
</asp:Content>
