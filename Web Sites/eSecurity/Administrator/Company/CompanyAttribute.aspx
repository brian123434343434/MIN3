<%@ page title="" language="VB" masterpagefile="~/MasterPages/Security.master" autoeventwireup="false" inherits="Administrator_Company_CompanyAttribute, App_Web__yjwvz_k" theme="SoftManagement" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <table class="style1">
        <tr style="text-align: center">
            <td>

    <asp:GridView ID="grdAtributosCompania" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="IdAttributeCategory" HeaderText="IdAttributeCategory" visible="false"/>
            <asp:TemplateField HeaderText="Atributo">
                <ItemTemplate>
                    <asp:Label ID="lblAttName" runat="server"></asp:Label>
                </ItemTemplate>
            <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:BoundField DataField="Id" HeaderText="Codigo" visible="false"/>
            <asp:BoundField DataField="Name" HeaderText="Nombre" >
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Valores">
                <ItemTemplate>
                    <asp:CheckBox ID="chkBValue" runat="server" Visible="false" />
                    <asp:TextBox ID="txtDValue" runat="server" Height="20px" Width="90px" Visible="false"></asp:TextBox>
                    <cc1:calendarextender id="dateValue" runat="server" enabled="True" format="dd/MM/yyyy" targetcontrolid="txtDValue" PopupButtonID="">
                    </cc1:calendarextender>
                    <asp:Label ID="lblUValue" runat="server" Visible="false"></asp:Label>
                    <asp:TextBox ID="txtSValue" runat="server" Visible="false"></asp:TextBox>
                    <asp:TextBox ID="txtNValue" runat="server" Visible="false"></asp:TextBox>
                    <cc1:FilteredTextBoxExtender ID="ValidatorNValue" runat="server" FilterType="Custom, Numbers" TargetControlID="txtNValue" ValidChars=",." />
                    <asp:DropDownList ID="ddlValue" runat="server" Visible="false" >
                    </asp:DropDownList>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />
                <br />
                <asp:Label ID="lblError" runat="server" ForeColor="Red" Text="Error" 
                    Visible="False"></asp:Label>
            </td>
            
        </tr>
    </table>
 </asp:Content>
