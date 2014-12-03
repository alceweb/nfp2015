<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PreFormIscrizione.aspx.cs" Inherits="Registrati_PreFormIscrizione" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
        <h5 style="text-align:center">
            Per iscriversi al Congresso è necessario prima leggere ed accettare la dichiarazione sul trattamento dei dati e compilare la scheda dei dati personali<br />
To subscribe to the Congress, it is necessary  you have read and accepted the privacy statement and to fill in the personal data form<br />
Чтобы подписаться на съезде, необходимо вы прочел и принял заявление о конфиденциальности и заполнить в личном виде данных
        </h5>
    <div style="width: 600px; margin-right: auto; margin-left: auto">
            <asp:TextBox ID="TextBox1" Width="100%" Height="500px" runat="server" ReadOnly="True" TextMode="MultiLine">
                INFORMATION PURSUANT TO ART. 13 of Legislative Decree 196/2003
                Associazione Sintotermico C.A.Me.N., with registered office in Milano, Via San Cristoforo 3, Tax Code 97380760153, process owner, ensures the processing of personal data provided by users and the companies they represented, with material also computer, solely for purposes related to the provision of services described herein and, subject to their consent, to update on initiatives and/offers of the Company. The conferment of data is required to allow the execution of the requested services, therefore, the failure to provide such data does not allow providing the specified services. The subjects that will be aware of such personal information will, in addition to the owner, the staff working in the following company sectors: sales offices, technical offices, administrative offices and press. In addition, the data may be communicated and/or transferred to the public administration, subsidiaries and/or parent and/or connected with Associazione Sintotermico C.A.Me.N. and its business activities, as well as data processing companies. In particular, the conclusion of this participation contract, users agree to Associazione Sintotermico C.A.Me.N. entering their personal data in the official catalog of the exhibition, which will be nationally and internationally distributed. The users also, with the requirement of participation, agrees that Associazione Sintotermico C.A.Me.N.: insert, for promotional and advertising purposes the personal data provided in the site of the event and in its site the list of exhibitors, which is transmitted via e-mail to companies interested in receiving information about exhibitions. The users can exercise their rights on the basis of  art. 7 D. Decree 196/2003 (updating, rectification, integration, cancellation, transformation to anonymous form or block of the data treated in violation of law, opposition, requests for information referred to in paragraph 1 and in letters 5) b), c), d), e) of paragraph 2) addressing Associazione Sintotermico C.A.Me.N., or by sending an e-mail to the following address congress@2015nfpcongress.org or info@camen.org.
Having read the information, the user hereby consents:
- Communication of data to firms/companies/external that provide services relating to the exhibitions (technical services, insurance, etc.)., The printing of the official catalog of the exhibition covered by this application, printing, shipping, and delivery of communications to customers, the surveillance and security in the Congress Centre;
- The communication of data to companies/firms/companies and subsidiary companies by IEEF (Institut Europeen pour l’Education Familiale, Paris) and LBO (Associazione La Bottega dell’Orefice, Milano), which provide on its behalf to promote services related to the commercial activity of visitors and exhibitors, to conduct market research;
- Information dissemination through publication in the Official Catalogue of the exhibition, as well as the inclusion of such of formats and multimedia;
- The sending of communications, information and advertising material regarding the exhibitions organized by IEEF and LBO or by third parties with whom IEEF or LBO has made special agreements to that effect.

            </asp:TextBox>
    </div>
        <h5 style="text-align:center">
Dichiaro di aver letto e compreso la dichiarazione (privacy) e consento al trattamento dei miei dati ed immagini personali come su esposto.<br />
I hereby declare that I have read and understood the attached information (privacy) and I also agree to the processing of my personal data and images as stated.<br />
Настоящим заявляю, что я прочитал и понял прилагаемое информацию (о конфиденциальности), и я также согласен на обработку моих персональных данных и изображений, как указано.
            <br /><br /><asp:Button ID="Button1" runat="server" Text="AGREE" PostBackUrl="~/Registrati/FormIscrizione.aspx" />
        </h5>
</asp:Content>


