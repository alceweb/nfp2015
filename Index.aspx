<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="~/Content/Site.css" rel="stylesheet" />
    </head>
<body style="background-image: url('Images/Sfondosotto.png'); background-repeat: repeat; background-color: #E2DFCD;">
    <form id="form1" runat="server">
        <div class="content-wrapper">
            <div class="float-left">
                <div class="site-title">
                    <a id="A2" runat="server" href="~/Index.aspx">
                        <img src="Images/LogoNFP.png" /></a>
                </div>
            </div>
            <div class="float-right">
 <%--               <section id="login">
                    <asp:LoginView ID="LoginView1" runat="server" ViewStateMode="Disabled">
                        <AnonymousTemplate>
                            <ul>
                                <li><a id="registerLink" runat="server" href="~/Account/Register">Esegui registrazione</a></li>
                                <li><a id="loginLink" runat="server" href="~/Account/Login">Login</a></li>
                            </ul>
                            <hr />
                        </AnonymousTemplate>
                        <LoggedInTemplate>
                            <p>
                                Hello, <a id="A4" runat="server" class="username" href="~/Account/Manage" title="Manage your account">
                                    <asp:LoginName ID="LoginName1" runat="server" CssClass="username" />!
                                </a>
                                <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" LogoutText="Logout" LogoutPageUrl="~/Index.aspx" />
                            </p>
                            <p>
                                <a class="alogin" href="Registrati/FormIscrizione.aspx" >Iscriviti! / sign up! / Зарегистрироваться</a>
                            </p>
                            <hr />
                        </LoggedInTemplate>
                    </asp:LoginView>
                </section>--%>
                <a id="A3" runat="server" href="~/Riservata/TradNav.aspx"></a>
            </div>
            <table>
                <tr>
                    <td>
                        <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" GroupItemCount="6" OnSelectedIndexChanged="ListView2_SelectedIndexChanged">
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>
                                <td id="Td1" runat="server" style="">
                                    <asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server">
                                        <asp:Image CssClass="ImgLingua" ID="SelectButton" runat="server" ImageUrl='<%# "Images/" + Eval("Id") + ".jpg" %>' />
                                    </asp:LinkButton>
                                    <br />
                                    <asp:Label ID="Label1" CssClass="LabelLingua" runat="server" Text='<%# Eval("Codice") %>'></asp:Label>
                                </td>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table id="Table1" runat="server">
                                    <tr id="Tr1" runat="server">
                                        <td id="Td2" runat="server">
                                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr id="Tr2" runat="server">
                                        <td id="Td3" runat="server" style=""></td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <td id="Td4" runat="server" style="">
                                    <asp:Image ID="Image1" CssClass="ImgLinguaDown" runat="server" ImageUrl='<%# "Images/" + Eval("Id") + ".jpg" %>' />
                                    <br />
                                    <asp:Label ID="Label1" CssClass="LabelLingua" runat="server" Text='<%# Eval("Codice") %>'></asp:Label>
                                </td>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [Codice] FROM [Lingue] ORDER BY [Codice]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
<p>&nbsp;</p>
<p>&nbsp;</p>
        <div style="border: solid; border-width: thin; border-radius:15px; background-image: url('Images/SfondoIndex.jpg'); background-position: 50%; background-repeat: no-repeat; height: 512px; width: 710px; margin-right: auto; margin-left: auto; box-shadow: 6px 6px  15px #808080" >
        <span><a target="_blank" href="http://www.ieef.eu" style="float:left; width:100px;height:100px; text-decoration: none;"></a></span>
        <span><a target="_blank" href="http://www.camen.org" style="float:right; width:100px;height:100px"></a></span>
        </div>
        <footer style="background-color: #E2DFCD">
            <hr />
            <div class="float-right">
                <p>
                    &copy; <%: DateTime.Now.Year %> - <a class="a" href="http://www.cr-consult.eu">Almish<span class="c">&</span>Cesàre<span class="c">W</span>eb</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a id="A1" runat="server" href="~/Admin/AdminNav.aspx">
                        <img alt="" style="width: 25px" src="Images/Lucchetto3.Jpg" />Admin
                    </a>
                </p>
            </div>
        </footer>
    </form>
</body>
</html>
