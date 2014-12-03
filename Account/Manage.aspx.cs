using System;
using System.Collections.Generic;
using System.Linq;

using System.Web.UI.WebControls;

using Microsoft.AspNet.Membership.OpenAuth;

public partial class Account_Manage : System.Web.UI.Page
{
    protected string SuccessMessage
    {
        get;
        private set;
    }

    protected bool CanRemoveExternalLogins
    {
        get;
        private set;
    }

    protected void Page_Load()
    {
        if (!IsPostBack)
        {
            // Determinare le sezioni di cui eseguire il rendering
            var hasLocalPassword = OpenAuth.HasLocalPassword(User.Identity.Name);
            setPassword.Visible = !hasLocalPassword;
            changePassword.Visible = hasLocalPassword;

            CanRemoveExternalLogins = hasLocalPassword;

            // Messaggio di completamento del rendering
            var message = Request.QueryString["m"];
            if (message != null)
            {
                // Rimuovere la stringa di query dall'azione
                Form.Action = ResolveUrl("~/Account/Manage");

                SuccessMessage =
                    message == "ChangePwdSuccess" ? "Cambiamento password completato."
                    : message == "SetPwdSuccess" ? "Impostazione password completata."
                    : message == "RemoveLoginSuccess" ? "L'account di accesso esterno è stato rimosso."
                    : String.Empty;
                successMessage.Visible = !String.IsNullOrEmpty(SuccessMessage);
            }
        }
        

        // Definire un'associazione dati con l'elenco di account esterni
        var accounts = OpenAuth.GetAccountsForUser(User.Identity.Name);
        CanRemoveExternalLogins = CanRemoveExternalLogins || accounts.Count() > 1;
        externalLoginsList.DataSource = accounts;
        externalLoginsList.DataBind();
        
    }

    protected void setPassword_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            var result = OpenAuth.AddLocalPassword(User.Identity.Name, password.Text);
            if (result.IsSuccessful)
            {
                Response.Redirect("~/Account/Manage?m=SetPwdSuccess");
            }
            else
            {
                
                newPasswordMessage.Text = result.ErrorMessage;
                
            }
        }
    }

    
    protected void externalLoginsList_ItemDeleting(object sender, ListViewDeleteEventArgs e)
    {
        var providerName = (string)e.Keys["ProviderName"];
        var providerUserId = (string)e.Keys["ProviderUserId"];
        var m = OpenAuth.DeleteAccount(User.Identity.Name, providerName, providerUserId)
            ? "?m=RemoveLoginSuccess"
            : String.Empty;
        Response.Redirect("~/Account/Manage" + m);
    }

    protected T Item<T>() where T : class
    {
        return GetDataItem() as T ?? default(T);
    }
    

    protected static string ConvertToDisplayDateTime(DateTime? utcDateTime)
    {
        // È possibile modificare questo metodo per convertire la data e l'ora UTC in base all'offset e nel formato
        // di visualizzazione desiderati. In questo caso viene eseguita la conversione in base al fuso orario del server e nel formato
        // di data breve e ora estesa, secondo le impostazioni cultura del thread corrente.
        return utcDateTime.HasValue ? utcDateTime.Value.ToLocalTime().ToString("G") : "[mai]";
    }
}