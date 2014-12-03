<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestMenu1.aspx.cs" Inherits="TestMenu1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-1.4.1-vsdoc.js"></script>
     <style type="text/css">
        .menu
        {
            width: 913px;
            font-family: verdana, Segoe UI;
            margin: 0 auto;
            border: 1px solid #B34C00;
            border-radius: 4px;
        }
        .menu ul
        {
            padding: 10px;
            background-color: #FF6600;
            float: left;
            margin: 0px;
            list-style: none;
        }
        .menu ul li        {
            display:inline-block;
            float: left;
            position: relative;
            cursor: pointer;
        }
        .menu ul li a        { 
            cursor:pointer;
            display: block;
            padding: 10px;
            float: left;
            color: #fff;
            text-decoration: none;
        }
        .menu ul li ul
        {
            display: none;
            margin-top: 10px;
        }
        .menu ul li:hover ul
        {
            display: block;
            width: 200px;
            position: absolute;
            left: 0px;
            top: 25px;
            background: #FF6600;
            border: 1px solid #B34C00;
            border-top: none;
            color: #fff;
        }
        .menu ul li:hover ul li
        {
            padding: 5px;
            float: none;
            display: block;
        }
        .menu ul li:hover ul li a
        {
            padding: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="menu">
            <asp:Panel ID="Panel1" runat="server" Width="913px" Style="margin: 0px">
            </asp:Panel>
        </div>
        <asp:SqlDataSource 
            ID="SqlDataSource2" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            SelectCommand="Select nav.id
                            , nav.TxtMenu
                             from nav 
                            go 
                            select menu.id
                            , menu.TxtSubMenu 
                            from Menu">
        </asp:SqlDataSource>
    </form>
</body>
</html>
