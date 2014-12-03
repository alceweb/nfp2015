using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

using System.Data;

public partial class TestMenu1 : System.Web.UI.Page
{
    static private string GetConnectionString()
    {
        // To avoid storing the connection string in your code, 
        // you can retrieve it from a configuration file, using the 
        // System.Configuration.ConfigurationSettings.AppSettings property 
        return "Data Source=(LocalDb)\v11.0;AttachDbFilename=|DataDirectory|\aspnet-2015nfpAzure-20140206163312.mdf;Initial Catalog=aspnet-2015nfpAzure-20140206163312;"
            + "Integrated Security=SSPI;";
    }
    //SqlConnection con = new SqlConnection(connectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
    string connectionString = GetConnectionString();
    SqlConnection con = new SqlConnection(connectionString);



        SqlDataAdapter da = new SqlDataAdapter("Select TechnologyID, TechnologyName, TechnologyURL from Technology", con);

        DataTable dttc = new DataTable();

        da.Fill(dttc);

        HtmlGenericControl main = UList("Menuid", "menu");

        foreach (DataRow row in dttc.Rows)
        {

            da = new SqlDataAdapter("select TechnologyCategoryID,TechnologyCategoryName,TechnologyCategoryURL from TechnologyCategory where TechnologyID=" + row["TechnologyID"].ToString(), con);

            DataTable dtDist = new DataTable();

            da.Fill(dtDist);

            if (dtDist.Rows.Count > 0)
            {

                HtmlGenericControl sub_menu = LIList(row["TechnologyName"].ToString(), row["TechnologyID"].ToString(), row["TechnologyURL"].ToString());

                HtmlGenericControl ul = new HtmlGenericControl("ul");

                foreach (DataRow r in dtDist.Rows)
                {

                    ul.Controls.Add(LIList(r["TechnologyCategoryName"].ToString(), r["TechnologyCategoryID"].ToString(), r["TechnologyCategoryURL"].ToString()));

                }

                sub_menu.Controls.Add(ul);

                main.Controls.Add(sub_menu);

            }

            else
            {

                main.Controls.Add(LIList(row["TechnologyName"].ToString(), row["TechnologyID"].ToString(), row["TechnologyURL"].ToString()));

            }

        }

        Panel1.Controls.Add(main);

    }

    private HtmlGenericControl UList(string id, string cssClass)
    {

        HtmlGenericControl ul = new HtmlGenericControl("ul");

        ul.ID = id;

        ul.Attributes.Add("class", cssClass);

        return ul;

    }

    private HtmlGenericControl LIList(string innerHtml, string rel, string url)
    {

        HtmlGenericControl li = new HtmlGenericControl("li");

        li.Attributes.Add("rel", rel);

        li.InnerHtml = "<a href=" + string.Format("http://{0}", url) + ">" + innerHtml + "</a>";

        return li;

    }
}