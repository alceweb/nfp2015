<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FormIscrizione.aspx.cs" Inherits="Registrati_FormIscrizione" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 class="TitoloVetrina">SCHEDA DATI PERSONALI<br />PERSONAL DATA FORM<br />ЛИЧНЫЕ ДАННЫЕ ФОРМА
    </h2>
    <p style="text-align:center">I campi evidenziati sono obbligatori<br />The fill-in of the highlighted field is mandatory <br />Заполнения в из выделенного поля являются обязательными<br />
</p>
    <h2 class="TitoloVetrina" style="color:red">
    <asp:Label ID="lblCtr" runat="server"></asp:Label>
    </h2>
    <asp:Panel ID="pnlTab" Visible="False" runat="server">
        <table class="TblForm">
            <asp:ValidationSummary ID="valSum" DisplayMode="BulletList"
                HeaderText="You must enter a value in the following fields:"
                runat="server"
                ShowMessageBox="True"
                EnableClientScript="True" ShowSummary="False"></asp:ValidationSummary>
            <tr style="background-color: #D1D5E0;">
                <td>
                    <asp:RadioButtonList ID="GenRadioButtonList" runat="server" RepeatDirection="Horizontal" Width="100%">
                        <asp:ListItem Selected="True" Text="M" Value="M"></asp:ListItem>
                        <asp:ListItem Value="F">F</asp:ListItem>
                    </asp:RadioButtonList><br />

                </td>
                <td></td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList Width="70px" ID="TitleDropDownList" runat="server" Enabled="true">
                        <asp:ListItem>Dott.</asp:ListItem>
                        <asp:ListItem>Ing.</asp:ListItem>
                        <asp:ListItem>Miss.</asp:ListItem>
                        <asp:ListItem>Mr.</asp:ListItem>
                    </asp:DropDownList><br />
                    <asp:Label ID="CognomeLabel" runat="server" Text="Cognome - Last name"></asp:Label><br />
                    <asp:TextBox ID="CognomeTextBox" runat="server" CssClass="CampoObbligatorio"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="Cognome"
                        ControlToValidate="CognomeTextBox"
                        ErrorMessage="Last name"
                        runat="server"
                        ForeColor="Red"
                        Text="X">
                    </asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="NomeLabel" runat="server" Text="Nome - First name"></asp:Label><br />
                    <asp:TextBox ID="NomeTextBox" runat="server" CssClass="CampoObbligatorio"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1"
                        ControlToValidate="NomeTextBox"
                        ErrorMessage="FirstName"
                        runat="server"
                        ForeColor="Red"
                        Text="X">
                    </asp:RequiredFieldValidator><br />
                    <asp:Label ID="NascitaLabel" runat="server" Text="Data di nascita - Date of birth <br/>(dd/mm/yyyy)"></asp:Label><br />
                    <asp:TextBox ID="NascitaTextBox" runat="server" Text="Inser date" CssClass="CampoObbligatorio"></asp:TextBox>
                    <asp:CompareValidator ID="dateValidator" runat="server"
                        Type="Date"
                        Operator="DataTypeCheck"
                        ControlToValidate="NascitaTextbox"
                        ErrorMessage="Please enter a valid date."
                        ForeColor="Red"
                        Text="X">
                    </asp:CompareValidator><br />
                    <asp:Label ID="NazioneLabel" runat="server" Text="Nazionalità - Nationality"></asp:Label><br />
                    <asp:TextBox ID="NazioneTextBox" runat="server"></asp:TextBox><br />
                    <asp:Label ID="LabelIndirizzo" runat="server" Text="Indirizzo - Address"></asp:Label><br />
                    <asp:TextBox ID="IndirizzoTextBox" runat="server"></asp:TextBox><br />
                    <asp:Label ID="CityLabel" runat="server" Text="City"></asp:Label><br />
                    <asp:TextBox ID="CityTextBox" runat="server"></asp:TextBox><br />
                    <asp:Label ID="StateLabel" runat="server" Text="State"></asp:Label><br />
                    <asp:TextBox ID="StateTextBox" runat="server"></asp:TextBox><br />
                    <asp:Label ID="CountryLabel" runat="server" Text="Country"></asp:Label><br />
                    <asp:TextBox ID="CountryTextBox" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="TelLabel" runat="server" Text="Fixed phone<br/>(with international code)"></asp:Label><br />
                    <asp:TextBox ID="TelTextBox" runat="server"></asp:TextBox><br />
                    <asp:Label ID="CellLabel" runat="server" Text="Mobile phone<br/>(with international code)"></asp:Label><br />
                    <asp:TextBox ID="CellTextBox" runat="server"></asp:TextBox><br />
                    <asp:Label ID="FaxLabel" runat="server" Text="Fax<br/>(with international code)"></asp:Label><br />
                    <asp:TextBox ID="FaxTextBox" runat="server"></asp:TextBox><br />
                </td>
                <td>
                    <asp:Label ID="OrgLabel" runat="server" Text="Organizzazione di appartenenza<br/>Organization"></asp:Label><br />
                    <asp:TextBox ID="OrganizzazioneTextBox" runat="server"></asp:TextBox><br />
                    <asp:Label ID="PosizioneLabel" runat="server" Text="Posizione nell'organizzazione<br/>Position"></asp:Label><br />
                    <asp:TextBox ID="PosizioneTextBox" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="PassportLabel" runat="server" Text="Carta d'identità/Passaporto<br/>Identity card or Passport number"></asp:Label><br />
                    <asp:TextBox ID="PassportTextBox" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lblLnL" runat="server" Text="Lingua preferita<br/>Preferred language"></asp:Label><br />
                    <asp:DropDownList ID="DropDownListLnl" runat="server" AutoPostBack="True" TabIndex="0">
                        <asp:ListItem Value="1">Eng</asp:ListItem>
                        <asp:ListItem Value="2">Ita</asp:ListItem>
                        <asp:ListItem Value="3">Deu</asp:ListItem>
                        <asp:ListItem Value="4">Esp</asp:ListItem>
                        <asp:ListItem Value="5">Fra</asp:ListItem>
                        <asp:ListItem Value="6">Rus</asp:ListItem>
                    </asp:DropDownList><br />
                    <br />
                    <asp:Label ID="SessioneLabel" runat="server" Text="Iscrizione a:<br/> Sign up to:"></asp:Label><br />
                    <asp:DropDownList ID="SessioneDdl" AutoPostBack="true" runat="server">
                        <asp:ListItem>Tutto il Congresso – All the Congress</asp:ListItem>
                        <asp:ListItem>Giovedì e venerdì – Only Thursday and Friday</asp:ListItem>
                        <asp:ListItem>Sabato e Domenica – Only Saturday and Sunday</asp:ListItem>
                        <asp:ListItem>Solo sessioni pubbliche – only Public sessions</asp:ListItem>
                    </asp:DropDownList><br />
                    <br />
                    <asp:Label ID="TipoLabel" runat="server" Text="Tipo iscrizione<br/>Type og sign up"></asp:Label><br />
                    <asp:DropDownList ID="TipoDdl" AutoPostBack="true" runat="server">

                        <asp:ListItem>Standard</asp:ListItem>
                        <asp:ListItem>RNF Teacher</asp:ListItem>
                        <asp:ListItem>IEEF member (excl. Italy)</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Accompayning people >16a</asp:ListItem>
                        <asp:ListItem>Young Accompayning people <16a</asp:ListItem>

                    </asp:DropDownList><br />
                </td>
            </tr>
            <tr style="border-width: thin; border-color: #C0C0C0; b; border-top-style: solid;">
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" CommandName="cancel" Text="Annulla - Clear" ForeColor="#CC0000" />
                    <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Invia - Send" ForeColor="#006600" />
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
            InsertCommand="INSERT INTO [Iscritti] ([UserId], [Cognome], [Nome], [sesso], [DataNascita], [Nazionalità], [Posizione], [Organizzazione], [Città], [Stato], [Country], [Passaporto], [Telefono], [Cellulare], [UserName], [LinguaNL], [NewsLetter], [Indirizzo], [Fax], [Evento], [TipoIscrizione]) VALUES (@UserId, @Cognome, @Nome, @sesso, @DataNascita, @Nazionalità, @Posizione, @Organizzazione, @Città, @Stato, @Country, @Passaporto, @Telefono, @Cellulare, @UserName, @LinguaNL, @NewsLetter, @Indirizzo, @Fax, @Evento, @TipoIscrizione)"
            UpdateCommand="UPDATE [Iscritti] SET [UserId] = @UserId, [Cognome] = @Cognome, [Nome] = @Nome, [sesso] = @sesso, [DataNascita] = @DataNascita, [Nazionalità] = @Nazionalità, [Posizione] = @Posizione, [Organizzazione] = @Organizzazione, [Città] = @Città, [Stato] = @Stato, [Country] = @Country, [Passaporto] = @Passaporto, [Telefono] = @Telefono, [Cellulare] = @Cellulare, [UserName] = @UserName, [LinguaNL] = @ LinguaNL, [NewsLetter] = @NewsLetter, [Indirizzo] = @Indirizzo, [Fax] = @Fax, [Evento] = @Evento, [TipoIscrizione] = @TipoIscrizione WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserId" Type="String" />
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
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="LinguaNL" Type="String" />
                <asp:Parameter Name="Indirizzo" Type="String" />
                <asp:Parameter Name="NewsLetter" Type="Boolean" />
                <asp:Parameter Name="Fax" Type="String" />
                <asp:Parameter Name="Evento" Type="String" />
                <asp:Parameter Name="TipoIscrizione" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserId" Type="String" />
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
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="LinguaNL" Type="String" />
                <asp:Parameter Name="Indirizzo" Type="String" />
                <asp:Parameter Name="NewsLetter" Type="Boolean" />
                <asp:Parameter Name="Fax" Type="String" />
                <asp:Parameter Name="Evento" Type="String" />
                <asp:Parameter Name="TipoIscrizione" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
            </asp:Panel>
<asp:GridView ID="GridView1" Visible="false" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Cognome" HeaderText="Cognome" SortExpression="Cognome" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="sesso" HeaderText="sesso" SortExpression="sesso" />
                <asp:BoundField DataField="DataNascita" HeaderText="DataNascita" SortExpression="DataNascita" />
                <asp:BoundField DataField="Nazionalità" HeaderText="Nazionalità" SortExpression="Nazionalità" />
                <asp:BoundField DataField="Posizione" HeaderText="Posizione" SortExpression="Posizione" />
                <asp:BoundField DataField="Organizzazione" HeaderText="Organizzazione" SortExpression="Organizzazione" />
                <asp:BoundField DataField="Città" HeaderText="Città" SortExpression="Città" />
                <asp:BoundField DataField="Stato" HeaderText="Stato" SortExpression="Stato" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Passaporto" HeaderText="Passaporto" SortExpression="Passaporto" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                <asp:BoundField DataField="Cellulare" HeaderText="Cellulare" SortExpression="Cellulare" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="LinguaNL" HeaderText="LinguaNL" SortExpression="LinguaNL" />
                <asp:CheckBoxField DataField="NewsLetter" HeaderText="NewsLetter" SortExpression="NewsLetter" />
                <asp:BoundField DataField="Indirizzo" HeaderText="Indirizzo" SortExpression="Indirizzo" />
                <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Iscritti]"></asp:SqlDataSource>
    </asp:Content>

