<%@ page language="VB" masterpagefile="~/Master/mpAdmin.master" autoeventwireup="false" inherits="Administrator_addFormXml, App_Web_5zwlr24r" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td> 
                 <asp:Label ID="lblFile" runat="server" Text="Ruta del archivo" 
                    CssClass="cssLabelForm"></asp:Label>
                 <input id="txtFile" runat="server" class="cssFormInputLabel" type="file" />
                <asp:RequiredFieldValidator ID="rfvFileUpload" runat="server" ControlToValidate="txtFile"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td> 
                <asp:Button
        ID="btnAddXML" runat="server" Text="Agregar XML" CssClass="cssButton" />
            </td>
        </tr>
    </table>
</asp:Content>

