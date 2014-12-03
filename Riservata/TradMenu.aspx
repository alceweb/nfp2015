<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TradMenu.aspx.cs" Inherits="Riservata_TradMenu" %>

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
            Traduzione sottomenu
        </p>
        <table >
            <tr>
                <td >
                            <a runat="server" href="~/Index.aspx">Home</a>
                    <ul>
                        <li>
                            <a runat="server" href="~/Riservata/TradNav.aspx">Menu</a>
                        </li>
                        <li>
                            <a class="Bold" runat="server" >sottomenu </a>
                        </li>
                        <li>
                            <a runat="server" href="~/Riservata/TradPage1.aspx">Titolo e contenuto pagine</a>
                        </li>
                    </ul>

                </td>
                <td style="border-left-style: solid; border-width: thin; border-color: #808080">
                    <asp:Label CssClass="TitoloVetrina" ID="Label1" runat="server" ></asp:Label>
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
                    <asp:ListView ID="ListViewMenu1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceMenu1">
                        <ItemTemplate>
                            <td runat="server" style="">
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text='<%# Eval("TxtSubMenu") %>' />
                            </td>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <td runat="server" style="">
                                <asp:TextBox ID="TxtSubMenuTextBox" runat="server" Text='<%# Bind("TxtSubMenu") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                            </td>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table style="">
                                <tr>
                                    <td>Non è stato restituito alcun dato.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <LayoutTemplate>
                            <table runat="server" border="0" style="">
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </table>
                            <div style="">
                            </div>
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSourceMenu1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
                        SelectCommand="SELECT * FROM [Menu] WHERE ([IdNav] = @IdNav)" 
                        UpdateCommand="UPDATE [Menu] SET [TxtSubMenu] = @TxtSubMenu WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ListViewNav" Name="IdNav" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="TxtSubMenu" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
