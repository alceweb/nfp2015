<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ResetPasswordForm.aspx.cs" Inherits="ResetPasswordForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="tbl1" >
        <tr>
            <td colspan="2">
                <h2>Richiesta reset password</h2>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="NomeLabel" runat="server" Text="Il tuo nome"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="NomeTextBox" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="CognomeLabel" runat="server" Text="il tuo cognome"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="CognomeTextBox" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="MailLabel" runat="server" Text="La mail alla quale inviare la nuova password"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="MailTextBox" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="UserLabel" runat="server" Text="Nome utente registrato"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="InviaButton" OnClick="InviaButton_Click" runat="server" Text="Invia" />
            </td>
            <td>
                <asp:Button ID="Button2" CommandName="Delete" runat="server" Text="Annulla" />
            </td>
        </tr>
    </table>
</asp:Content>

