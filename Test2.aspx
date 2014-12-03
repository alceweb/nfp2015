<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Test2.aspx.cs" Inherits="Test2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>qui</h2>
    <asp:Label ID="lbl" runat="server" ></asp:Label><br />
    <asp:Label ID="lbl1" runat="server" ></asp:Label>
    <asp:ListView ID="ListView1" runat="server" SelectedIndex="-1" OnDataBound="ListView1_DataBound" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" DataKeyNames="Tipologia" DataSourceID="SqlDataSource1" >
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:LinkButton ID="LinkButton1" CommandName="Select" OnClick="LinkButton1_Click" runat="server">LinkButton</asp:LinkButton>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="ZonaLabel" runat="server" Text='<%# Eval("Zona") %>' />
                </td>
                <td>
                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                </td>
                <td>
                    <asp:Label ID="TipologiaLabel" runat="server" Text='<%# Eval("Tipologia") %>' />
                </td>
                <td>
                    <asp:Label ID="PrezzoLabel" runat="server" Text='<%# Eval("Prezzo") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="DisponibileCheckBox" runat="server" Checked='<%# Eval("Disponibile") %>' Enabled="false" />

                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">Id</th>
                                <th runat="server">Zona</th>
                                <th runat="server">Categoria</th>
                                <th runat="server">Tipologia</th>
                                <th runat="server">Prezzo</th>
                                <th runat="server">Disponibile</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="ZonaLabel" runat="server" Text='<%# Eval("Zona") %>' />
                </td>
                <td>
                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                </td>
                <td>
                    <asp:Label ID="TipologiaLabel" runat="server" Text='<%# Eval("Tipologia") %>' />
                </td>
                <td>
                    <asp:Label ID="PrezzoLabel" runat="server" Text='<%# Eval("Prezzo") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="DisponibileCheckBox" runat="server" Checked='<%# Eval("Disponibile") %>' Enabled="false" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Hotels]"></asp:SqlDataSource>
</asp:Content>

