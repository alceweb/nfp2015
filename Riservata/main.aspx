<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="Riservata_main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>NFP2015 Gestione sito</title>
    <link href="../Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <p class="TitoloVetrina">
            Traduzione sito
        </p>
            <a class="a" id="A1" runat="server" href="~/Index.aspx">Home</a>
<%--Sezione menu e sotto menu menu e sotto menu--%>
        <%--        scelta lingua --%>
                 <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" GroupItemCount="6" OnSelectedIndexChanged="ListView2_SelectedIndexChanged" >
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <ItemTemplate>
                        <td id="Td1" runat="server" style="">
                            <asp:ImageButton ID="ImageButton1" CssClass="ImgLingua" CommandName="Select" ImageUrl='<%# "../Images/" + Eval("Id") + ".jpg" %>'  runat="server" />
                            <br />
                            <asp:Label ID="Label1" CssClass="LabelLingua" runat="server" Text='<%# Eval("Codice") %>'></asp:Label>
                        </td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table id="Table1" runat="server">
                            <tr id="Tr1" runat="server">
                                <td id="Td2" runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr2" runat="server">
                                <td id="Td3" runat="server" style=""></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <td id="Td4" runat="server" style="">
                            <asp:Image ID="Image1" CssClass="ImgLinguaDown" runat="server" ImageUrl='<%# "../Images/" + Eval("Id") + ".jpg" %>' />
                            <br />
                            <asp:Label ID="Label1" CssClass="LabelLingua" runat="server" Text='<%# Eval("Codice") %>'></asp:Label>
                        </td>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [Codice] FROM [Lingue] ORDER BY [Codice]">

                </asp:SqlDataSource>
        <ul>
            <li>
                <a Runat="server" href="~/Riservata/TradNav.aspx">Menu</a>
            </li>
            <li>
                <a runat="server" href="~/Riservata/TradMenu.aspx">Sottomenu </a>
            </li>
            <li>
                <a id="A2" runat="server" href="~/Riservata/TradPag.aspx">Titolo e contenuto pagine</a>
            </li>
            <li>
                <a id="A3" runat="server" href="~/Riservata/NewsLetterAdmin.aspx">Gestione Newsletter</a>
            </li>
        </ul>
        <table>
            <tr>
                <td style="vertical-align: top">
         <%--Modifica menu--%>
       <asp:ListView ID="ListView1" runat="server" DataKeyNames="Pos" DataSourceID="SqlDataSource1" >
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                    </td>
                    <td>
                        <asp:TextBox ID="TxtMenuTextBox" runat="server" Text='<%# Bind("TxtMenu") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>Devi scegliere una lingua!!!</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td>
                        <asp:Label ID="TxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server">Sotto menu</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">Menu</th>
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
                <tr style="font-weight: bold; font-style: italic; background-color: #94CCE1;">
                    <td>
<%--                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />--%>
                    </td>
                    <td>
                        <asp:Label ID="TxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                    </td>
                    <td>

                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            SelectCommand="SELECT * FROM [Nav] WHERE ([IdLingua] = @IdLingua)" 
            UpdateCommand="UPDATE [Nav] SET [TxtMenu] = @TxtMenu WHERE [Id] = @Id">
            <SelectParameters>
                <asp:SessionParameter Name="IdLingua" SessionField="IdLinguaSessione" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="TxtMenu" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

                </td>
                <td style="vertical-align:top">
        <%--Modifica sotto menu--%>
        <asp:ListView ID="ListView3" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource3">
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td>
                        <asp:Label ID="TxtSubMenuLabel" runat="server" Text='<%# Eval("TxtSubMenu") %>' />
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton2" CommandName="Select" runat="server">Pagina</asp:LinkButton>

                    </td>
                </tr>
            </ItemTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="IdNavTextBox" runat="server" Text='<%# Bind("IdNav") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TxtSubMenuTextBox" runat="server" Text='<%# Bind("TxtSubMenu") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="IdPaginaTextBox" runat="server" Text='<%# Bind("IdPagina") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                    </td>
                    <td>
                        <asp:TextBox ID="TxtSubMenuTextBox" runat="server" Text='<%# Bind("TxtSubMenu") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label">Pubblica: </asp:Label>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #000000; color: #FFFFFF;">
                    <td></td>
                    <td>
                        <asp:Label ID="TxtSubMenuLabel" runat="server" Text='<%# Eval("TxtSubMenu") %>' />
                    </td>
                    <td></td>
                </tr>
            </SelectedItemTemplate>
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
                        <td runat="server" style="background-color: #94CCE1; vertical-align:top" >
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr >
                                    <th runat="server">Sottomenu da tradurre</th>
                                </tr>
                                <tr id="itemPlaceholder" >
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource3" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            DeleteCommand="DELETE FROM [Menu] WHERE [Id] = @Id" 
            InsertCommand="INSERT INTO [Menu] ([IdNav], [TxtSubMenu], [IdPagina], [Pubblica], [Link]) VALUES (@IdNav, @TxtSubMenu, @IdPagina, @Pubblica, @Link)" 
            SelectCommand="SELECT * FROM [Menu] WHERE ([IdNav] = @IdNav) ORDER BY [IdPagina]" 
            UpdateCommand="UPDATE [Menu] SET [TxtSubMenu] = @TxtSubMenu WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IdNav" Type="Int32" />
                <asp:Parameter Name="TxtSubMenu" Type="String" />
                <asp:Parameter Name="IdPagina" Type="Int32" />
                <asp:Parameter Name="Pubblica" Type="Boolean" />
                <asp:Parameter Name="Link" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ListView1" Name="IdNav" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="TxtSubMenu" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

                </td>
                <td style="vertical-align:top">
         <asp:ListView ID="ListViewIng" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource4">
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="TxtSubMenuLabel" runat="server" Text='<%# Eval("TxtSubMenu") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table id="Table3" runat="server">
                    <tr id="Tr3" runat="server">
                        <td id="Td5" runat="server" style="border: thin solid #0000FF; vertical-align:top" >
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr >
                                    <th id="Th1" runat="server">Menu originale Inglese</th>
                                </tr>
                                <tr id="itemPlaceholder" >
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr4" runat="server">
                        <td id="Td6" runat="server" style=""></td>
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
                        <asp:Label ID="IdNavLabel" runat="server" Text='<%# Eval("IdNav") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TxtSubMenuLabel" runat="server" Text='<%# Eval("TxtSubMenu") %>' />
                    </td>
                    <td>
                        <asp:Label ID="IdPaginaLabel" runat="server" Text='<%# Eval("IdPagina") %>' />
                    </td>
                    <td>
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                    </td>
                    <td>
                        <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource4" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            DeleteCommand="DELETE FROM [Menu] WHERE [Id] = @Id" 
            InsertCommand="INSERT INTO [Menu] ([IdNav], [TxtSubMenu], [IdPagina], [Pubblica], [Link]) VALUES (@IdNav, @TxtSubMenu, @IdPagina, @Pubblica, @Link)" 
            SelectCommand="SELECT * FROM [Menu] WHERE ([IdNav] = @IdNav) ORDER BY [TxtSubMenu]" 
            UpdateCommand="UPDATE [Menu] SET [TxtSubMenu] = @TxtSubMenu, [Pubblica] = @Pubblica, WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IdNav" Type="Int32" />
                <asp:Parameter Name="TxtSubMenu" Type="String" />
                <asp:Parameter Name="IdPagina" Type="Int32" />
                <asp:Parameter Name="Pubblica" Type="Boolean" />
                <asp:Parameter Name="Link" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ListView1" Name="IdNav" PropertyName="SelectedValue" Type="Int32" />
                <asp:Parameter Name="Lingua" DefaultValue="2" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="IdNav" Type="Int32" />
                <asp:Parameter Name="TxtSubMenu" Type="String" />
                <asp:Parameter Name="IdPagina" Type="Int32" />
                <asp:Parameter Name="Pubblica" Type="Boolean" />
                <asp:Parameter Name="Link" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

               </td>
            </tr>
        </table>
    </form>
</body>
</html>
