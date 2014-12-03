<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="Content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSourceContent" DataKeyNames="Id,Id1">
        <EmptyDataTemplate>
            <table style="width: 95%; margin-right: auto; margin-left: auto">
                <tr>
                    <td>
                    </td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <ItemTemplate>
<%--            <span class="BoldItalic">
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TxtMenu") + " - " %>'></asp:Label>
            <asp:Label CssClass="Bold" ID="LabelMenu" runat="server" Text='<%# Eval("TxtSubMenu") %>'></asp:Label><br /><br />
            </span>--%>
            <asp:Label CssClass="TitoloVetrina" ID="LabelTitolo" runat="server" Text='<%# Eval("TitoloPagina") %>'></asp:Label><br />
            <asp:Label ID="LabelDescrizione" runat="server" Text='<%# Eval("TestoPagina") %>'></asp:Label>
            <br /><hr />
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
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourceContent" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT * FROM [Menu] Inner Join [Nav] on [Menu].[IdNav] = [Nav].[Id] WHERE ([Menu].[Id] = @Id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ListViewMenu" Name="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div style="background-color: #E2DFCD; width:100%; display:table; position:relative; margin-right:10px">
<%-- menu immagini a destra --%>
            <div class="float-right" style="padding-right:15px;">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Registrati/Newsletter.aspx" runat="server">
                    <asp:Image CssClass="Indeximg" ID="Image1" ImageUrl="~/Images/NewsLetter.png" runat="server" />
                </asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" NavigateUrl="#nogo" runat="server">
                    <asp:Image CssClass="Indeximg" ID="Image2" ImageUrl="~/Images/Calendario.jpg" runat="server" />
                </asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" NavigateUrl="~/negozio.aspx" runat="server">
                    <asp:Image CssClass="Indeximg" ID="Image4" ImageUrl="~/Images/PayPal.jpg" runat="server" />
                </asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" NavigateUrl="~/Iscritti/Download.aspx" runat="server">
                    <asp:Image CssClass="Indeximg" ID="Image3" ImageUrl="~/Images/Download.jpg" runat="server" />
                </asp:HyperLink>
            </div>
            <asp:Panel  ID="PanelEn" Visible="false" runat="server">
                <div style=" margin-left: 10px; padding-left: 30px;">
                    <h2>Welcome!</h2>
                        <h3 style="color:#6d4233; font-weight:bolder">We invite you to browse the website by selecting the menu item you desire (Home, Program, General Information, Registration and Bookings, Tools, Sponsors, Contacts) which you can find at the top of the page (Just below the logo).  The corresponding sub-menu will appear.
                        We wish you good browsing!</h3>
                    <h3>When you register early for the NFP Congress 2015, you will avail yourself of the following benefits:</h3>
                    <ol class="round">
                        <li class="one" ><h5>Register on the Congress website:</h5>
                            You will receive our newsletter and be updated   on current news posted on the NFP Congress website as well as that of the Congress!
                            <a href="Account/Register.aspx">Register...</a>
                        </li>
                        <li class="two"><h5>Please provide your personal information:</h5>
                            This is mandatory to register for the Congress!
                            <a href="Registrati/Iscritti.aspx">Insert...</a>
                        </li>
                        <li class="three"><h5>By registering for the Congress:</h5>
                            you may participate in various events and gain access to the Acts after the Congress. Go to menu: <strong> <em style="color:#706840">"REGISTRATION & BOOKIMG" - "Congress"</em></strong>
                        </li>
                        <li class="four"><h5>Reserve a hotel room for yourself and other members of your organization at the earliest possible:</h5>
                            Please keep in mind that it will be difficult to find hotel rooms in Milan at convenient prices during the EXPO 2015 period. Early booking is highly recommended! Go to menu: <strong> <em style="color:#706840">"REGISTRATION & BOOKIMG" - "Ospitality & Hotels"</em></strong>
                        </li>
                        <li class="five"><h5>Call for Abstract:</h5>
                            is now open for participants who would like to participate in the Congress by proposing a paper. Go to menu: <strong> <em style="color:#706840">"PROGRAM" - "Call for Abstract"</em></strong>
                    </ol>
<br /><br />
                </div>
            </asp:Panel>
            <asp:Panel  ID="PanelIt" Visible="false" runat="server">
                <div style=" margin-left: 10px; padding-left: 30px;">
                    <h2>Benvenuto!</h2>
                    <h3 style="color:#6d4233; font-weight:bolder">Naviga sul sito scegliendo la voce del menù che ti interessa (Home, Programma, Informazioni generali, Iscrizione e Prenotazioni, Strumenti, Sponsor, Contatti) che trovi in testa alla pagina, appena sotto il  logo, e appena sotto apparirà il corrispondente sottomenù: buona navigazione!</h3>
                    <h3>Ecco alcuni suggerimenti su quello che puoi fare:</h3>
                    <ol class="round">
                        <li class="one" ><h5>Registrati sul sito:</h5>
                            Riceverai le nostre Newsletter e sarai sempre aggiornato sulle novità del sito e del congresso!
                            <a href="Account/RegisterConfirmation.aspx">Registrati...</a>
                        </li>
                        <li class="two"><h5>Fornisci i tuoi dati personali:</h5>
                            è necessario per potersi iscrivere al Congresso.
                            <a href="Registrati/Iscritti.aspx">Iscriviti...</a>
                        </li>
                        <li class="three"><h5>Iscriviti al Congresso:</h5>
                            potrai partecipare ad un evento entusiasmante e, dopo il Congresso, leggere gli Atti. Vai al menu:<strong> <em style="color:#706840">"ISCRIZIONE E PRENOTAZIONI" - "Congresso"</em></strong>
                        </li>
                        <li class="four"><h5>4.	Prenota l’albergo per te ed i tuoi accompagnatori al più presto:</h5>
                            trovare posti in albergo a Milano a prezzi vantaggiosi durante l’EXPO2015 sarà difficile!  Vai al menu:<strong><em style="color:#706840">"ISCRIZIONE E PRENOTAZIONI" - "Ospitalità ed Alberghi"</em></strong>
                        </li>
                        <li class="five"><h5>Call for Abstract:</h5>
                            Per chi desidera proporre un intervento al Congresso è aperto il Call for Abstract! Vai al menu:<strong><em style="color:#706840">"PROGRAMMA" - "Call for Abstract"</em></strong>
                        </li>
                    </ol>
<br /><br />
                </div>
            </asp:Panel>
            <asp:Panel  ID="PanelGe" Visible="false" runat="server">
                <div style=" margin-left: 10px; padding-left: 30px;">
                    <h2>Willkommen!</h2>
                        <h3 style="color:#6d4233; font-weight:bolder">Wir laden Sie ein, auf der Homepage unterhalb des Logos die gewünschten Menus anzuwählen (Home, Programm, Allgemeine Informationen, Werkzeuge, Sponsoring, Kontakte). Dann erscheinen die Unter-Menus. Wir wünschen Ihnen angenehmes Navigieren.

                        </h3>
                    <h3>Wenn Sie sich frühzeitig für den NFP-Kongress 2015 anmelden, profitieren Sie von einigen Vorteilen:</h3>
                    <ol class="round">
                        <li class="one" ><h5>Registrieren Sie sich auf der Homepage des Kongresses:</h5>
                            Sie erhalten dann laufend unsere neuen Mitteilungen zur Homepage und zum Kongress!
                            <a href="Account/Register.aspx">Registrieren...</a>
                        </li>
                        <li class="two"><h5>Bitte geben Sie Ihre persönlichen Daten bekannt:</h5>
                            Sie sind für die Einschreibung für den Kongress unbedingt notwendig!
                            <a href="Registrati/Iscritti.aspx">Eingabe...</a>
                        </li>
                        <li class="three"><h5>Durch Einschreibung für den Kongress können :</h5>
                            Sie an den verschiedenen Anlässen teilnehmen und erhalten nach dem Kongress die „Acta“: <strong> <em style="color:#706840">"Anmeldung und Reservierung" </em></strong>
                        </li>
                        <li class="four"><h5>Reservieren Sie so früh wie möglich eine Unterkunft zum Spezialpreis des Kongresses für Sie selber und für Ihre Begleiter:</h5>
                            Denken Sie daran, dass es wegen der parallel statt findenden EXPO 2015 später schwierig werden wird, Zimmer zu annehmbaren Preisen zu finden. Frühzeitiges Buchen ist dringend empfohlen: <strong> <em style="color:#706840">"Anmeldung und Reservation" </em></strong>
                        </li>
                        <li class="five"><h5>Call for Abstract:</h5>
                            Teilnehmer, die am Kongress einen Vortrag halten möchten. können jetzt einen Vorschlag einreichen: <strong> <em style="color:#706840">"Programm"– "Vorschläge"</em></strong>
                    </ol>
<br /><br />
                </div>
            </asp:Panel>
            <asp:Panel  ID="PanelEs" Visible="false" runat="server">
                <div style=" margin-left: 10px; padding-left: 30px;">
                    <h2>¡Bienvenido!</h2>
                        <h3 style="color:#6d4233; font-weight:bolder">Navegue por la web seleccionando el elemento deseado (Home, Programa, Información general, Registro, Inscripción, Herramientas, Sponsors, Contactos) que se encuentra en la parte superior de la página justo por debajo del logo y aparecerá un sub-menú .<strong>¡Buena navegación!</strong></h3>
                    <h3>Le proponemos algunas sugerencias que pueden ser de su interés:</h3>
                    <ol class="round">
                        <li class="one" ><h5>Regístrese en la web:</h5>
                            Recibirá nuestra Newsletter y será informado sobre las novedades y sobre el congreso!
                            <a href="Account/Register.aspx">Registrarse...</a>
                        </li>
                        <li class="two"><h5>Introduzca sus datos personales:</h5>
                            es necesario para poder inscribirse en el Congreso!
                            <a href="Registrati/Iscritti.aspx">Incluyat...</a>
                        </li>
                        <li class="three"><h5>Inscríbase al Congreso:</h5>
                            Puede participar en un evento interesante y, después del mismo, disponer de la información en las Actas. Iir al menú: <strong> <em style="color:#706840">"ISCRIPCION Y RESERVAS" - "Congreso"</em></strong>
                        </li>
                        <li class="four"><h5>Reserve un alojamiento para usted y sus acompañantes lo antes posible:</h5>
                            Puede encontrar plazas disponibles en Milán a precios favorables ya que durante la Expo 2015 será más difícil! Iir al menú: <strong> <em style="color:#706840">"ISCRIPCION Y RESERVAS" - "Hoteles"</em></strong>
                        </li>
                        <li class="five"><h5>Call for Abstract:</h5>
                            Está abierto el Call for Abstrac para aquellos que deseen intervenir en el Congreso! Iir al menú: <strong> <em style="color:#706840">"PROGRAMA" - "Call for Abstract"</em></strong>
                    </ol>
<br /><br />
                </div>
            </asp:Panel>
            <asp:Panel  ID="PanelFr" Visible="false" runat="server">
                <div style=" margin-left: 10px; padding-left: 30px;">
                    <h2>Bienvenue!</h2>
                    <h3 style="color:#6d4233; font-weight:bolder">Nous vous invitons à feuilleter le site Internet en sélectionnant la page du menu que vous désirez  (Accueil, Programme, Informations générales, Enregistrement et réservation, Outils, Sponsors, Contacts) : le titre de la page se trouve en haut de celle-ci (juste au-dessous du logo). Le sous-menu correspondant apparaîtra: bonne découverte!</h3>
                    <h3>Si vous vous enregistrez tôt au congrès IEEF 2015, vous profiterez des avantages suivants:</h3>
                    <ol class="round">
                        <li class="one" ><h5>Enregistrement sur le site du congrès (lien obtenu à partir du site de l’IEEF): vous recevrez notre lettre circulaire et serez informé(e) au quotidien grâce aux nouvelles envoyées sur les deux sites de l’IEEF et du congrès (onglet Enregistrement et réservation)!</h5>
                            <a href="Account/Register.aspx">se connecter...</a>
                        </li>
                        <li class="two"><h5>fournir vos informations personnelles:</h5>
                            Pour vous enregistrer au congrès, vous devez absolument fournir vos informations personnelles!
                            <a href="#">comprendre...</a>
                        </li>
                        <li class="three"><h5>En vous enregistrant au congrès:</h5>
                            vous pourrez participer aux diverses manifestations et recevoir les actes après le congrès. Allez dans le menu: <strong><em>"Inscription et Réservation" - "Congres"</em></strong>
                        </li>
                        <li class="four"><h5>4.	Réservez le plus tôt possible une chambre d’hôtel  pour vous et les autres membres de votre organisation:</h5>
                            Sachez qu’il sera difficile de trouver des chambres d’hôtel à Milan à des prix convenables pendant la durée de l’EXPO 2015.  Il est donc fortement recommandé de réserver tôt! Allez dans le menu: <strong><em>"Inscription et Réservation" - "Hotels"</em></strong>
                        </li>
                        <li class="five"><h5>Call for Abstract:</h5>
                            est maintenant ouvert aux participants qui aimeraient contribuer au congrès en proposant un article! Allez dans le menu: <strong><em>"Programme" - "Call for Abstract"</em></strong>
                    </ol>
<br /><br />
                </div>
            </asp:Panel>
            <asp:Panel  ID="PanelRu" Visible="false" runat="server">
                <div style=" margin-left: 10px; padding-left: 30px;">
                    <h2>добро пожаловать!</h2>
                    <h3 style="color:#6d4233; font-weight:bolder">Просмотривайте веб-сайт, выбрав интересующий Вас пункт меню, (Главная, Программа, Дополнительная информация, Регистрация и бронирование онлайн, инструменты, Спонсоры, Контакты), которые находятся в верхней части страницы, чуть ниже логотипа, где появится соответствующее дополнительное меню:  удачи!</h3>
                    <h3>Вот несколько советов о том, что вы можете сделать:</h3>
                    <ol class="round">
                        <li class="one" ><h5>Регистрация на сайте:</h5>
                            вы будете получать нашу рассылку и будете в курсе новостей сайта и конгресса! (Ссылка Зарегистрироваться)
                            <a href="Account/Register.aspx">Ссылка Зарегистрироваться...></a>
                        </li>
                        <li class="two"><h5>Предоставьте ваши личные данные:</h5>
                            это необходимо для участия в Конгрессе!
                            <a href="Registrati/PreFormIscrizione.aspx">-----></a>
                        </li>
                        <li class="three"><h5>Зарегистрируйтесь для участия в Конгрессе:</h5>
                            Вы можете принять участие в захватывающем мероприятии, и после съезда, прочитать акты.<strong><em> "Регистрация и бронь" - "Конгресс"</em></strong>
                        </li>
                        <li class="four"><h5>4.	Забронируйте номер для себя и членов Вашей группы  как можно скорее:</h5>
                            найти места в отелях Милана по выгодным ценам во время EXPO2015 будет трудно! <strong><em>"Регистрация и бронь" + "Размещение и гостиницы"</em></strong>
                        </li>
                        <li class="five"><h5>5.	Для тех, кто хочет выступить с докладом на Конгрессе:</h5>
                            открыта подача заявок на публикацию тезисов! <strong><em>"программа" - "Заявка на публикацию тезисов"</em></strong>
                    </ol>
                   <p>
                   </p><br />
                </div>
            </asp:Panel>

    </div>
    </asp:Content>

