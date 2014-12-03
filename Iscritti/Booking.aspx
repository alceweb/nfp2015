<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Iscritti_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 class="TitoloVetrina">Booking Hotels</h2>
    <table class="TblForm">
        <tr>
            <td>
                <h2 class="TitoloVetrina" >Location</h2>

                <asp:RadioButtonList ID="CheckBoxList" Width="550px" CssClass="CheckBoxList" runat="server" AutoPostBack="True" RepeatDirection="Vertical" >
                    <asp:ListItem Value="H1 Milano near congress site">Milano near congress site 3 or 4 stars</asp:ListItem>
                    <asp:ListItem Value="H2 Milano city 3 or 4 stars">Milano city 3 or 4 stars</asp:ListItem>
                    <asp:ListItem Value="H3 Milano near hinterland 3 or 4 stars">Milano near hinterland 3 or 4 stars</asp:ListItem>
                    <asp:ListItem Value="H4 Milano far hinterland low cost or 3 stars">Milano far hinterland low cost or 3 stars</asp:ListItem>
                </asp:RadioButtonList>
                 <h2 class="TitoloVetrina" >Room type</h2>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label1" runat="server" Text="Single room"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" EnableViewState="False">
                    <asp:ListItem Value="No single room">0</asp:ListItem>
                    <asp:ListItem Value="1 single room">1</asp:ListItem>
                    <asp:ListItem Value="2 single room">2</asp:ListItem>
                    <asp:ListItem Value="3 single room">3</asp:ListItem>
                    <asp:ListItem Value="4 single room">4</asp:ListItem>
                </asp:DropDownList><br />
                <asp:Label ID="Label2" runat="server" Text="Double room (1 double bed or 2 single bed)"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" >
                    <asp:ListItem Value="No double room">0</asp:ListItem>
                    <asp:ListItem Value="1 double room">1</asp:ListItem>
                    <asp:ListItem Value="2 double room">2</asp:ListItem>
                    <asp:ListItem Value="3 double room">3</asp:ListItem>
                    <asp:ListItem Value="4 double room">4</asp:ListItem>
                </asp:DropDownList><br />
                 <asp:Label ID="Label4" runat="server" Text="Triple room (1 double bed + 2 single or 1 single)"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="No triple room">0</asp:ListItem>
                    <asp:ListItem Value="1 triple room">1</asp:ListItem>
                    <asp:ListItem Value="2 triple room">2</asp:ListItem>
                    <asp:ListItem Value="3 triple room">3</asp:ListItem>
                    <asp:ListItem Value="4 triple room">4</asp:ListItem>
                </asp:DropDownList>
               <h2 class="TitoloVetrina">Note</h2>
                <asp:TextBox ID="TextBox1" TextMode="MultiLine" Height="400px" runat="server" ></asp:TextBox><hr />
                <asp:Button ID="Button1" runat="server" CommandName="cancel" Text="Annulla - Clear" ForeColor="#CC0000" />
                <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Invia - Send" ForeColor="#006600" />

           </td>
        </tr>
    </table>
</asp:Content>

