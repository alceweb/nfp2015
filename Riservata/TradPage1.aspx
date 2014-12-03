<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TradPage1.aspx.cs" Inherits="Riservata_TradPage1" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <p class="TitoloVetrina">
            Traduzione pagine
        </p>
        <table >
            <tr>
                <td>
                            <a id="A1" runat="server" href="~/Index.aspx">Home</a>
                    <ul>
                        <li>
                            <a id="A2" runat="server" href="~/Riservata/TradNav.aspx">Menu</a>
                        </li>
                        <li>
                            <a id="A3" runat="server" href="~/Riservata/TradMenu.aspx">sottomenu </a>
                        </li>
                        <li>
                            <a class="Bold" id="A6" runat="server">Titolo e contenuto pagine</a>
                        </li>
                    </ul>

                </td>
                <td style="border-left-style: solid; border-width: thin; border-color: #808080">
                    <asp:Label CssClass="TitoloVetrina" ID="Label1" runat="server"></asp:Label>
                    <asp:ListView ID="ListViewNav" runat="server" OnSelectedIndexChanged="ListViewNav_SelectedIndexChanged" DataKeyNames="Id" DataSourceID="SqlDataSourceNav" SelectedIndex="0">
                        <EmptyDataTemplate>
                            <table style="">
                                <tr>
                                    <td>
                                        <a id="A4" runat="server" href="~/Index.aspx">Torna al sito</a>                                    </td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <ItemTemplate>
                            <td id="Td5" runat="server" style="">
                                <asp:LinkButton ID="ButtonNav" runat="server" CommandName="Select" Text='<%# Eval("TxtMenu") %>' />
                                <br />
                            </td>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table id="Table2" runat="server" border="0" style="">
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </table>
                            <div style="">
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <td id="Td6" runat="server" style="">
                                <asp:Label ID="TxtMenuLabel" CssClass="NavSel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                                <br />
                            </td>

                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSourceNav" runat="server"
                        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                        SelectCommand="SELECT * FROM [Nav] WHERE ([IdLingua] = @IdLingua)">
                        <SelectParameters>
                            <asp:SessionParameter Name="IdLingua" SessionField="IdLingua" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:ListView ID="ListViewMenu" EnablePersistedSelection="true" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceMenu" SelectedIndex="-1">
                        <EmptyDataTemplate>
                            <table style="">
                                <tr>
                                    <td></td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <ItemTemplate>
                            <td id="Td7" runat="server">
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select" Style="text-decoration: none;"><%# Eval("TxtSubMenu") %></asp:LinkButton>
                            </td>
                            <td></td>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table id="Table3" runat="server" border="0" style="">
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server">
                                        <br />
                                    </td>
                                </tr>
                            </table>
                            <div style="">
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <td id="Td8" runat="server">
                                <asp:Label ID="TxtSubMenuLabel" Style="font-style: italic; color: #6d4233; text-decoration: none; font-weight: bold" runat="server" Text='<%# Eval("TxtSubMenu") %>' />
                            </td>
                            <td>|
                            </td>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSourceMenu" runat="server"
                        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                        SelectCommand="SELECT * FROM [Menu] Inner Join [Nav] on [Menu].[IdNav] = [Nav].[Id] WHERE ([IdNav] = @IdNav) ORDER BY [Menu].[Id]">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ListViewNav" Name="IdNav" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:ListView ID="ListViewContent" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceContent">
                        <ItemTemplate>
                            <hr />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                            <br />
                            <br />
                            <br />
                            <strong>Titolo:</strong>
                            <asp:Label ID="TitoloPaginaLabel" runat="server" Text='<%# Eval("TitoloPagina") %>' />
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="TestoPaginaLabel" runat="server" Text='<%# Eval("TestoPagina") %>' />
                            <br />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <hr />
                            Titolo:
                            <asp:TextBox ID="TitoloPaginaTextBox" runat="server" Text='<%# Bind("TitoloPagina") %>' />
                            <br />
                            <br />
                            <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("TestoPagina") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                            <br />
                            <br />
                            </span>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <span>Non è stato restituito alcun dato.</span>
                        </EmptyDataTemplate>
                        <LayoutTemplate>
                            <div id="itemPlaceholderContainer" runat="server" style="">
                                <span runat="server" id="itemPlaceholder" />
                            </div>
                            <div style="">
                            </div>
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSourceContent" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                        DeleteCommand="DELETE FROM [Menu] WHERE [Id] = @Id"
                        SelectCommand="SELECT * FROM [Menu] WHERE ([Id] = @Id)"
                        UpdateCommand="UPDATE [Menu] SET [TestoPagina] = @TestoPagina, [TitoloPagina] = @TitoloPagina WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ListViewMenu" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="TestoPagina" Type="String" />
                            <asp:Parameter Name="TitoloPagina" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    <div>
    </div>
    </form>
</body>
</html>
