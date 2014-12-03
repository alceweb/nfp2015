using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;

public partial class Admin_AdminAtti : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cartella = "~/Iscritti/Atti/";
        string[] nl = System.IO.Directory.GetFiles(Server.MapPath(cartella), "*.*");
        ddl1.DataSource = nl;
        ddl1.DataBind();
        ddl1.SelectedIndex = -1;
        ListViewNl.DataSource = nl;
        ListViewNl.DataBind();
        LblUploadOk.Text = "";
        lblDeleteOk.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string saveDir = Server.MapPath("~/Iscritti/Atti/");
        string nomefile = FileUpload1.FileName.ToString();
        if (FileUpload1.HasFile)
        {
            if (File.Exists(saveDir + nomefile))
            {
                LblUploadOk.ForeColor = Color.Red;
                LblUploadOk.Text = "il file esiste già";
            }
            else
            {
                FileUpload1.SaveAs(saveDir + nomefile);
                // Avvisa dell'avvenuto upload.
                LblUploadOk.ForeColor = Color.Green;
                LblUploadOk.Text = "Documento caricato corretamente.";
            }
        }
        else
        {
            // Avvisa del mancato upload.
            LblUploadOk.ForeColor = Color.Red;
            LblUploadOk.Text = "Devi selezionare un file da caricare!";
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        System.IO.File.Delete(ddl1.SelectedValue.ToString());
        lblDeleteOk.ForeColor = Color.Red;
        lblDeleteOk.Text = "Il documento -" + ddl1.SelectedValue.ToString() + "- è stata eliminata";
    }
}