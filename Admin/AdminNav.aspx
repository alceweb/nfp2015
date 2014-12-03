<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AdminNav.aspx.cs" Inherits="Admin_AdminNav" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="TitoloVetrina">
        Modifica voci menu

    </div>
    <div class="ContentMod">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceNav" >
            <ItemTemplate>
                <tr class="TrDoppio">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td>
                        <asp:Label ID="IdLinguaLabel" runat="server" Text='<%# Eval("Lingua") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TxtEngLabel" runat="server" Text='<%# Eval("TxtEng") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="PosLabel" runat="server" Text='<%# Eval("Pos") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <EditItemTemplate>
                <tr class="Evidenza" style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                    </td>
                    <td>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtMenuTextBox" runat="server" Text='<%# Bind("TxtMenu") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TxtEngTextBox" runat="server" Text='<%# Bind("TxtEng") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PosTextBox" runat="server" Text='<%# Bind("Pos") %>' />
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
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server">Lingua</th>
                                    <th runat="server">TxtMenu</th>
                                    <th runat="server">TxtEng</th>
                                    <th runat="server">Pubb        </th>
                                    <th id="Th1" runat="server">Posizione</th>
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
                        <asp:Label ID="IdLinguaLabel" runat="server" Text='<%# Eval("IdLingua") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TxtEng" runat="server" Text='<%# Eval("TxtEng") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="LabelPos" runat="server" Checked='<%# Eval("Pos") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSourceNav" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            DeleteCommand="DELETE FROM [Nav] WHERE [Id] = @Id" 
            SelectCommand="SELECT * FROM [Nav] Inner Join [Lingue] on [Lingue].[Id] = [Nav].[IdLingua] WHERE ([IdLingua] = @IdLingua)" 
            UpdateCommand="UPDATE [Nav] SET [TxtMenu] = @TxtMenu, [TxtEng] = @TxtEng, [Pubblica] = @Pubblica, [Pos] = @Pos WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ListView2" Name="IdLingua" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="TxtMenu" Type="String" />
                <asp:Parameter Name="TxtEng" Type="String" />
                <asp:Parameter Name="Pubblica" Type="Boolean" />
                <asp:Parameter Name="Pos" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
   </div>
</asp:Content>

