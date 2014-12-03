<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PrenotaHotels.aspx.cs" Inherits="Registrati_PrenotaHotels" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h1 class="TitoloVetrina">&nbsp;Prenotazione alberghi - hotel resevation</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="TblHotel">
        <tr>
            <td>
                <h1 style="text-align:center">Zona - Zone</h1>
                <asp:ListBox ID="ListBoxZ" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBoxZ_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="Zona" DataValueField="Zona" Rows="5"></asp:ListBox>
                <h1></h1>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                    SelectCommand="SELECT DISTINCT [Zona] FROM [Hotels] ORDER BY [Zona]">

                </asp:SqlDataSource>
            </td>
            <td>
                <h1 >Stars</h1>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" DataSourceID="SqlDataSource2" DataTextField="Categoria" DataValueField="Categoria" RepeatDirection="Horizontal"></asp:RadioButtonList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [Categoria] FROM [Hotels] WHERE ([Zona] = @Zona)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListBoxZ" Name="Zona" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </td>
        </tr>
    </table>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" OnItemCommand="ListView1_ItemCommand" DataSourceID="SqlDataSource3">
        <AlternatingItemTemplate>
            <tr >
                <td>
                    <asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server">Seleziona</asp:LinkButton>
                </td>
                <td>
                    <asp:Label ID="ZonaLabel" runat="server" Text='<%# Bind("Zona") %>' />
                </td>
                <td>
                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Bind("Categoria") %>' />
                </td>
                <td>
                    <asp:Label ID="TipologiaLabel" runat="server" Text='<%# Bind("Tipologia") %>' />
                </td>
                <td style="text-align:right">
                    <asp:Label ID="PrezzoLabel" runat="server" Text='<%# Bind("Prezzo", "{0:C}") %>' />
                </td>
           </tr>
        </AlternatingItemTemplate>
        <ItemTemplate>
            <tr >
                <td>
                    <asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server">Seleziona</asp:LinkButton>
                </td>
                <td>
                    <asp:Label ID="ZonaLabel" runat="server" Text='<%# Bind("Zona") %>' />
                </td>
                <td>
                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Bind("Categoria") %>' />
                </td>
                <td>
                    <asp:Label ID="TipologiaLabel" runat="server" Text='<%# Bind("Tipologia") %>' />
                </td>
                <td style="text-align:right">
                    <asp:Label ID="PrezzoLabel" runat="server" Text='<%# Bind("Prezzo", "{0:C}") %>' />
                </td>
           </tr>
        </ItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td></td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <table class="TblHotel" runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">Zona - Zone</th>
                                <th runat="server">Categoria - Stars</th>
                                <th runat="server">Tipologia - Type</th>
                                <th runat="server">Prezzo - Price</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""><hr /></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#030303; color:#faf7f7">
                <td>
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
                    <asp:Label ID="PrezzoLabel" runat="server" Text='<%# Eval("Prezzo", "{0:C}") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Hotels] WHERE (([Zona] = @Zona) AND ([Categoria] = @Categoria))">
        <SelectParameters>
            <asp:ControlParameter ControlID="ListBoxZ" Name="Zona" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="RadioButtonList1" Name="Categoria" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Panel ID="PanelInvio" CssClass="PanelPrenotaHotel" runat="server" Visible="false">
        <h1 class="TitoloVetrina">La tua prenotazione - Your reservation</h1>
        <asp:Label ID="Label1" runat="server" ></asp:Label><br /><br /><span style="color:red"> * </span>  campi obbligatori<br /><br />
        <asp:Label ID="lblNome" runat="server" Text="Nome e Cognome - Name and Surname" Font-Italic="True"></asp:Label><br />
        <asp:TextBox ID="TextBoxNome" runat="server"></asp:TextBox><asp:Label ID="lblNomeEr" ForeColor="#ff0000" runat="server"></asp:Label><br />
<%-- data di arrivo--%>
        <asp:Label ID="LabelDataArrivo" runat="server" Text="Data di arrivo - Arrival  date" Font-Italic="True"></asp:Label><br />
        <asp:TextBox ID="TextBoxDataArrivo" runat="server"></asp:TextBox>
        <asp:Label ID="lblDataArrivoEr" ForeColor="#ff0000" runat="server"></asp:Label><br />
<%-- data di partenza--%>
        <asp:Label ID="LabelDataPartenza" runat="server" Text="Data di partenza - Departure date" Font-Italic="True"></asp:Label><br />
        <asp:TextBox ID="TextBoxDataPartenza" runat="server"></asp:TextBox><asp:Label ID="lblDataPartenzaEr" ForeColor="#ff0000" runat="server"></asp:Label><br />
        
        <asp:Label ID="lblNotti" runat="server" Text="Numero notti"></asp:Label><br />
        <asp:TextBox ID="txtNotti" runat="server" Width="69px"></asp:TextBox><br />

        <asp:Label ID="LabelDiete" runat="server" Text="Diete speciali (celiachia, allergie, ecc). - Dietary restrictions (e.g. Celiac disease, allergies, etc.)" Font-Italic="True"></asp:Label><br />
        <asp:TextBox ID="TextBoxDiete" runat="server" Width="370px" ></asp:TextBox><br />
        <asp:Label ID="LabelEs" runat="server" Text="Altre esigenze paricolari - Other specific needs" Font-Italic="True"></asp:Label><br />
        <asp:TextBox ID="TextBoxEs" runat="server" Width="370px" ></asp:TextBox><hr />

<%--- persone ---%>
        <h3> Persona 1 - Person 1</h3>
        <asp:Label ID="lblNP1" runat="server" Text="Nome e cognome - Name and Surname"></asp:Label><br />
        <asp:TextBox ID="txtNP1" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblDP1" runat="server" Text="Data di nascita - date of birth"></asp:Label><br />
        <asp:TextBox ID="txtDP1" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblCP1" runat="server" Text="N. carta identita/passaporto - n. Identity card or passport number"></asp:Label><br />
        <asp:TextBox ID="txtCP1" runat="server"></asp:TextBox><hr />

        <h3> Persona 2 - Person 2</h3>
        <asp:Label ID="lblNP2" runat="server" Text="Nome e cognome - Name and Surname"></asp:Label><br />
        <asp:TextBox ID="txtNP2" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblDP2" runat="server" Text="Data di nascita - date of birth"></asp:Label><br />
        <asp:TextBox ID="txtDP2" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblCP2" runat="server" Text="N. carta identita/passaporto - n. Identity card or passport number"></asp:Label><br />
        <asp:TextBox ID="txtCP2" runat="server"></asp:TextBox><hr />

        <h3> Persona 3 - Person 3</h3>
        <asp:Label ID="lblNP3" runat="server" Text="Nome e cognome - Name and Surname"></asp:Label><br />
        <asp:TextBox ID="txtNP3" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblDP3" runat="server" Text="Data di nascita - date of birth"></asp:Label><br />
        <asp:TextBox ID="txtDP3" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblCP3" runat="server" Text="N. carta identita/passaporto - n. Identity card or passport number"></asp:Label><br />
        <asp:TextBox ID="txtCP3" runat="server"></asp:TextBox><hr />

        <h3> Persona 4 - Person 4</h3>
        <asp:Label ID="lblNP4" runat="server" Text="Nome e cognome - Name and Surname"></asp:Label><br />
        <asp:TextBox ID="txtNP4" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblDP4" runat="server" Text="Data di nascita - date of birth"></asp:Label><br />
        <asp:TextBox ID="txtDP4" runat="server"></asp:TextBox><br />
        <asp:Label ID="lblCP4" runat="server" Text="N. carta identita/passaporto - n. Identity card or passport number"></asp:Label><br />
        <asp:TextBox ID="txtCP4" runat="server"></asp:TextBox><hr />


        <asp:Label ID="lblNote" runat="server" Text="Note - Notes" Font-Italic="True"></asp:Label><br />
        <asp:TextBox ID="TextBoxNote" runat="server" TextMode="MultiLine" Height="161px" Width="370px" ></asp:TextBox>
        <br />
        <asp:Button ID="btnInvia" runat="server" Text="Invia - Send" OnClick="Invia_Click" />
    </asp:Panel>
</asp:Content>

