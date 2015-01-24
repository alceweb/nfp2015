using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;

public partial class Admin_AdminFormTutti : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cartella = "~/Download/";
        string[] nl = System.IO.Directory.GetFiles(Server.MapPath(cartella), "*.*");
        ListViewNl.DataSource = nl;
        ListViewNl.DataBind();
        LblUploadOk.Text = "";
        lblDeleteOk.Text = "";
        Button2.Visible = true;
        btnDelete.Visible = false;
        btnAnnulla.Visible = false;
        lb1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string saveDir = Server.MapPath("~/Download/");
        string nomefile = FileUpload1.FileName.ToString();
        if (FileUpload1.HasFile)
        {
            if (File.Exists(saveDir + nomefile))
            {
                LblUploadOk.ForeColor = Color.Red;
                LblUploadOk.Text = "Form <strong> '" + nomefile + "' </strong>esiste già.";
            }
            else
            {
                FileUpload1.SaveAs(saveDir + nomefile);
                // Avvisa dell'avvenuto upload.
                LblUploadOk.ForeColor = Color.Green;
                LblUploadOk.Text = "Form <strong> '" + nomefile + "' </strong>caricata corretamente.";
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
        if (lb1.SelectedValue != "")
        {
            System.IO.File.Delete(lb1.SelectedValue);
            lblDeleteOk.Text = "La form <strong>" + lb1.SelectedValue + "</strong> è stata eliminata";
            lb1.Visible = false;
            Button2.Visible = true;
            btnDelete.Visible = false;
            btnAnnulla.Visible = false;
        }
        else
        {
            Response.Write("occhio");
            lblDeleteOk.Text = "Non hai selezionato nessun file.";
            Button2.Visible = false;
            lb1.Visible = true;
            btnDelete.Visible = true;
            btnAnnulla.Visible = true;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string cartella = "~/Download/";
        string[] nl = System.IO.Directory.GetFiles(Server.MapPath(cartella), "*.*");
        lb1.Visible = true;
        lb1.DataSource = nl;
        lb1.DataBind();
        lb1.SelectedIndex = -1;
        Button2.Visible = false;
        btnDelete.Visible = true;
        btnAnnulla.Visible = true;
    }
    protected void btnAnnulla_Click(object sender, EventArgs e)
    {
        lb1.Visible = false;
        Button2.Visible = true;
        btnDelete.Visible = false;
        btnAnnulla.Visible = false;
    }
}