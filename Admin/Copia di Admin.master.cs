using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ListView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["IdLinguaSessione"] = ListView2.SelectedValue.ToString();
    }
}
