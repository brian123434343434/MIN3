<%@ page title="" language="VB" masterpagefile="~/Master/mpClient.master" autoeventwireup="false" inherits="Public_FormFilesList, App_Web_ggmy1egd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphClient" Runat="Server">    
    
    <div style="width:100%">
        <span style="float:left"><strong>Formulario:</strong> <asp:Literal ID="ltFormName" runat="server"></asp:Literal> </span>
    </div>
    <div style="width:100%">
        <span style="float:left"><strong>Instancia de formulario:</strong> 
            <asp:Literal ID="ltFormInstanceId" runat="server"></asp:Literal></span>    
    </div>
    <div style="width:100%">
        <span style="float:left"><strong>Nota: No se incluyen archivos de formularios hijos.</strong> 
        </span>    
    </div>
    
    <div style="float:left; margin-top:15px">
        <asp:GridView ID="fileGrid" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="Capítulo" DataField="chapterName" />
            <asp:BoundField HeaderText="Id. de campo" DataField="fieldId" />
            <asp:BoundField HeaderText="Código de campo" DataField="fieldCode" />
            <asp:BoundField HeaderText="Campo" DataField="fieldName" />
            <asp:HyperLinkField HeaderText="Archivo" DataNavigateUrlFields="fileUrl" DataTextField="fileName" DataNavigateUrlFormatString="{0}"  />
        </Columns>
        <EmptyDataTemplate>
            <span>El formulario no contiene archivos.</span>
        </EmptyDataTemplate>
        </asp:GridView>
    </div>
</asp:Content>

