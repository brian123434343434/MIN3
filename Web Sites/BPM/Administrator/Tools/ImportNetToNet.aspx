<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowAdmin.Master"
    CodeBehind="ImportNetToNet.aspx.vb" EnableEventValidation="true" Inherits="BPMWebSite.ImportNetToNet"
    Theme="SoftManagement" %>
 
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<% Server.ScriptTimeout=43200 %>
    <asp:Panel ID="FormPanel" runat="server" BackColor="white">
        <table id="Table1" border="0" cellpadding="1" cellspacing="1" class="cssTable">
            <tr>
                <td align="left" class="cssLabelTitle">
                    <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle">Importar 
                    Proceso V 8.3 - V 9.0</asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="left" valign="middle">
                    <asp:Label ID="lblFileUp" runat="server" Text="Esta tarea requiere que se adjunte un archivo XML de máximo 15 MB de tamaño, si el tamaño es superado comuniquese con el administrador del BPM<br />Le recordamos que este es un proceso demorado por lo cual sugerimos una vez se inicie NO cancelar la operación ni cerrar la página"
                        Style="font-weight: bold; color: #FF0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" valign="middle">
                    <asp:FileUpload ID="fuDocumentation" runat="server" Width="400"  />
                    <asp:Label ID="lblUpload" runat="server" Text=""></asp:Label><asp:Button ID="btnFileUpload"
                        runat="server" Text="Cargar Archivo" />
                </td>
            </tr>
            <tr>
                <td valign="middle">
                    <asp:UpdatePanel ID="upDefault" runat="server">
                        <ContentTemplate>
                            <div style="text-align: center">
                                <br />
                                <asp:Label ID="lblError" runat="server" Text="" Style="font-weight: bold; color: #FF0000"></asp:Label>
                                <asp:Panel ID="pnProcessXML" runat="server">
                                    <asp:TextBox ID="txtPrefix" runat="server">New_</asp:TextBox>
                                    &nbsp;Prefijo
                                    <br />
                                    <asp:CheckBox ID="chkHistory" runat="server" Text="Importar Historial" />
                                    <br />
                                    <asp:CheckBox ID="chkParticipant" runat="server" Text="Importar Participantes" />
                                    <br />
                                    <asp:Button ID="btnOk" runat="server" Text="Procesar Archivo" Enabled="false" />
                                </asp:Panel>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:HiddenField ID="hfProcessXML" runat="server" />
</asp:Content>
