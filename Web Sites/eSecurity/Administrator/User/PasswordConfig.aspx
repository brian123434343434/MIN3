<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_User_PasswordConfig, App_Web_z2f_sopw" theme="SoftManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 70%; text-align: left;">
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblConfBehavior" runat="server" Font-Bold="True" 
                        Text="Configurar comportamiento"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblTryNumber" runat="server" Text="Número de intentos fallidos antes de bloquear al usuario."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbTryNumber" runat="server" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTryNumber" runat="server" 
                        ControlToValidate="tbTryNumber" ErrorMessage="Campo obligatorio" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvTryNumber" runat="server" ControlToValidate="tbTryNumber" 
                        ErrorMessage="Valor numérico" Operator="DataTypeCheck" SetFocusOnError="True" 
                        Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblUnblockTime" runat="server" Text="Tiempo de desbloqueo (minutos)."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbUnblockTime" runat="server" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUnblockTime" runat="server" 
                        ControlToValidate="tbUnblockTime" ErrorMessage="Campo obligatorio" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvUnblockTime" runat="server" ControlToValidate="tbUnblockTime" 
                        ErrorMessage="Valor numérico" Operator="DataTypeCheck" SetFocusOnError="True" 
                        Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblNotificationTime" runat="server" Text="Tiempo de aviso para cambiar contraseñas (días)."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbNotificationTime" runat="server" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNotificationTime" runat="server" 
                        ControlToValidate="tbNotificationTime" ErrorMessage="Campo obligatorio" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvNotificationTime" runat="server" ControlToValidate="tbNotificationTime" 
                        ErrorMessage="Valor numérico" Operator="DataTypeCheck" SetFocusOnError="True" 
                        Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblRestrictAccess" runat="server" Text="Restringir ingreso a sólo una ubicación en simultáneo "></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="cbRestrictAccess" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblConfComplexity" runat="server" Font-Bold="True" 
                        Text="Configurar complejidad"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblHistoricPasswordNumber" runat="server" Text="Número de contraseñas en el histórico "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbHistoricPasswordNumber" runat="server" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvHistoricPasswordNumber" runat="server" 
                        ControlToValidate="tbHistoricPasswordNumber" ErrorMessage="Campo obligatorio" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvHistoricPasswordNumber" runat="server" ControlToValidate="tbHistoricPasswordNumber" 
                        ErrorMessage="Valor numérico" Operator="DataTypeCheck" SetFocusOnError="True" 
                        Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblRequiredMinLength" runat="server" Text="Longitud mínima requerida"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbRequiredMinLength" runat="server" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvRequiredMinLength" runat="server" 
                        ControlToValidate="tbRequiredMinLength" ErrorMessage="Campo obligatorio" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvRequiredMinLength" runat="server" ControlToValidate="tbRequiredMinLength" 
                        ErrorMessage="Valor numérico" Operator="DataTypeCheck" SetFocusOnError="True" 
                        Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblRequiredMaxLength" runat="server" Text="Longitud máxima requerida"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbRequiredMaxLength" runat="server" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvRequiredMaxLength" runat="server" 
                        ControlToValidate="tbRequiredMaxLength" ErrorMessage="Campo obligatorio" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvRequiredMaxLength" runat="server" ControlToValidate="tbRequiredMaxLength" 
                        ErrorMessage="Valor numérico" Operator="DataTypeCheck" SetFocusOnError="True" 
                        Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblPasswordComplexity" runat="server" Font-Bold="True" 
                        Text="Complejidad de contraseñas"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblUpperCaseMandatory" runat="server" Text="Obligar mayúsculas"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="cbUpperCaseMandatory" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblLowerCaseMandatory" runat="server" Text="Obligar minúsculas"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="cbLowerCaseMandatory" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblNumberMandatory" runat="server" Text="Obligar número"></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="cbNumberMandatory" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblNote" runat="server" 
                        
                        Text="Nota: Para aplicar la configuración mínima de complejidad en contraseñas, debe tener dos (2) criterios de obligación mínimos seleccionados" 
                        Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <asp:Button ID="btnAccept" runat="server" Text="Aceptar" />
&nbsp;<asp:Button ID="btnCancel" runat="server" Text="Cancelar" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

