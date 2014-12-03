<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" %>
<%@ Import Namespace="System.Web.Security" %>
<%@ Import Namespace="System.Web.UI" %>

<script runat="server">

    string[] rolesArray;
    MembershipUserCollection users;
    string[] usersInRole;

    public void Page_Load()
    {
        Msg.Text = "";

        if (!IsPostBack)
        {
            // Bind roles to ListBox.

            rolesArray = Roles.GetAllRoles();
            RolesListBox.DataSource = rolesArray;
            RolesListBox.DataBind();

            // Bind users to ListBox.

            users = Membership.GetAllUsers();
            UsersListBox.DataSource = users;
            UsersListBox.DataBind();
        }

        if (RolesListBox.SelectedItem != null)
        {
            // Show users in role. Bind user list to GridView.

            usersInRole = Roles.GetUsersInRole(RolesListBox.SelectedItem.Value);
            UsersInRoleGrid.DataSource = usersInRole;
            UsersInRoleGrid.DataBind();
        }
    }


    public void AddUsers_OnClick(object sender, EventArgs args)
    {
        // Verify that a role is selected.

        if (RolesListBox.SelectedItem == null)
        {
            Msg.Text = "Scegli un ruolo.";
            return;
        }


        // Verify that at least one user is selected.

        if (UsersListBox.SelectedItem == null)
        {
            Msg.Text = "Scegli uno o più utenti.";
            return;
        }


        // Create list of users to be added to the selected role.

        string[] newusers = new string[UsersListBox.GetSelectedIndices().Length];

        for (int i = 0; i < newusers.Length; i++)
        {
            newusers[i] = UsersListBox.Items[UsersListBox.GetSelectedIndices()[i]].Value;
        }


        // Add the users to the selected role.

        try
        {
            Roles.AddUsersToRole(newusers, RolesListBox.SelectedItem.Value);

            // Re-bind users in role to GridView.

            usersInRole = Roles.GetUsersInRole(RolesListBox.SelectedItem.Value);
            UsersInRoleGrid.DataSource = usersInRole;
            UsersInRoleGrid.DataBind();
        }
        catch (Exception e)
        {
            Msg.Text = e.Message;
        }
    }


    public void UsersInRoleGrid_RemoveFromRole(object sender, GridViewCommandEventArgs args)
    {
        // Get the selected user name to remove.

        int index = Convert.ToInt32(args.CommandArgument);

        string username = ((DataBoundLiteralControl)UsersInRoleGrid.Rows[index].Cells[0].Controls[0]).Text;


        // Remove the user from the selected role.

        try
        {
            Roles.RemoveUserFromRole(username, RolesListBox.SelectedItem.Value);
        }
        catch (Exception e)
        {
            Msg.Text = "An exception of type " + e.GetType().ToString() +
                       " was encountered removing the user from the role.";
        }


        // Re-bind users in role to GridView.

        usersInRole = Roles.GetUsersInRole(RolesListBox.SelectedItem.Value);
        UsersInRoleGrid.DataSource = usersInRole;
        UsersInRoleGrid.DataBind();
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="TitoloVetrina">
      Aggiungi utenti ai ruoli</h3>
    <asp:Label ID="Msg" ForeColor="maroon" runat="server" /><br />
    <table class="TableGen" border="0">
      <tr>
        <td >
          Ruoli:
        </td>
        <td >
          <asp:ListBox ID="RolesListBox" runat="server" Rows="8" AutoPostBack="true" />
        </td>
        <td >
          Utenti: <em>(Ctrl+Click)</em>
        </td>
        <td >
          <asp:ListBox ID="UsersListBox" DataTextField="Username" Rows="8" SelectionMode="Multiple"
            runat="server" /></td>
        <td >
          <asp:Button Text="Aggiungi utente(i) al ruolo" ID="AddUsersButton" runat="server" OnClick="AddUsers_OnClick" />
        </td>
      </tr>
      <tr class="TrDoppioSel">
        <td >
          </td>
        <td colspan="4" >
          <asp:GridView runat="server" CellPadding="4" ID="UsersInRoleGrid" AutoGenerateColumns="false"
            GridLines="None" CellSpacing="0" OnRowCommand="UsersInRoleGrid_RemoveFromRole">
            <HeaderStyle BackColor="navy" ForeColor="white" />
            <Columns>
              <asp:TemplateField HeaderText="User Name" >
                <ItemTemplate>
                  <%# Container.DataItem.ToString() %>
                </ItemTemplate>
              </asp:TemplateField>
              <asp:ButtonField Text="Rimuovi dal ruolo" ButtonType="Link" />
            </Columns>
          </asp:GridView>
        </td>
      </tr>
    </table>
</asp:Content>

