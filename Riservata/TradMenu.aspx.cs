using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Riservata_TradMenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string utente = User.Identity.Name.ToString();
        switch (utente)
        {
            case "inglese":
                Session["IdLingua"] = 1;
                ListViewNav.Visible = false;
                Label1.Text = "Sei l'utente Inglese non hai niente da tradurre";
                break;
            case "Italiano":
                Session["IdLingua"] = 2;
                break;
            case "Tedesco":
                Session["IdLingua"] = 3;
                break;
            case "Spagnolo":
                Session["IdLingua"] = 4;
                break;
            case "Francese":
                Session["IdLingua"] = 5;
                break;
            case "Russo":
                Session["IdLingua"] = 6;
                break;
        }
    }
    protected void ListViewNav_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListViewMenu1.SelectedIndex = -1;
    }
}