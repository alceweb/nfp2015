<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Iscritti.aspx.cs" Inherits="Registrati_Iscritti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 class="TitoloVetrina">Sezione iscritti al congresso</h2>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
           User <strong><em><%: User.Identity.Name %></em></strong> (<asp:Label CssClass="contact h3" ID="CognomeLabel" runat="server" Text='<%# Eval("Cognome") %>' /> 
            <asp:Label CssClass="contact" ID="NomeLabel" runat="server" Text='<%# Eval("Nome") %>' />)  -  
                    newsletter: 
            <asp:ImageButton ID="EditButton" ImageUrl='<%# "~/Images/l" +  Eval("LinguaNL") + ".jpg"%>'  runat="server" CommandName="Edit" ToolTip="Modifica" ImageAlign="AbsMiddle" />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" Text="Profile"  CommandName="Edit" ></asp:LinkButton>        
            <br /><asp:HyperLink ID="HyperLink1" NavigateUrl="~/Registrati/PrenotaHotels.aspx" runat="server">Prenota hotel</asp:HyperLink>
                    <br /><asp:HyperLink ID="HyperLink2" NavigateUrl="#nogo" runat="server">Download</asp:HyperLink>
            <br />
        </ItemTemplate>
        <EditItemTemplate>
            <table class="TblForm">
                <tr style="border-bottom-style: solid; border-width: thin; border-color: #5B4B3E">
                    <td colspan="2">
                        <h3 style="text-align:center">Profilo utente iscritto al congresso<br />Modifica dati</h5>
                    </td>
                </tr>
                <tr style="border-top-style: solid; border-width: thin; border-color: #5B4B3E">
                    <td colspan="2">
                        <asp:Button ID="Button1"  OnClientClick="return confirm('Stai aggiornando i dati del tuo profilo. Continuare?')" runat="server" CssClass="float-left" CommandName="Update" Text="Aggiorna" ForeColor="#336600" />
                        <asp:Button ID="Button2" runat="server" CssClass="float-right" CommandName="Cancel" Text="Annulla" ForeColor="#CC0000" />

                    </td>
                </tr>
                <tr>
                    <td>
                        Cognome:<br /><asp:TextBox CssClass="" ID="CognomeTextBox" runat="server" Text='<%# Bind("Cognome") %>' />
                    </td>
                    <td>
                        Nome:<br /><asp:TextBox  ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        sesso:<br /><asp:TextBox ID="sessoTextBox" runat="server" Text='<%# Bind("sesso") %>' />
                    </td>
                    <td>
                        Data di nascita:<em>(dd/mm/yyyy)</em><br /><asp:TextBox ID="DataNascitaTextBox" runat="server" Text='<%# Bind("DataNascita", "{0:dd/MM/yyyy}") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Nazionalità:<br /><asp:TextBox ID="NazionalitàTextBox" runat="server" Text='<%# Bind("Nazionalità") %>' />
                    </td>
                    <td>
                        Posizione:<br /><asp:TextBox ID="PosizioneTextBox" runat="server" Text='<%# Bind("Posizione") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Organizzazione:<br /><asp:TextBox ID="OrganizzazioneTextBox" runat="server" Text='<%# Bind("Organizzazione") %>' />
                    </td>
                    <td>
                        Città:<br /><asp:TextBox ID="CittàTextBox" runat="server" Text='<%# Bind("Città") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Stato:<br /><asp:TextBox ID="StatoTextBox" runat="server" Text='<%# Bind("Stato") %>' />
                    </td>
                    <td>
                        Country:<br /><asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Passaporto:<br /><asp:TextBox ID="PassaportoTextBox" runat="server" Text='<%# Bind("Passaporto") %>' />
                    </td>
                    <td>
                        Telefono:<br /><asp:TextBox ID="TelefonoTextBox" runat="server" Text='<%# Bind("Telefono") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        Cellulare:<br /><asp:TextBox ID="CellulareTextBox" runat="server" Text='<%# Bind("Cellulare") %>' />
                    </td>
                    <td>
                        Lingua newsletter:<br /><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("LinguaNL") %>' DataSourceID="SqlDataSource2" DataTextField="Codice" DataValueField="Id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Lingue] ORDER BY [Codice]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr style="border-top-style: solid; border-width: thin; border-color: #5B4B3E">
                    <td colspan="2"><br />
                        Sei iscritto a: <asp:Label id="lblIscr" runat="server" Text='<%# Eval("Evento") %>' ForeColor="#588134" Font-Bold="True"></asp:Label><br />
                        Tipo iscrizione: <asp:Label ID="lblTipo" runat="server" Text='<%# Eval("TipoIscrizione") %>' ForeColor="#588134" Font-Bold="True"></asp:Label><br /><br />
                        <em>Per cambare l'evento a cui se iscrtto o il tipo di iscrizione devi contattare la segreteria.</em><br /><br />
                    </td>
                </tr>
                <tr style="border-top-style: solid; border-width: thin; border-color: #5B4B3E">
                    <td colspan="2">
                        <asp:Button ID="Button3" OnClientClick="return confirm('Stai aggiornando i dati del tuo profilo. Continuare?')" runat="server" CssClass="float-left"  CommandName="Update" Text="Aggiorna" ForeColor="#336600" />
                        <asp:Button ID="Button4" runat="server" CssClass="float-right" CommandName="Cancel" Text="Annulla" ForeColor="#CC0000" />

                    </td>
                </tr>
           </table>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <img src="../Images/It.png" /><h3>Hello <%: User.Identity.Name %> stai entrando nell'area iscritti dell congresso.<br />Gli iscritti possono:</img>
            <p>
                <ul>
                    <li>
                        modificare i dati del profilo e la lingua di ricezione delle newsletter
                    </li>
                    <li>
                        prenotare hotel
                    </li>
                    <li>
                        scaricare documenti del congresso
                    </li>
          </p><br />  
            <p>
                Se hai compilato la form con i tuoi dati e hai pagato la quota di iscrizione di devi attendere la mail di conferma di accettazione dalla segreteria.
            </p>
            <p>
                Se non hai ancora pagato la quota di iscrizione  dal menu principale vai alla pagina ---> Iscrizione e Prenotazioni  ---> Come Pagare
            </p>
            <p>
                Se non hai compilato la form con i tuoi dati, clicca <a href="PreFormIscrizione.aspx"> qui</a></span>
            </p><hr />


            <h3>Hello <%: User.Identity.Name %> stai entrando nell'area iscritti dell congresso.<br />Gli iscritti possono:</h3>
            <p>
                <ul>
                    <li>
                        modificare i dati del profilo e la lingua di ricezione delle newsletter
                    </li>
                    <li>
                        prenotare hotel
                    </li>
                    <li>
                        scaricare documenti del congresso
                    </li>
          </p><br />  
            <p>
                Se hai compilato la form con i tuoi dati e hai pagato la quota di iscrizione di devi attendere la mail di conferma di accettazione dalla segreteria.
            </p>
            <p>
                Se non hai ancora pagato la quota di iscrizione  dal menu principale vai alla pagina ---> Iscrizione e Prenotazioni  ---> Come Pagare
            </p>
            <p>
                Se non hai compilato la form con i tuoi dati, clicca <a href="PreFormIscrizione.aspx"> qui</a></span>
            </p>
                
        </EmptyDataTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT * FROM [Iscritti] WHERE ([UserName] = @UserName)" 
        UpdateCommand="UPDATE [Iscritti] SET [Cognome] = @Cognome, [Nome] = @Nome, [sesso] = @sesso, [DataNascita] = @DataNascita, [Nazionalità] = @Nazionalità, [Posizione] = @Posizione, [Organizzazione] = @Organizzazione, [Città] = @Città, [Stato] = @Stato, [Country] = @Country, [Passaporto] = @Passaporto, [Telefono] = @Telefono, [Cellulare] = @Cellulare, [LinguaNL] = @LinguaNL WHERE [Id] = @Id">
        <SelectParameters>
            <asp:SessionParameter SessionField="utente" Name="UserName" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Cognome" Type="String" />
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="sesso" Type="String" />
            <asp:Parameter DbType="Date" Name="DataNascita" />
            <asp:Parameter Name="Nazionalità" Type="String" />
            <asp:Parameter Name="Posizione" Type="String" />
            <asp:Parameter Name="Organizzazione" Type="String" />
            <asp:Parameter Name="Città" Type="String" />
            <asp:Parameter Name="Stato" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Passaporto" Type="String" />
            <asp:Parameter Name="Telefono" Type="String" />
            <asp:Parameter Name="Cellulare" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="LinguaNL" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

