<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" %>
<%@ Import Namespace="System.Web.Security" %>

<script runat="server">
    string[] rolesArray;

    public void Page_Load(object sender, EventArgs args)
    {
        if (!IsPostBack)
        {
            // Bind roles to ListBox.

            rolesArray = Roles.GetAllRoles();
            RolesListBox.DataSource = rolesArray;
            RolesListBox.DataBind();
        }
    }


    public void DeleteRole_OnClick(object sender, EventArgs args)
    {
        string delRole = "";

        try
        {
            delRole = RolesListBox.SelectedItem.Value;

            Roles.DeleteRole(delRole);

            Msg.Text = "Ruolo '" + Server.HtmlEncode(delRole) + "' Cancellato.";


            // Re-bind roles to ListBox.

            rolesArray = Roles.GetAllRoles();
            RolesListBox.DataSource = rolesArray;
            RolesListBox.DataBind();
        }
        catch
        {
            Msg.Text = "<u>Nessun</u> ruolo " + Server.HtmlEncode(delRole) + " cancellato.";
        }

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="TitoloVetrina">
      Cancella ruoli utente</h3>
    <asp:Label ID="Msg" ForeColor="maroon" runat="server" /><br />
    <table class="TableGen" border="0">
       <tr>
        <td >
          <asp:ListBox ID="RolesListBox" runat="server" Rows="8" />
        </td>
        <td>

          <asp:Button Text="Cancella ruolo" ID="DeleteRoleButton" runat="server" OnClick="DeleteRole_OnClick" /></td>
      </tr>
    </table>
</asp:Content>

