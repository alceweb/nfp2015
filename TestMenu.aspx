<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestMenu.aspx.cs" Inherits="TestMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="~/Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
                 <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" GroupItemCount="6" OnSelectedIndexChanged="ListView2_SelectedIndexChanged">
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <ItemTemplate>
                        <td id="Td1" runat="server" style="">
                            <asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server"><asp:Image CssClass="ImgLingua" ID="SelectButton" runat="server" ImageUrl='<%# "Images/" + Eval("Id") + ".jpg" %>' /></asp:LinkButton>
<%--                       <a href='Default.aspx?Id=<%# Eval("Id")%>'>
                            <asp:Image CssClass="ImgLingua" ID="SelectButton" runat="server" ImageUrl='<%# "Images/" + Eval("Id") + ".jpg" %>' /></a>--%>
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [Codice] FROM [Lingue] ORDER BY [Codice]">

                </asp:SqlDataSource>
    </form>
</body>
</html>
