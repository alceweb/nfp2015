<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ops.aspx.cs" Inherits="ops" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <td runat="server" style="">Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    IdLingua:
                    <asp:Label ID="IdLinguaLabel" runat="server" Text='<%# Eval("IdLingua") %>' />
                    <br />
                    TxtMenu:
                    <asp:Label ID="TxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                    <br />
                    Link:
                    <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                    <br />
                    <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" Text="Pubblica" />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="">Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    IdLingua:
                    <asp:TextBox ID="IdLinguaTextBox" runat="server" Text='<%# Bind("IdLingua") %>' />
                    <br />
                    TxtMenu:
                    <asp:TextBox ID="TxtMenuTextBox" runat="server" Text='<%# Bind("TxtMenu") %>' />
                    <br />
                    Link:
                    <asp:TextBox ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>' />
                    <br />
                    <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' Text="Pubblica" />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table style="">
                    <tr>
                        <td>Non è stato restituito alcun dato.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">IdLingua:
                    <asp:TextBox ID="IdLinguaTextBox" runat="server" Text='<%# Bind("IdLingua") %>' />
                    <br />TxtMenu:
                    <asp:TextBox ID="TxtMenuTextBox" runat="server" Text='<%# Bind("TxtMenu") %>' />
                    <br />Link:
                    <asp:TextBox ID="LinkTextBox" runat="server" Text='<%# Bind("Link") %>' />
                    <br />
                    <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' Text="Pubblica" />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="">Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    IdLingua:
                    <asp:Label ID="IdLinguaLabel" runat="server" Text='<%# Eval("IdLingua") %>' />
                    <br />
                    TxtMenu:
                    <asp:Label ID="TxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                    <br />
                    Link:
                    <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                    <br />
                    <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" Text="Pubblica" />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" border="0" style="">
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </table>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    IdLingua:
                    <asp:Label ID="IdLinguaLabel" runat="server" Text='<%# Eval("IdLingua") %>' />
                    <br />
                    TxtMenu:
                    <asp:Label ID="TxtMenuLabel" runat="server" Text='<%# Eval("TxtMenu") %>' />
                    <br />
                    Link:
                    <asp:Label ID="LinkLabel" runat="server" Text='<%# Eval("Link") %>' />
                    <br />
                    <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" Text="Pubblica" />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Nav] WHERE ([IdLingua] = @IdLingua)">
            <SelectParameters>
                <asp:QueryStringParameter Name="IdLingua" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
