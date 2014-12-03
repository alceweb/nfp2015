<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RegisterConfirmation.aspx.cs" Inherits="Account_RegisterConfirmation" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 class="TitoloVetrina">Conferma registrazione / registration confirmation / подтверждение регистрации</h2>
    <table class="message-info">
        <tr>
            <td>
        Benvenuto <%: User.Identity.Name %>!<br />
        Sei registrato al sito del <strong>NFP2015 CONGRESS</strong>. Da oggi riceverai le nostre Newsletter con le novità e le segnalazioni degli aggiornamenti del sito!<br />
        Se ti iscrivi potrai anche:
        <ul>
            <li>
                Cambiare la lingua con cui ricevi le newsletter
            </li>
            <li>
                prenotare hotel
            </li>
            <li>
                scaricare gli atti del congresso
            </li>
        </ul>
        Per iscriverti  <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Registrati/PreFormIscrizione.aspx" runat="server">(clicca qui)</asp:HyperLink><br /><br />

            </td>
            <td>
        Welcome <%: User.Identity.Name %>!<br />
        You are registered to the site of <strong>NFP2015 CONGRESS</strong>. From now on you will receive our newsletter with the latest news and reports from site updates!<br />
        If you register you can also:
        <ul>
            <li>
                Change the newsletter language
            </li>
            <li>
                book the hotels
            </li>
            <li>
                download the conference papers
            </li>
        </ul>
        To Subscribe <a href="#nogo">(clicca here)</a><br /><br />

            </td>
            <td>
        Добро пожаловать  <%: User.Identity.Name %>!<br />
        Вы зарегистрированы на сайте <strong>NFP2015 КОНГРЕССА</strong>. С этого момента вы будете получать нашу рассылку с последними новостями и докладов обновлений сайта!<br />
                Если вы зарегистрируетесь вы также можете:
        <ul>
            <li>
                язык, на котором
            </li>
            <li>
                бронирование отелей
            </li>
            <li>
                скачать документы конференц
            </li>
        </ul>
        Чтобы подписаться <a href="#nogo">(нажмите здесь)</a><br /><br />

            </td>
        </tr>
    </table>
</asp:Content>

