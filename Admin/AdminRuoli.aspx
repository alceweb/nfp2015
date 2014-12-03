<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" %>
<%@ Import Namespace="System.Web.Security" %>

<script runat="server">
string[] rolesArray;

public void Page_Load(object sender, EventArgs args)
{
  if (!IsPostBack)
  {
    // Bind roles to GridView.

    rolesArray = Roles.GetAllRoles();
    RolesGrid.DataSource = rolesArray;
    RolesGrid.DataBind();
  }
}

public void CreateRole_OnClick(object sender, EventArgs args)
{
  string createRole = RoleTextBox.Text;

  try
  {
    if (Roles.RoleExists(createRole))
    {
      Msg.Text = "Role '" + Server.HtmlEncode(createRole) + "' already exists. Please specify a different role name.";
      return;
    }

    Roles.CreateRole(createRole);

    Msg.Text = "Role '" + Server.HtmlEncode(createRole) + "' created.";

    // Re-bind roles to GridView.

    rolesArray = Roles.GetAllRoles();
    RolesGrid.DataSource = rolesArray;
    RolesGrid.DataBind();
  }
  catch (Exception e)
  {
    Msg.Text = "Role '" + Server.HtmlEncode(createRole) + "' <u>not</u> created.";
    Response.Write(e.ToString());
  }

}

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h3 class="TitoloVetrina">Crea nuovi ruoli utente</h3>

  <asp:Label id="Msg" ForeColor="maroon" runat="server" /><br />

  Nome ruolo: 

  <asp:TextBox id="RoleTextBox" runat="server" />

  <asp:Button Text="Crea ruolo" id="CreateRoleButton"
              runat="server" OnClick="CreateRole_OnClick" />

  <br />

  <asp:GridView runat="server" CellPadding="2" id="RolesGrid" 
                Gridlines="Both" CellSpacing="2" AutoGenerateColumns="false" >
    <HeaderStyle BackColor="navy" ForeColor="white" />
    <Columns>
      <asp:TemplateField HeaderText="Ruoli esistenti" >
        <ItemTemplate>
          <%# Container.DataItem.ToString() %>
        </ItemTemplate>
      </asp:TemplateField>
    </Columns>
   </asp:GridView>
</asp:Content>

