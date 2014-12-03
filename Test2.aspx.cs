using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test2 : System.Web.UI.Page
{
    public String Text
    {
        get 
        {
            object o = ViewState["Text"];
            return (o == null)? String.Empty : (string)o;
        }
        set 
        {
            ViewState["Text"] = value;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ListView1.SelectedIndex >= 0)
        {
            ViewState["Tipologia"] = ListView1.SelectedValue;
            lbl.Text = Text;
        }
        else
            ViewState["Tipologia"] = null;
    }
    protected void ListView1_DataBound(object sender, EventArgs e)
    {
        for (int i = 0; i < ListView1.Items.Count; i++)
        {
            try
            {
                if ((int)ListView1.DataKeys[i].Value == (int)ViewState["Tipologia"])
                    ListView1.SelectedIndex = i;
            }
            catch { }
        }
    }
}