using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Riservata_NewsLetterAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cartella = "~/Registrati/Newsletter/";
        string[] nl = System.IO.Directory.GetFiles(Server.MapPath(cartella), "*.*");
        lista.DataSource = nl;
        lista.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string saveDir = Server.MapPath("~/Registrati/Newsletter/");
        if (FileUpload1.HasFile)
        {
            string nomefile = FileUpload1.FileName.ToString();
            FileUpload1.SaveAs(saveDir + nomefile);
            // Avvisa dell'avvenuto upload.
            LblUploadOk.Text = "Immagine caricata corretamente.";
        }
        else
        {
            // Avvisa del mancato upload.
            LblUploadkO.Text = "Non hai scelto l'immagine per la galleria.";
        }
    }
}