<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Nav.aspx.cs" Inherits="Admin_Nav" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="border-style: none none inset none; border-width: thin; border-color: #C0C0C0">
                <td>
                    <asp:LinkButton ID="LinkButton1" CommandName="Edit" runat="server">Modifica</asp:LinkButton>
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="IdLinguaLabel" runat="server" Text='<%# Eval("Lingua") %>' />
                </td>
                <td>
                    <asp:Label ID="TxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                </td>
                <td>
                    <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <ItemTemplate>
            <tr style="border-style: none none inset none; border-width: thin; border-color: #C0C0C0">
                <td>
                    <asp:LinkButton ID="LinkButton1" CommandName="Edit" runat="server">Modifica</asp:LinkButton>
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="IdLinguaLabel" runat="server" Text='<%# Eval("Lingua") %>' />
                </td>
                <td>
                    <asp:Label ID="TxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                </td>
                <td>
                    <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <EditItemTemplate>
            <tr style="border-style: none none inset none; border-width: thin; border-color: #C0C0C0">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                </td>
                <td>
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceLingue" DataTextField="Lingua" DataValueField="Id" SelectedValue='<%# Bind("IdLingua") %>'></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceLingue" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Lingue] ORDER BY [Lingua]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:TextBox ID="TxtMenuTextBox" runat="server" Text='<%# Bind("TxtMenu") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="IdLinguaTextBox" runat="server" Text='<%# Bind("IdLingua") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TxtMenuTextBox" runat="server" Text='<%# Bind("TxtMenu") %>' />
                </td>
                <td>
                    <asp:TextBox ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">Id</th>
                                <th runat="server">IdLingua</th>
                                <th runat="server">TxtMenu</th>
                                <th runat="server">Link</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="IdLinguaLabel" runat="server" Text='<%# Eval("IdLingua") %>' />
                </td>
                <td>
                    <asp:Label ID="TxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                </td>
                <td>
                    <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
    DeleteCommand="DELETE FROM [Nav] WHERE [Id] = @Id"
    InsertCommand="INSERT INTO [Nav] ([IdLingua], [TxtMenu], [Link]) VALUES (@IdLingua, @TxtMenu, @Link)"
    SelectCommand="SELECT *, 
        Lingue.Lingua 
        FROM [Nav] Inner Join Lingue on [Nav].[IdLingua] = [Lingue].[Id] ORDER BY [TxtMenu]"
    UpdateCommand="UPDATE [Nav] SET [IdLingua] = @IdLingua, [TxtMenu] = @TxtMenu, [Link] = @Link WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="IdLingua" Type="Int32" />
        <asp:Parameter Name="TxtMenu" Type="String" />
        <asp:Parameter Name="Link" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="IdLingua" Type="Int32" />
        <asp:Parameter Name="TxtMenu" Type="String" />
        <asp:Parameter Name="Link" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

