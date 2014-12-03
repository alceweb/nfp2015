<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TradNav.aspx.cs" Inherits="Riservata_TradNav" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1"  runat="server">
       <p class="TitoloVetrina">
            Traduzione menu
        </p>
        <span class="a">
        </span>
        <table >
            <tr>
                <td>
                <a Runat="server" href="~/Index.aspx">Home</a>
        <ul>
            <li>
                <a class="Bold" Runat="server" >Menu</a>
            </li>
            <li>
                <a runat="server" href="~/Riservata/TradMenu.aspx">sottomenu </a>
            </li>
            <li>
                <a runat="server" href="~/Riservata/TradPage1.aspx">Titolo e contenuto pagine</a>
            </li>
        </ul>
                </td>
                <td style="border-left-style: solid; border-width: thin; border-color: #808080">
                    <asp:Label CssClass="TitoloVetrina" ID="Label1" runat="server"></asp:Label>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id">
                <ItemTemplate>
                    <tr class="TrDoppio">
                        <td>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Traduci" />
                        </td>
                        <td>
                            <asp:Label ID="TxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                        </td>
                         <td style="color: #000; font-style: italic">
                            <asp:Label ID="TxtEngLabel" runat="server" Text='<%# Eval("TxtEng") %>' />
                        </td>
                   </tr>
                </ItemTemplate>
                <EditItemTemplate>
                    <tr class="TrSel">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                        </td>
                        <td>
                            <asp:TextBox ID="TxtMenuTextBox" runat="server" Text='<%# Bind("TxtMenu") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TxtEngLabel" runat="server" Text='<%# Eval("TxtEng") %>' />
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
                                        <th runat="server"></th>
                                        <th id="Th1" runat="server"></th>
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
                    <tr >
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
                        <td >
                            <asp:Label ID="TxtEngLabel" runat="server" Text='<%# Eval("TxtEng") %>' />
                        </td>
                        <td>
                            <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
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
            <asp:SqlDataSource ID="SqlDataSource1"
                runat="server"
                ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                SelectCommand="SELECT * FROM [Nav] WHERE ([IdLingua] = @IdLingua) order by Pos"
                UpdateCommand="UPDATE [Nav] SET [TxtMenu] = @TxtMenu WHERE [Id] = @Id ">
                <SelectParameters>
                    <asp:SessionParameter Name="IdLingua" SessionField="IdLingua" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TxtMenu" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

                </td>
            </tr>
        </table>
    </form>
</body>
</html>
