using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Iscritti_Booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
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
        mMailMessage.Body = "L'utente <strong><em>" + Context.User.Identity.Name + "</em></strong> ha inviato una richiesta di prenotazione hotel tramite il sito web di NFP2015<br/><strong>"
            + "<br/> Tipo hotel: </strong><br/>" + CheckBoxList.SelectedValue.ToString()
            + "<br/><br/><strong> Tipo camere: </strong><br/>" + DropDownList1.SelectedValue.ToString()
            + "<br/>" + DropDownList2.SelectedValue.ToString()
            + "<br/>" + DropDownList3.SelectedValue.ToString()
            + "<br/><br/><strong> Note </strong><br/>" + TextBox1.Text.ToString();
        //Setto la modalità testo, per il contenuto del messaggio. Sarebbe possibile inviare anche dell'HTML mettendo true 
        mMailMessage.IsBodyHtml = true;
        //Setto la priorità 
        mMailMessage.Priority = MailPriority.Normal;
        //configurazione nel web.config 
        SmtpClient mSmtpClient = new SmtpClient();
        //Invio il messaggio 
        mSmtpClient.Send(mMailMessage);
        Response.Redirect("~/Iscritti/BookingSend.aspx");
    }
}