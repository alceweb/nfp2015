using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registrati_Newsletter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["utente"] = User.Identity.Name.ToString();
        string lingua = Session["IdLingua"].ToString();
        string cartella = "~/Registrati/Newsletter/";
        string[] pdf = System.IO.Directory.GetFiles(Server.MapPath(cartella), "*_" + lingua + ".pdf");
        lista.DataSource = pdf;
        lista.DataBind();
    }
}