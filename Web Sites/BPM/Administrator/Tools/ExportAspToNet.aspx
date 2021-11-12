<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="ExportAspToNet.aspx.vb" Inherits="BPMWebSite.ExportAspToNet"
    Title="ExportAspToNet" Theme="SoftManagement" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="FormPanel" runat="server" BackColor="white">
                <table id="Table1" border="0" cellpadding="1" cellspacing="1" class="cssTable">
                    <tr>
                        <td align="left" colspan="6" class="cssLabelTitle">
                            <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">Exportar versión 1.5 a 8.3</asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span lang="es-co">Cliente: </span>
                            <asp:TextBox ID="txtClient" runat="server" Width="249px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="btnGetProcesses" runat="server" Text="Cargar Procesos" />
                            <br />
                            <br />
                            <asp:DropDownList ID="cboProcess" runat="server" Width="300px">
                            </asp:DropDownList>
                            <br />
                            <br />
                            <asp:Button ID="btnGenerate" runat="server" Text="Generar" /> <asp:HyperLink ID="hlDownload" runat="server" Visible="False" CssClass="cssButton"
                                Target="_blank">Descargar</asp:HyperLink>
                            <br />
                            <br />
                            <b>Nota: </b>
                            <br />
                            Debe existir el participante No.1 correspondiente al usuario administrador del sistema,
                            de lo contrario, el proceso no podra exportase
                        </td>
                    </tr>
                </table>
                &nbsp;</asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
