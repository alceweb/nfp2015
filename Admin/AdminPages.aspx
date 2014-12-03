<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AdminPages.aspx.cs" Inherits="Admin_AdminPages" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table >
        <tr>
            <td>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" GroupItemCount="1">
                    <AlternatingItemTemplate>
                        <tr>
                        <td id="Td1" runat="server" style="background-color: #B4BDFE">
                            <asp:LinkButton ID="LinkButton2" CommandName="Select" Text='<%# Eval("TxtMenu") %>' runat="server"></asp:LinkButton>
                        <br /></td>

                        </tr>
                    </AlternatingItemTemplate>
                    <ItemTemplate>
                        <tr>
                        <td runat="server" style="">
                            <asp:LinkButton ID="LinkButton2" CommandName="Select" Text='<%# Eval("TxtMenu") %>' runat="server"></asp:LinkButton>
                        <br /></td>

                        </tr>
                    </ItemTemplate>
                    <EmptyItemTemplate>
                        <td runat="server" />
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="groupPlaceholder" runat="server">
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
                        <tr class="TrSel">
                        <td runat="server" >
                            <asp:Label ID="TxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Nav] WHERE ([IdLingua] = @IdLingua)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListView2" Name="IdLingua" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                            <asp:ListView ID="ListViewN" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="Id" GroupItemCount="1">
                                <AlternatingItemTemplate>
                                    <tr>
                                        <td runat="server" style="background-color: #B4BDFE">
                                            <asp:LinkButton ID="LinkButton1" CommandName="Select" Text='<%# Eval("TxtSubMenu") %>' runat="server"></asp:LinkButton>
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td></td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <EmptyItemTemplate>
                                    <td runat="server" />
                                </EmptyItemTemplate>
                                <GroupTemplate>
                                    <tr id="itemPlaceholderContainer" runat="server">
                                        <td id="itemPlaceholder" runat="server"></td>
                                    </tr>
                                </GroupTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td id="Td2" runat="server">
                                            <asp:LinkButton ID="LinkButton1" CommandName="Select" Text='<%# Eval("TxtSubMenu") %>' runat="server"></asp:LinkButton>
                                        </td>

                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                                    <tr id="groupPlaceholder" runat="server">
                                                        <th>
                                                            
                                                        </th>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <tr class="TrSel">
                                        <td runat="server" style="">
                                            <asp:Label ID="TxtSubMenuLabel" runat="server" Text='<%# Eval("TxtSubMenu") %>' />
                                            <br />

                                        </td>

                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Menu] WHERE ([IdNav] = @IdNav)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ListView1" Name="IdNav" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
            <td>
                <asp:ListView ID="ListView3" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource3" GroupItemCount="1">
                    <ItemTemplate>
                        <td runat="server" style="">
                            <asp:Label CssClass="BoldItalic" ID="TitoloPaginaLabel" runat="server" Text='<%# Eval("TitoloPagina") %>' />
                            <br />
                            <asp:Label ID="TestoPaginaLabel" runat="server" Text='<%# Eval("TestoPagina") %>' />
                            <br />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                            <br /></td>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <td runat="server" style="">
	                        TitoloPagina:
                            <asp:TextBox ID="TitoloPaginaTextBox" runat="server" Text='<%# Bind("TitoloPagina") %>' />
                            <br />
                            <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("TestoPagina") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                            <br /></td>
                    </EditItemTemplate>
                    <EmptyItemTemplate>
                        <td runat="server" />
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
                    DeleteCommand="DELETE FROM [Menu] WHERE [Id] = @Id" 
                    InsertCommand="INSERT INTO [Menu] ([IdNav], [TxtSubMenu], [IdPagina], [Pubblica], [Link], [TestoPagina], [TitoloPagina], [TxtSubEng]) VALUES (@IdNav, @TxtSubMenu, @IdPagina, @Pubblica, @Link, @TestoPagina, @TitoloPagina, @TxtSubEng)" 
                    SelectCommand="SELECT * FROM [Menu] WHERE ([Id] = @Id)" 
                    UpdateCommand="UPDATE [Menu] SET [TestoPagina] = @TestoPagina, [TitoloPagina] = @TitoloPagina WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListViewN" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TestoPagina" Type="String" />
                        <asp:Parameter Name="TitoloPagina" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

