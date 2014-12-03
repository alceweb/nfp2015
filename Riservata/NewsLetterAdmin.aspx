<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NewsLetterAdmin.aspx.cs" Inherits="Riservata_NewsLetterAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1 class="TitoloVetrina">Gestione newsletter</h1>    <asp:FileUpload ID="FileUpload1" runat="server" /><br />
    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
    <asp:Label ID="LblUploadOk" runat="server" ></asp:Label>
    <asp:Label ID="LblUploadkO" runat="server" ></asp:Label>
    <hr />
                    <asp:Repeater ID="lista" runat="server" EnableTheming="False" >
                        <HeaderTemplate>
                            <div>

                            </div>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <a href='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'>'../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'</a><br />
                            </ItemTemplate>
                        <FooterTemplate></ul></FooterTemplate>
                    </asp:Repeater>
</asp:Content>

