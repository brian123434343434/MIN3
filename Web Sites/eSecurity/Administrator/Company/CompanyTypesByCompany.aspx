<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Company_CompanyTypesByCompany, App_Web__yjwvz_k" theme="SoftManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <table class="style3">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label1" runat="server" 
                    Text="Actualizar Informacion de la Empresa"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label2" runat="server" 
                    Text="Paso 2 de 3 - Seleccione los grupos a los que pertenece la empresa"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label3" runat="server" Text="Categorias"></asp:Label>
            </td>
        </tr>
        <tr style="text-align: center">
            <td>
                <asp:GridView ID="grdCatgorias" runat="server" AutoGenerateColumns="False">
                    <Columns>      
                        <asp:TemplateField HeaderText="Tipo de Categoria" >
				            <ItemTemplate>
				                <asp:Label ID="lblCategoryName" runat="server" Text=""></asp:Label>
				                <asp:Label ID="lblIdCompanyTypeCategory" runat="server" Text="" Visible="false"></asp:Label>
				            </ItemTemplate>
				            <ItemStyle HorizontalAlign="left" VerticalAlign="Top" />
				        </asp:TemplateField>                  
                        <asp:TemplateField HeaderText="Tipo de Empresa">
                            <ItemTemplate>
                                <asp:CheckBox ID="chkTipoEmpresa" runat="server" />
                                <asp:Label ID="lblIdTipo" runat="server" Visible="false"></asp:Label>
                                <asp:Label ID="lblNombreTipo" runat="server"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" />
                        </asp:TemplateField>
				        
				        
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
            &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="lblError" runat="server" Visible="False"></asp:Label>
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar"/>
            </td>
        </tr>
    </table>
   
</asp:Content>
