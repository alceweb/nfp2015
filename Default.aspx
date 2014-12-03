<%@ Page Title="Area riservata" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Area registrati / area registered / площадь записаны</h1>
                </hgroup>
            <hr />
            <h2>
                Sei registrato al sito &quot;NFP Congress 2015&quot;</h2>
            <ul>
                <li>
                Benvenuto!<br />
                Puoi riceverai le nostre Newsletter con le novità e le segnalazioni degli aggiornamenti del sito!<br />
                Scegli la lingua in cui preferisci ricevere le Newsletter <a href="Registrati/Iscritti.aspx">(clicca qui)</a><br /><br />
                </li>
                <li>
                Welcome!<br />
                You will receive our newsletter with the latest news and reports from site updates!<br />
                Choose the language of the Newsletter you will receive. <a href="Registrati/Iscritti.aspx">(click here)</a><br /><br />
                </li>
                <li>
                Добро пожаловать!<br />
                    С этого момента вы будете получать нашу рассылку с последними новостями и докладов обновлений сайта!<br />
                    Выберите язык, на котором вы предпочитаете получать информационный бюллетень. <a href="Registrati/Iscritti.aspx">нажмите здесь)</a>
                </li>
               </ul>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 507px;
            height: 191px;
            text-align: center;
        }
    </style>
</asp:Content>
