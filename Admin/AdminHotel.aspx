<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AdminHotel.aspx.cs" Inherits="Admin_AdminHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="TitoloVetrina">Modifica disponibilità prezzi camere hotels</h1>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="FirstItem">
        <ItemTemplate>
            <tr style="border-color:black; border-bottom-style:solid; border-width:thin">
                <td>
                    <asp:LinkButton ID="DeleteButton"  runat="server" CommandName="Delete" OnClientClick="return confirm('Vuoi veramente cancellare questo record? ');"  Text="Elimina" />
                    <asp:LinkButton ID="EditButton"   runat="server" CommandName="Edit" Text="Modifica" ToolTip="Modifica il record" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="ZonaLabel" runat="server" Text='<%# Eval("Zona") %>' />
                </td>
                <td>
                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                </td>
                <td style="text-align:right">
                    <asp:Label ID="TipologiaLabel" runat="server" Text='<%# Eval("Tipologia") %>' />
                </td>
                <td style="text-align:right">
                    <asp:Label ID="PrezzoLabel" runat="server" Text='<%# Eval("Prezzo") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#050505; color:#fcfcfc">
                <td>
                    <asp:LinkButton ID="UpdateButton" ForeColor="White" runat="server" CommandName="Update" Text="Aggiorna" />
                    <asp:LinkButton ID="CancelButton" ForeColor="White" runat="server" CommandName="Cancel" Text="Annulla" />
                </td>
                <td>
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ZonaTextBox" runat="server" Text='<%# Bind("Zona") %>' />
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListCategoria" SelectedValue='<%# Bind("Categoria") %>' runat="server" AutoPostBack="True">
                        <asp:ListItem>*</asp:ListItem>
                        <asp:ListItem>**</asp:ListItem>
                        <asp:ListItem>***</asp:ListItem>
                        <asp:ListItem>****</asp:ListItem>
                        <asp:ListItem>Low cost </asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" SelectedValue='<%# Bind("Tipologia") %>' runat="server" AutoPostBack="True">
                        <asp:ListItem>Single room</asp:ListItem>
                        <asp:ListItem>Double room</asp:ListItem>
                        <asp:ListItem>Twin room</asp:ListItem>
                        <asp:ListItem>Triple room</asp:ListItem>
                        <asp:ListItem>Quadruple room</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="PrezzoTextBox" runat="server" Width="40px" Text='<%# Bind("Prezzo") %>' />
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
            <tr style="background-color:#6d4233">
                <td>
                    <asp:LinkButton ID="InsertButton" ForeColor="#dedac7" runat="server" CommandName="Insert" Text="Inserisci" />
                    <asp:LinkButton ID="CancelButton" ForeColor="#dedac7" runat="server" CommandName="Cancel" Text="Annulla" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="ZonaTextBox" runat="server" Text='<%# Bind("Zona") %>' />
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListCategoria" SelectedValue='<%# Bind("Categoria") %>' runat="server" AutoPostBack="True">
                        <asp:ListItem>*</asp:ListItem>
                        <asp:ListItem>**</asp:ListItem>
                        <asp:ListItem>***</asp:ListItem>
                        <asp:ListItem>****</asp:ListItem>
                        <asp:ListItem>low cost </asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" SelectedValue='<%# Bind("Tipologia") %>' runat="server" AutoPostBack="True">
                        <asp:ListItem>Single room</asp:ListItem>
                        <asp:ListItem>Double room</asp:ListItem>
                        <asp:ListItem>Twin room</asp:ListItem>
                        <asp:ListItem>Triple room</asp:ListItem>
                        <asp:ListItem>Quadruple room</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="PrezzoTextBox" runat="server" Text='<%# Bind("Prezzo") %>' />
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
                                <th runat="server">Zona</th>
                                <th runat="server">Categoria</th>
                                <th runat="server">Tipologia</th>
                                <th runat="server" >Prezzo</th>
                            </tr>
                            <tr id="itemPlaceholder" style="" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Image" ShowFirstPageButton="True" ShowLastPageButton="True" FirstPageText="Inizio" LastPageText="Fine" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="ZonaLabel" runat="server" Text='<%# Eval("Zona") %>' />
                </td>
                <td>
                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                </td>
                <td>
                    <asp:Label ID="TipologiaLabel" runat="server" Text='<%# Eval("Tipologia") %>' />
                </td>
                <td>
                    <asp:Label ID="PrezzoLabel" runat="server" Text='<%# Eval("Prezzo") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="DisponibileCheckBox" runat="server" Checked='<%# Eval("Disponibile") %>' Enabled="false" />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Hotels] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Hotels] ([Zona], [Categoria], [Tipologia], [Prezzo], [Disponibile]) VALUES (@Zona, @Categoria, @Tipologia, @Prezzo, @Disponibile)" SelectCommand="SELECT * FROM [Hotels] ORDER BY [Zona], [Categoria]" UpdateCommand="UPDATE [Hotels] SET [Zona] = @Zona, [Categoria] = @Categoria, [Tipologia] = @Tipologia, [Prezzo] = @Prezzo, [Disponibile] = @Disponibile WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Zona" Type="String" />
            <asp:Parameter Name="Categoria" Type="String" />
            <asp:Parameter Name="Tipologia" Type="String" />
            <asp:Parameter Name="Prezzo" Type="String" />
            <asp:Parameter Name="Disponibile" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Zona" Type="String" />
            <asp:Parameter Name="Categoria" Type="String" />
            <asp:Parameter Name="Tipologia" Type="String" />
            <asp:Parameter Name="Prezzo" Type="String" />
            <asp:Parameter Name="Disponibile" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

