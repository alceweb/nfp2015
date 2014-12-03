using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TestMenu : System.Web.UI.Page
{
    private const string AntiXsrfTokenKey = "__AntiXsrfToken";
    private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
    private string _antiXsrfTokenValue;


    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ListView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["IdLinguaSessione"] = ListView2.SelectedValue.ToString();
    }
}