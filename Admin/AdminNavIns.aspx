<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AdminNavIns.aspx.cs" Inherits="Admin_AdminNavIns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="TitoloVetrina">
        Aggiungi voci menu

    </div>
    <div class="ContentMod">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceNav" InsertItemPosition="FirstItem">
            <ItemTemplate>
                <tr class="TrDoppio">
                    <td>
                    </td>
                    <td>
                        <asp:Label ID="IdLinguaLabel" runat="server" Text='<%# Eval("Lingua") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="PosLabel" runat="server" Text='<%# Eval("Pos") %>' />
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
                <tr class="ContenteIns">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceLingua"  DataTextField="Lingua" SelectedValue='<%# Bind("IdLingua") %>' DataValueField="Id" ></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceLingua" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Lingue] ORDER BY [Lingua]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtMenuTextBox" runat="server" Text='<%# Bind("TxtMenu") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PosTextBox" runat="server" Text='<%# Bind("Pos") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <LayoutTemplate>
                <table id="Table2" runat="server">
                    <tr id="Tr1" runat="server">
                        <td id="Td1" runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="Tr2" runat="server" style="">
                                    <th id="Th1" runat="server"></th>
                                    <th id="Th2" runat="server">Lingua</th>
                                    <th id="Th3" runat="server">Testo Menu</th>
                                    <th id="Th4" runat="server">Pubb        </th>
                                    <th id="Th5" runat="server">Posizione</th>
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
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td>
                        <asp:Label ID="IdLinguaLabel" runat="server" Text='<%# Eval("IdLingua") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="PosLabel" runat="server" Text='<%# Eval("Pos") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSourceNav" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            InsertCommand="INSERT INTO [Nav] ([IdLingua], [TxtMenu], [Pubblica], [Pos]) VALUES (@IdLingua, @TxtMenu, @Pubblica, @Pos)" 
            SelectCommand="SELECT * FROM [Nav] Inner Join [Lingue] on [Lingue].[Id] = [Nav].[IdLingua] WHERE ([IdLingua] = @IdLingua)" 
            UpdateCommand="UPDATE [Nav] SET [IdLingua] = @IdLingua, [TxtMenu] = @TxtMenu, [Pubblica] = @Pubblica, [Pos] = @Pos WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IdLingua" Type="Int32" />
                <asp:Parameter Name="TxtMenu" Type="String" />
                <asp:Parameter Name="Pubblica" Type="Boolean" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ListView2" Name="IdLingua" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="IdLingua" Type="Int32" />
                <asp:Parameter Name="TxtMenu" Type="String" />
                <asp:Parameter Name="Pubblica" Type="Boolean" />
                <asp:Parameter Name="Pos" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
   </div>
</asp:Content>

