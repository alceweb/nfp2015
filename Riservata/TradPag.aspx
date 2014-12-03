<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TradPag.aspx.cs" Inherits="Riservata_TradMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/Site.css" rel="stylesheet" />
</head>
<body >
    <form id="form1" runat="server">
        <p class="TitoloVetrina">
            Traduzione pagine
        </p>
        <table class="TableGen">
            <tr>
                <td>
        <ul>
            <li>
                <a Runat="server" href="~/Index.aspx">Home</a>
            </li>
            <li>
                <a Runat="server" href="~/Riservata/TradNav.aspx">Menu</a>
            </li>
            <li>
                <a runat="server" href="~/Riservata/TradMenu.aspx">sottomenu </a>
            </li>
            <li>
                <a class="Bold" id="A6" runat="server">Titolo e contenuto pagine</a>
            </li>
        </ul>
                </td>
                <td>
<%--        Sezione per traduttori --%>
                    <div class="ContentTra">
                        <hr />
                    </div>
                    <div class="Evidenza">
                        <img class="float-left" src="../Images/orderedList1.png" />Sezione da tradurre</div>
                    <div class="ContentTra">
                    <asp:Label ID="Label1" runat="server" Text="Menu"></asp:Label>
                        <asp:DropDownList ID="DropDownListNav" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceNav" DataTextField="TxtMenu" DataValueField="Id" ></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceNav"
                        runat="server"
                        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                        SelectCommand="SELECT [Id], [TxtMenu] FROM [Nav] WHERE ([Nav].[IdLingua] = @Lingua) ORDER BY [TxtMenu]">
                        <SelectParameters>
                            <asp:SessionParameter Name="Lingua" SessionField="IdLingua" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="Label2" runat="server" Text="Sottomenu"></asp:Label>
                    <asp:DropDownList ID="DropDownListMenu" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceMenu" DataTextField="TxtSubMenu" DataValueField="Id" ></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceMenu" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [TxtSubMenu] FROM [Menu] WHERE ([IdNav] = @IdNav)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownListNav" Name="IdNav" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <hr />
                    <div>
                        <asp:ListView ID="ListViewPag" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourcePag">
                            <EditItemTemplate>
                                <span class="LabelSm" style="">TitoloPagina:
                                <asp:TextBox Width="100%" ID="TitoloPaginaTextBox" runat="server" Text='<%# Bind("TitoloPagina") %>' TextMode="MultiLine" />
                                    <br />
                                    TestoPagina:
                                        <asp:TextBox Width="100%" TextMode="MultiLine" ID="TestoPaginaTextBox" runat="server" Text='<%# Bind("TestoPagina") %>' />
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
                            <ItemTemplate>
                                <span class="TitoloVetrina"><%# Eval("TxTSubMenu") %></span><br />
                                <br />
                                <br />
                                <span class="LabelSm">TitoloPagina:</span>
                                <asp:Label ID="TitoloPaginaLabel" runat="server" Text='<%# Eval("TitoloPagina") %>' />
                                <br />
                                <br />
                                <span class="LabelSm">TestoPagina:</span>
                                <asp:Label ID="TestoPaginaLabel" runat="server" Text='<%# Eval("TestoPagina") %>' />
                                <br />
                                <br />
                                <asp:Button ID="Button1" CommandName="Edit" Text="Modifica" runat="server"></asp:Button>
                                <br />
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div style="">
                                </div>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <span style="">TestoPagina:
                                    <asp:Label ID="TestoPaginaLabel" runat="server" Text='<%# Eval("TestoPagina") %>' />
                                    <br />
                                    TitoloPagina:
                                    <asp:Label ID="TitoloPaginaLabel" runat="server" Text='<%# Eval("TitoloPagina") %>' />
                                    <br />
                                    <br />
                                </span>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSourcePag"
                            runat="server"
                            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                            SelectCommand="SELECT * FROM [Menu] WHERE ([Id] = @Id)"
                            UpdateCommand="UPDATE [Menu] SET [TestoPagina] = @TestoPagina, [TitoloPagina] = @TitoloPagina WHERE [Id] = @Id ">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownListMenu" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="TestoPagina" Type="String" />
                                <asp:Parameter Name="TitoloPagina" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                    </div>
                    </div>
                    <div>
                        <p>

                        </p>
                    </div>
<%--        Sezione in lingua originale--%>
                    <div class="ContentTra">
                        <hr />
                    </div>
                    <div class="Evidenza">
                            <img class="float-left" src="../Images/orderedList2.png" /><img src="../Images/en.png" />Sezione in lingua inglese di riferimento per la traduzione<img src="../Images/en.png" />
                        </div>
                    <div class="ContentEng">
                        <asp:Label ID="Label3" runat="server" Text="Menu"></asp:Label>
                        <asp:DropDownList ID="DropDownListNavEng" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceNavEng" DataTextField="TxtMenu" DataValueField="Id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceNavEng"
                            runat="server"
                            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                            SelectCommand="SELECT [Id], [TxtMenu] FROM [Nav] WHERE ([Nav].[IdLingua] = 2) ORDER BY [TxtMenu]"></asp:SqlDataSource>
                        <asp:Label ID="Label4" runat="server" Text="Sottomenu"></asp:Label>
                        <asp:DropDownList ID="DropDownListMenuEng" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceMenuEng" DataTextField="TxtSubMenu" DataValueField="Id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceMenuEng" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [TxtSubMenu] FROM [Menu] WHERE ([IdNav] = @IdNav)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownListNavEng" Name="IdNav" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <hr />
                        <asp:ListView ID="ListViewMenuPagEng" runat="server" DataSourceID="SqlDataSourcePagEng">
                            <EditItemTemplate>
                                <span style="">TestoPagina:
                <asp:TextBox ID="TestoPaginaTextBox" runat="server" Text='<%# Bind("TestoPagina") %>' />
                                    <br />
                                    TitoloPagina:
                <asp:TextBox ID="TitoloPaginaTextBox" runat="server" Text='<%# Bind("TitoloPagina") %>' />
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
                            <ItemTemplate>
                                <span class="TitoloVetrina"><%# Eval("TxTSubMenu") %></span><br />
                                <br />
                                <span style="">
                                    <span class="LabelSm">TitoloPagina:</span>
                                    <asp:Label ID="TitoloPaginaLabel" runat="server" Text='<%# Eval("TitoloPagina") %>' />
                                    <br />
                                    <br />
                                    <span class="LabelSm">TestoPagina:</span>
                                    <asp:Label ID="TestoPaginaLabel" runat="server" Text='<%# Eval("TestoPagina") %>' />
                                    <br />
                                    <br />
                                </span>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div style="">
                                </div>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <span style="">TestoPagina:
                <asp:Label ID="TestoPaginaLabel" runat="server" Text='<%# Eval("TestoPagina") %>' />
                                    <br />
                                    TitoloPagina:
                <asp:Label ID="TitoloPaginaLabel" runat="server" Text='<%# Eval("TitoloPagina") %>' />
                                    <br />
                                    <br />
                                </span>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSourcePagEng"
                            runat="server"
                            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                            SelectCommand="SELECT [TestoPagina], [TitoloPagina], [TxtSubMenu] FROM [Menu] WHERE ([Id] = @Id)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownListMenuEng" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <hr />
                    </div>

                </td>
            </tr>
        </table>
    </form>
</body>
</html>
