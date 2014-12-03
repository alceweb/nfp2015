<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Newsletter.aspx.cs" Inherits="Registrati_Newsletter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 class="TitoloVetrina">Newsletter</h2>
    <asp:Repeater ID="lista" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <ul>
                <li>
                           <a href='<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>'><%# (Container.DataItem as string).Substring(Server.MapPath("./Registrati/").Length).Replace("\\", "/") %>
                            </a>
                </li>
            </ul>
        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
</asp:Content>

