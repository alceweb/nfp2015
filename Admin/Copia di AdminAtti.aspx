<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Copia di AdminAtti.aspx.cs" Inherits="Admin_AdminAtti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="TitoloVetrina">Gestione atti congresso</h1>
    <table>
        <tr>
            <td style="height:30px">
                <h1 style="color:green">Aggiungi documento</h1>
                <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
                <asp:Label ID="LblUploadOk" runat="server"></asp:Label>
                <asp:Label ID="LblUploadkO" runat="server"></asp:Label>
                <hr />
                <h1 style="color:red">Cancella documento</h1>
                <asp:DropDownList ID="ddl1" runat="server" ></asp:DropDownList><br />
                <asp:Button ID="btnDelete" OnClick="btnDelete_Click" OnClientClick='return confirm("Stai cancellando il documento selezionato. Continuare?")' runat="server"  Text="Elimina" PostBackUrl="~/Admin/AdminNewsLetter.aspx" />
                <asp:Label ID="lblDeleteOk"  runat="server"></asp:Label>
                <br />
                <hr />
            </td>
            <td rowspan="2">
                <asp:ListView ID="ListViewNl" runat="server">
                    <AlternatingItemTemplate>
                        <tr>
                            <td style="background-color: #dedac7">
                                <a href='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'>'<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'</a><br />

                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <a href='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'>'<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>'</a><br />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table>
                            <tr>
                                <td>
                                    <table>
                                        <tr>
                                            <th></th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server"></tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>

                </asp:ListView>
            </td>
        </tr>
    </table>    
</asp:Content>

