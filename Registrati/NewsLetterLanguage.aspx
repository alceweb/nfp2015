<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NewsLetterLanguage.aspx.cs" Inherits="Registrati_NewsLetterLanguage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h2 class="TitoloVetrina">Newsletters NFP2015 Congress</h2>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">                    
   <h2>Lingua ricezione newsletter via mail</h2>

    <asp:ListView ID="ListViewNLL" runat="server" DataKeyNames="UserId" DataSourceID="SqlDataSourceNLL">
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                    <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                </td>
                <td>
                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("[Users].[UserName]") %>' />
                </td>
                <td>
                    <asp:Label ID="EmailLabel1" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceDDL" DataTextField="Codice" DataValueField="Codice" Width="80px" Selectedvalue='<%# Bind("LinguaNL") %>'></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceDDL" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Lingue] ORDER BY [Codice]"></asp:SqlDataSource>
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
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:LinkButton ID="Button1" CommandName="Edit" runat="server" Text="Modifica" />
                </td>
                <td>
                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("[Users].[UserName]") %>' />
                </td>
                <td>
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                </td>
                <td>
                    <img src='<%# "../Images/" + Eval("LinguaNL") + ".jpg" %>' />
                    <asp:Label ID="NewsLetterLanguageLabel1" runat="server" Text='<%# Eval("LinguaNL") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th></th>
                                <th runat="server">User</th>
                                <th runat="server">Mail</th>
                                <th id="Th1" runat="server">Lingua</th>
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
                    <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                </td>
                <td>
                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("Users.UserName") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourceNLL" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT * FROM [Users] 
        Inner Join [Memberships] on [Users].[UserId] = [Memberships].[UserId] 
        Inner Join [Iscritti] on [Users].[UserName] = [Iscritti].[Username]
        WHERE ([Users].[UserName] = @UserName)"
        UpdateCommand="UPDATE [Iscritti] SET [LinguaNL] = @LinguaNL WHERE [UserId] = @UserId">
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="utente" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="LinguaNL" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <hr />
    <h2>Leggi le newsletter nella tua lingua</h2>
    <asp:Repeater ID="lista" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <ul>
                <li>
                           <a href='<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>'><%# (Container.DataItem as string).Substring(Server.MapPath("./Registrati/").Length).Replace("\\", "/") %>
                            </a>
                </li>
            </ul>
        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
</asp:Content>

