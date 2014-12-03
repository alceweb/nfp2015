<%@ Page Language="C#" %>
<%@ Import Namespace="System.Web.Security" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

public void YesButton_OnClick(object sender, EventArgs args)
{
    string nome = ListBox1.Text.ToString();
  Membership.DeleteUser(nome);
  Response.Redirect("deleted.aspx");
}

public void CancelButton_OnClick(object sender, EventArgs args)
{
    string nome = ListBox1.Text.ToString();
    Response.Redirect("~/default.aspx");
}

protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
{
    Label2.Text = ListBox1.SelectedValue.ToString();

}
</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>Sample: Delete User</title>
</head>
<body>

<form id="form1" runat="server">
  <h3>Delete User</h3>
    <asp:Label ID="Label1" runat="server" Text="Utente da cancellare"></asp:Label>
    <asp:ListBox ID="ListBox1" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName"></asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [UserName] FROM [Users] ORDER BY [UserName]"></asp:SqlDataSource>
  <asp:Label id="Msg" ForeColor="maroon" runat="server" /><br />

  <p style="color:red">Are you sure you want to delete the userid <b>
      <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></b>?</p>

  <asp:Button id="YesButton" Text="Yes" OnClick="YesButton_OnClick" runat="server" OnClientClick="return confirm('L\'utente verrà cancellato definitivamente')" />
  <asp:Button id="CancelButton" Text="Cancel" OnClick="CancelButton_OnClick" runat="server" />
</form>

</body>
</html>

