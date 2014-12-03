using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Web.Security;

public partial class Registrati_FormIscrizione : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var iu = Membership.GetUser(User.Identity.Name).ProviderUserKey;
        System.Threading.Thread.CurrentThread.CurrentCulture
            = new System.Globalization.CultureInfo("it-IT");
        System.Threading.Thread.CurrentThread.CurrentUICulture
             = new System.Globalization.CultureInfo("it-IT");
        //controllo che l'utente non sia già iscritto
        SqlDataSource1.SelectCommand = "SELECT * FROM [Iscritti] WHERE [UserId] = '" + iu + "'";
        if (GridView1.Rows.Count != 1)
        {
            pnlTab.Visible = true;
        }
        else
        {
            pnlTab.Visible = false;
            lblCtr.Text = "Questo utente è già iscritto.<br/>Clicca su <em>Iscrizione!</em> sotto il <em>login</em> per visualizzare il profilo";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
            //setto i parametri per l'inserimento
            SqlDataSource1.InsertParameters["UserId"].DefaultValue = Membership.GetUser(User.Identity.Name).ProviderUserKey.ToString();
            SqlDataSource1.InsertParameters["Cognome"].DefaultValue = CognomeTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["Nome"].DefaultValue = NomeTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["Sesso"].DefaultValue = GenRadioButtonList.SelectedValue.ToString();
            SqlDataSource1.InsertParameters["DataNascita"].DefaultValue = NascitaTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["Nazionalità"].DefaultValue = NazioneTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["Indirizzo"].DefaultValue = IndirizzoTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["Posizione"].DefaultValue = PosizioneTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["Organizzazione"].DefaultValue = OrganizzazioneTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["Città"].DefaultValue = CityTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["Posizione"].DefaultValue = PosizioneTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["Stato"].DefaultValue = StateTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["Country"].DefaultValue = CountryTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["Passaporto"].DefaultValue = PassportTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["Telefono"].DefaultValue = TelTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["Cellulare"].DefaultValue = CellTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["Fax"].DefaultValue = FaxTextBox.Text.ToString();
            SqlDataSource1.InsertParameters["UserName"].DefaultValue = User.Identity.Name;
            SqlDataSource1.InsertParameters["LinguaNL"].DefaultValue = DropDownListLnl.SelectedValue.ToString();
            SqlDataSource1.InsertParameters["NewsLetter"].DefaultValue = "true";
            SqlDataSource1.InsertParameters["Evento"].DefaultValue = SessioneDdl.SelectedValue;
            SqlDataSource1.InsertParameters["TipoIscrizione"].DefaultValue = TipoDdl.SelectedValue;
            SqlDataSource1.Insert();
            ////Preparo i campi della mail
            String from = "webservice@cr-consult.it";
            String to = "cesare@cr-consult.eu";
            //Istanzio la classe che rappresenta il messaggio 
            MailMessage mMailMessage = new MailMessage();
            //Aggiungo il Mittente 
            mMailMessage.From = new MailAddress(from);
            //Aggiungo il destinatario 
            mMailMessage.To.Add(new MailAddress(to));
            mMailMessage.To.Add("giuseppe.fortini@gmail.com");
            //L'oggetto 
            mMailMessage.Subject = "Richiesta iscrizione NFP2015 -" + Context.User.Identity.Name;
            //Il corpo 
            mMailMessage.Body = "<strong>" + DateTime.Today.ToShortDateString() + "</strong><br/>L'utente <strong><em>" + Context.User.Identity.Name +
                " (" + Membership.GetUser(Context.User.Identity.Name).Email.ToString() + ") " +
                "</em></strong> ha inviato una richiesta di iscrizione tramite il sito web di NFP2015<hr/><strong>"
                + TitleDropDownList.SelectedValue.ToString() + ": </strong>" + NomeTextBox.Text.ToString() + " " + CognomeTextBox.Text.ToString() +
                "<br/><strong> Sex:</strong> " + GenRadioButtonList.Text.ToString() +
                "<br/><strong> Data di nascita:</strong> " + NascitaTextBox.Text.ToString() +
                "<br/><strong> Indirizzo:</strong> " + IndirizzoTextBox.Text.ToString() +
                "<br/><strong> Città:</strong> " + CityTextBox.Text.ToString() +
                "<br/><strong> Stato:</strong> " + StateTextBox.Text.ToString() +
                "<br/><strong> Country:</strong> " + CountryTextBox.Text.ToString() +
                "<br/><strong> Telefono:</strong> " + TelTextBox.Text.ToString() +
                "<br/><strong> Cellulare:</strong> " + CellTextBox.Text.ToString() +
                "<br/><strong> Fax:</strong> " + FaxTextBox.Text.ToString() +
                "<br/><strong> Nazionalità:</strong> " + NazioneTextBox.Text.ToString() +
                "<br/><strong> Organizzazione:</strong> " + OrganizzazioneTextBox.Text.ToString() +
                "<br/><strong> Posizione:</strong> " + PosizioneTextBox.Text.ToString() +
                "<br/><strong> Passaporto:</strong> " + PassportTextBox.Text.ToString() +
                "<br/><strong> Iscrizione a:</strong> " + SessioneDdl.SelectedValue.ToString() +
                "<br/><strong> Tipo iscrizione:</strong> " + TipoDdl.SelectedValue.ToString();
            //Setto la modalità testo, per il contenuto del messaggio. Sarebbe possibile inviare anche dell'HTML mettendo true 
            mMailMessage.IsBodyHtml = true;
            //Setto la priorità 
            mMailMessage.Priority = MailPriority.Normal;
            //configurazione nel web.config 
            SmtpClient mSmtpClient = new SmtpClient();
            //Invio il messaggio 
            mSmtpClient.Send(mMailMessage);
            Response.Redirect("~/FormIscrizioneOk.aspx");
    }
}