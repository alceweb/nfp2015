<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PrenotaHotelsOk.aspx.cs" Inherits="Registrati_PrenotaHotelsOk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h1 class="TitoloVetrina">Prenotazione alberghi - Hotels reservation</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/it.png" />  Richiesta prenotazione hotel inviata correttamente</h1>
    <p>La tua richiesta di prenotazione hotel è stata inviata alla segreteria del <strong>NFP2015 Congress.</strong><br />
        È possible procedere al pagamento dalla pagina del menù -->Iscrizione e prenotazioni -->Come pagare.<br />
        Verrai successivamente contattato tramite mail all'indirizzo<strong> <%: Membership.GetUser(User.Identity.Name).Email %></strong> per la conferma della prenotazione.
    </p><hr />
    <h1><asp:Image ID="Image2" runat="server" ImageUrl="~/Images/en.png" />  Hotel reservations</h1>
    <h3>Confirmation of correct request for hotel reservations</h3>
    <p>Your hotel reservations request has been forwarded to the <strong>NFP2015 Congress secretariat</strong><br />
        You may proceed to pay by going to the menu page  -->Registration & booking --> How to Pay<br />
        You will be subsequently contacted via e-mail at the address <strong> <%: Membership.GetUser(User.Identity.Name).Email %></strong> for confirmation of the reservations.
    </p>
    </asp:Content>

