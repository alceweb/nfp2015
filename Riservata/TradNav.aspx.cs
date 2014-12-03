using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Riservata_TradNav : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string utente = User.Identity.Name.ToString();
        switch (utente)
        {
            case "inglese":
                Session["IdLingua"] = 1;
                ListView1.Visible = false;
                Label1.Text= "Sei l'utente Inglese non hai niente da tradurre";
                break;
            case "bill":
                Session["IdLingua"] = 2;
                break;
            case "tedesco":
                Session["IdLingua"] = 3;
                break;
            case "spagnolo":
                Session["IdLingua"] = 4;
                break;
            case "francese":
                Session["IdLingua"] = 5;
                break;
            case "russo":
                Session["IdLingua"] = 6;
                break;
        }
    }
}