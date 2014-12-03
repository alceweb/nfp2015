using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string lingua = Session["IdLingua"].ToString();
        if(lingua == "1")
        {
            PanelEn.Visible = true;
        }
        if (lingua == "2")
        {
            PanelIt.Visible = true;
        }
        if (lingua == "3")
        {
            PanelGe.Visible = true;
        }
        if (lingua == "4")
        {
            PanelEs.Visible = true;
        }
        if (lingua == "5")
        {
            PanelFr.Visible = true;
        }
        if (lingua == "6")
        {
            PanelRu.Visible = true;
        }
    }
}