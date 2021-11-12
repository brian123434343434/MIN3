<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPages/WorkFlowUser.Master"
    Codebehind="FormInformation.aspx.vb" Inherits="BPMWebSite.FormInformation"
    Title="" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="100%" border="1" cellspacing="0" cellpadding="0" valign="top" height="60">
        <tr>
            <td valign="top">
                <table width="98%" align="center">
                    <tr>
                        <td >
                            <b>
                            Formulario :</b>
                            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>(<asp:Label ID="lblFormID"
                                runat="server" Text=""></asp:Label>)</td>
                    </tr>
                    <tr>
                        <td >
                            <b>Instrucciones de Diligenciamiento</b></td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="lblInstructions" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <b>Politicas relacionadas</b></td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="lblPolicies" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:HiddenField ID="hfId" runat="server" />
                            <asp:HiddenField ID="hfProcessCase" runat="server" />
                            <asp:Button ID="btnSend" runat="server" Text="Acepto las Politicas relacionadas con este Formulario." />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <!--
		<table cellSpacing="0" cellPadding="0" width="98%" border="0" align="center">
		
		<tr><td>
			<hr>
		</td></tr>

		<tr><td class="cssPageTitle">
			
			Digite el Número del Formulario que desea encontrar
		</td></tr>				
		<tr><td class="cssPageTitle">
			
			<FORM action="" method=POST id=frmSearch name=frmSearch>
			<img SRC="../images/SearchForm.Gif" border="0" height="22" width="20">&nbsp;<INPUT type="text" id=text1 name=text1 class=cssButton>
			<INPUT type="button" value="Buscar" id=btnSearch name=btnSearch class=cssButton Language="javascript" OnClick="frmSearch.submit();">
			</FORM>
		</td></tr>
		
		</table>
		-->
</asp:Content>
