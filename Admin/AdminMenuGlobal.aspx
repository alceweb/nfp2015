<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AdminMenuGlobal.aspx.cs" Inherits="Admin_AdminMenuGlobal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="TitoloVetrina">
        Modifica globale voci sottomenu/lingua

    </div>
    <div class="ContentMod">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceMenu" >
        <ItemTemplate>
            <tr class="TrDoppio">
                <td >
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
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
            </tr>
        </ItemTemplate>
        <EditItemTemplate>
            <tr class="Evidenza">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListNav" runat="server" AutoPostBack="true" DataSourceID="SqlDataSourceNav" DataTextField="TxtMenu" SelectedValue='<%# Bind("IdNav") %>' DataValueField="Id"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceNav" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Nav] ORDER BY [TxtMenu]">
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:TextBox ID="TxtSubMenuTextBox" runat="server" Text='<%# Bind("TxtSubMenu") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
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
        InsertCommand="INSERT INTO [Menu] ([IdNav], [TxtSubMenu], [Pubblica]) VALUES (@IdNav, @TxtSubMenu, @Pubblica)" 
        SelectCommand="SELECT * FROM [Menu] Inner Join [Nav] on [Menu].[IdNav] = [Nav].[Id]" 
        UpdateCommand="UPDATE [Menu] SET [IdNav] = @IdNav, [TxtSubMenu] = @TxtSubMenu, [Pubblica] = @Pubblica WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="IdNav" Type="Int32" />
            <asp:Parameter Name="TxtSubMenu" Type="String" />
            <asp:Parameter Name="IdPagina" Type="Int32" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Link" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </div>

</asp:Content>

