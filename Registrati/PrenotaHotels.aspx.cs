using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;
using System.Net.Mail;
using System.Drawing;

public partial class Registrati_PrenotaHotels : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ListBoxZ_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListView1.SelectedIndex = -1;
        Label1.Text = "";
        PanelInvio.Visible = false;
        lblNomeEr.Text = "*";
        lblDataArrivoEr.Text = "*";
        lblDataPartenzaEr.Text = "*";
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListView1.SelectedIndex = -1;
        Label1.Text = "";
        PanelInvio.Visible = false;
        lblNomeEr.Text = "*";
        lblDataArrivoEr.Text = "*";
        lblDataPartenzaEr.Text = "*";
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
        OrderedDictionary _dictionary = new OrderedDictionary();
        ListView1.ExtractItemValues(_dictionary, e.Item, true);

        string z = _dictionary["Zona"].ToString();
        string c = _dictionary["Categoria"].ToString();
        string t = _dictionary["Tipologia"].ToString();
        string p = _dictionary["Prezzo"].ToString();
            Label1.Text = "<hr/><strong><em>" + DateTime.Today.ToShortDateString()
                + "</strong></em><br/><br/>Richiesta prenotazione hotel per l'utente <strong>"
                + Context.User.Identity.Name.ToString()
                + " (" + Membership.GetUser(User.Identity.Name).Email + ") "
                + "</strong> <br> Zona - Zone: <strong>" + z
                + "</strong><br/>Categoria - Stars: <strong>" + c
                + "</strong><br/>Tipologia - Type: <strong>" + t
                + "</strong><br/> Prezzo - Price: <strong> € " + p + "</strong>";
            PanelInvio.Visible = true;
        }

    }
    protected void Invia_Click(object sender, EventArgs e)
    {
       string n = TextBoxNote.Text;
       string no = TextBoxNome.Text;
       string da = TextBoxDataArrivo.Text;
       string dp = TextBoxDataPartenza.Text;
       string nn = txtNotti.Text;
       string di = TextBoxDiete.Text;
       string es = TextBoxEs.Text;
       string np1 = txtNP1.Text;
       string np2 = txtNP2.Text;
       string np3 = txtNP3.Text;
       string np4 = txtNP4.Text;
       string dp1 = txtDP1.Text;
       string dp2 = txtDP2.Text;
       string dp3 = txtDP3.Text;
       string dp4 = txtDP4.Text;
       string cp1 = txtCP1.Text;
       string cp2 = txtCP2.Text;
       string cp3 = txtCP3.Text;
       string cp4 = txtCP4.Text;

       if (no == "")
       {
           lblNomeEr.Text = "Nome e Cognome obbligatori";
           TextBoxNome.Focus();
           TextBoxNome.BackColor = Color.Red;
       }
       else 
       {
           if (da == "")
           {
               lblNomeEr.Text = "*";
               lblDataArrivoEr.Text = "Data di arrivo obbligatoria";
               TextBoxDataArrivo.Focus();
               TextBoxNome.BackColor = Color.White;
               TextBoxDataArrivo.BackColor = Color.Red;
           }
           else
               if (dp == "")
               {
                   lblNomeEr.Text = "*";
                   lblDataArrivoEr.Text = "*";
                   lblDataPartenzaEr.Text = "Data di partenza obbligatoria";
                   TextBoxDataPartenza.Focus();
                   TextBoxNome.BackColor = Color.White;
                   TextBoxDataArrivo.BackColor = Color.White;
                   TextBoxDataPartenza.BackColor = Color.Red;
               }
               else
               {
                   //Preparo la mail da inviare
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
                    mMailMessage.Subject = "Richiesta prenotazione hotel";
                    //Il corpo 
                    mMailMessage.Body = "L'utente " + Context.User.Identity.Name
                        + " ha inoltrato una richiesta di prenotazione. <hr/>"
                        + Label1.Text
                        +"</strong><br/> Nome: <strong>" + no
                        + "</strong><br/> Data di arrivo: <strong>" + da
                        + "</strong><br/> Data di partenza: <strong>" + dp
                        + "</strong><br/> Numero notti: <strong>" + nn
                        + "</strong><br/> Diete: <strong>" + di
                        + "</strong><br/> Esigenze particolari: <strong>" + es
                        + "</strong><hr><h3> Persona 1</h3>"
                        + "Nome: <strong>" + np1
                        + "</strong><br/> Data di nascita: <strong>" + dp1
                        + "</strong><br/> C.I passaporto: <strong>" + cp1
                        + "</strong><hr><h3> Persona 2</h3>"
                        + "Nome: <strong>" + np2
                        + "</strong><br/> Data di nascita: <strong>" + dp2
                        + "</strong><br/> C.I passaporto: <strong>" + cp2
                        + "</strong><hr><h3> Persona 3</h3>"
                        + "Nome: <strong>" + np3
                        + "</strong><br/> Data di nascita: <strong>" + dp3
                        + "</strong><br/> C.I passaporto: <strong>" + cp3
                        + "</strong><hr><h3> Persona 4</h3>"
                        + "Nome: <strong>" + np4
                        + "</strong><br/> Data di nascita: <strong>" + dp4
                        + "</strong><br/> C.I passaporto: <strong>" + cp4
                        + "</strong><hr/> Note: <strong>" + n;
                    //Setto la modalità HTML, per il contenuto del messaggio.
                    mMailMessage.IsBodyHtml = true;
                    //Setto la priorità 
                    mMailMessage.Priority = MailPriority.Normal;
                    //configurazione nel web.config 
                    SmtpClient mSmtpClient = new SmtpClient();
                    //Invio il messaggio 
                    mSmtpClient.Send(mMailMessage);
                    Response.Redirect("PrenotaHotelsOk.aspx");
           }
       }
    }
}