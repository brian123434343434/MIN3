<%@ Page Language="VB" MasterPageFile="~/Master/mpAdmin.master" AutoEventWireup="false"
    CodeFile="default.aspx.vb" Inherits="Security_Default" Title="VITAL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" runat="Server">
    <asp:Label ID="Token" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="lblWelcome" runat="server" Width="100%" CssClass="cssLabelForm" 
		Text="Usted se encuenta en la p�gina principal del Sistema VITAL. Si desea Realizar un tr�mite, 
		escoja la opci�n 'Iniciar Tr�mite' y seleccione el tr�mite deseado, para llenar el formulario de solicitud. Si ya tiene tr�mites en proceso
		y desea consultar las actividades pendientes o ejecutarlas, seleccione la opci�n 'Tareas' y luego 'Mis Tareas'. Puede ver la 
		lista de sus tr�mites en proceso a trav�s de la opci�n 'Mis Tr�mites', la lista de sus notificaciones en la opci�n 'Notificaciones' y para 
		Realizar Quejas o Denuncias o Consultar, Diligenciar formulario RUA seleccione la opci�n correcta en 'Otras Actividades' "></asp:Label>
    <br />
</asp:Content>
