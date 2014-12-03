<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AdminMenuIns.aspx.cs" Inherits="Admin_AdminMenuIns" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="TitoloVetrina">
        Aggiungi sottomenu + Titolo e testo pagine

    </div>
    <div class="ContentMod">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceMenu" InsertItemPosition="FirstItem">
        <ItemTemplate>
            <tr class="TrDoppio">
                <td >
                </td>
                <td>
                    <asp:Label ID="IdTxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                </td>
                <td>
                    <asp:Label ID="TxtSubMenuLabel" runat="server" Text='<%# Eval("TxtSubMenu") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                </td>
                 <td>
                    <asp:Label ID="TitoloPaginaLabel" Width="300" runat="server" Text='<%# Eval("TitoloPagina") %>' TextMode="MultiLine" />
                </td>
               <td>
                   <asp:Label ID="TestoPaginaLabel" runat="server" Text='<%# Eval("TestoPagina") %>' Visible="false"/>
                   <asp:LinkButton ID="Button1" CommandName="select" runat="server" Text="Vedi testo pagina" />
                </td>
            </tr>
        </ItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr  class="ContenteIns">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListNav" runat="server" AutoPostBack="true" DataSourceID="SqlDataSourceNav" DataTextField="TxtMenu" SelectedValue='<%# Bind("IdNav") %>' DataValueField="Id"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceNav" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Nav] WHERE ([IdLingua] = @IdLingua) ORDER BY [TxtMenu]">
            <SelectParameters>
                <asp:ControlParameter ControlID="ListView2" Name="IdLingua" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:TextBox ID="TxtSubMenuTextBox" runat="server" Text='<%# Bind("TxtSubMenu") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                </td>
                <td colspan="2">
                    <table class="TableModPagina" >
                        <tr>
                            <td >
                                <asp:TextBox Width="100%" ID="TitoloPaginaTextBox" runat="server" Text='<%# Bind("TitoloPagina") %>' />

                            </td>
                        </tr>
                        <tr>
                            <td>
	                                <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("TestoPagina") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                        </tr>
                    </table>
                </td>
            </tr>
        </InsertItemTemplate>
        <SelectedItemTemplate>
            <tr class="TrDoppioSel">
                <td>
                </td>
                <td>
                    <asp:Label ID="IdNavLabel" runat="server" Text='<%# Eval("IdNav") %>' />
                </td>
                <td>
                    <asp:Label ID="TxtSubMenuLabel" runat="server" Text='<%# Eval("TxtSubMenu") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="TitoloPaginaLabel" runat="server" Text='<%# Eval("TitoloPagina") %>' />
                </td>
                <td>
                    <asp:Label ID="TestoPaginaLabel" runat="server" Text='<%# Eval("TestoPagina") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
        <LayoutTemplate>
            <table id="Table2" class="TableGen" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td1" runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="Tr2" runat="server" style="">
                                <th id="Th1" runat="server"></th>
                                <th id="Th2" runat="server">Menu</th>
                                <th id="Th3" runat="server">Testo sottomenu</th>
                                <th id="Th4" runat="server">Pub</th>
                                <th id="Th5" runat="server">Titolo Pagina</th>
                                <th id="Th6" runat="server">Testo Pagina</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr3" runat="server">
                    <td id="Td2" runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>    
    <asp:SqlDataSource ID="SqlDataSourceMenu" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        DeleteCommand="DELETE FROM [Menu] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Menu] ([IdNav], [TxtSubMenu], [Pubblica], [TestoPagina], [TitoloPagina]) VALUES (@IdNav, @TxtSubMenu, @Pubblica, @TestoPagina, @TitoloPagina)" 
        SelectCommand="SELECT * FROM [Menu] Inner Join [Nav] on [Menu].[IdNav] = [Nav].[Id] WHERE ([IdLingua] = @IdLingua)" 
        UpdateCommand="UPDATE [Menu] SET [IdNav] = @IdNav, [TxtSubMenu] = @TxtSubMenu, [Pubblica] = @Pubblica, [TestoPagina] = @TestoPagina, [TitoloPagina] = @TitoloPagina WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ListView2" Name="IdLingua" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="IdNav" Type="Int32" />
            <asp:Parameter Name="TxtSubMenu" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="TestoPagina" Type="String" />
            <asp:Parameter Name="TitoloPagina" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IdNav" Type="Int32" />
            <asp:Parameter Name="TxtSubMenu" Type="String" />
            <asp:Parameter Name="IdPagina" Type="Int32" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Link" Type="String" />
            <asp:Parameter Name="TestoPagina" Type="String" />
            <asp:Parameter Name="TitoloPagina" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </div>
</asp:Content>

