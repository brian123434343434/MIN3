<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowError.Master"
    CodeBehind="WhereIsTheProcess.aspx.vb" Inherits="BPMWebSite.WhereIsTheProcess"
    Title="Seguimiento del proceso" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="phDefault" runat="server">--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td class="cssBkgWorkItem">
                <asp:HyperLink ID="lnkDocumentAttach" runat="server" Target="_blank">Documento asociado</asp:HyperLink>
                <br />
                <br />
                <br />
                <img src="ShowProcessInstance.aspx?IDProcessInstance=" runat="server" id="imgDiagram"
                    alt="ProcessDiagram" style="text-align: center;" />
            </td>
        </tr>
    </table>
</asp:Content>
