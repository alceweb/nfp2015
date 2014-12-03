using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
   protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ListView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["IdLingua"] = ListView2.SelectedValue.ToString();
        String lingua = Session["IdLingua"].ToString();
        Response.Redirect("Content.aspx?Id="+ lingua);
    }
}