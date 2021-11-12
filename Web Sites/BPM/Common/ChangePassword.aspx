<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowError.Master"
    CodeBehind="ChangePassword.aspx.vb" Inherits="BPMWebSite.ChangePassword" Title="Cambio de Contraseña" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td class="cssBkgWorkItem">
                <table style="width: 100%;">
                    <tr>
                        <td colspan="2" align="center">
                            <b>
                                <asp:Label ID="lblTitle" runat="server" CssClass="cssLabelTitle"></asp:Label></b>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 20px">
                            <table align="center" bgcolor="white" border="0" cellpadding="1" cellspacing="1"
                                id="tblChangePassword" runat="server">
                                <tr style="color: #333333">
                                    <td class="cssFormFieldName" style="width: 145px; text-align: left">
                                        Nueva Contraseña
                                    </td>
                                    <td style="width: 373px; text-align: left">
                                        <asp:TextBox ID="txtPassword" runat="server" BackColor="WhiteSmoke" MaxLength="20"
                                            TextMode="Password" Width="225px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword"
                                            Display="Dynamic" ErrorMessage="Dato Requerido" Font-Bold="True"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr style="color: #333333">
                                    <td class="cssFormFieldName" style="width: 145px; text-align: left">
                                        Verificar Contraseña
                                    </td>
                                    <td style="width: 373px; text-align: left">
                                        <asp:TextBox ID="txtCheckPassword" runat="server" MaxLength="20" TextMode="Password"
                                            Width="225px" BackColor="WhiteSmoke"></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                                            ControlToValidate="txtCheckPassword" Display="Dynamic" ErrorMessage="Contraseña No coincide"
                                            Font-Bold="True"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="cssFormFieldName" style="width: 145px">
                                    </td>
                                    <td style="width: 373px; text-align: left;">
                                        <br />
                                        <asp:Button ID="btnSend" runat="server" CssClass="cssButton" Text="Actualizar" />
                                        <asp:Button ID="bntCancel" runat="server" CausesValidation="False" Text="Cancelar" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
