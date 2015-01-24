<%@ Page Title="Accesso" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
    </hgroup>
    
    <section id="loginForm">
        <asp:Login runat="server" ViewStateMode="Disabled" RenderOuterTable="false">
            <LayoutTemplate>
                <p class="validation-summary-errors">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
                <fieldset>
                    <legend>Form di accesso</legend>
                    <ol>
                        <li>
                            <asp:Label runat="server" AssociatedControlID="UserName">Nome utente / Username / Имя пользователя</asp:Label>
                            <asp:TextBox runat="server" ID="UserName" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="Il campo Nome utente è obbligatorio." />
                        </li>
                        <li>
                            <asp:Label runat="server" AssociatedControlID="Password">Password / Password / пароль</asp:Label>
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="Il campo Password è obbligatorio." />
                        </li>
                        <li>
                            <asp:CheckBox runat="server" ID="RememberMe" />
                            <asp:Label runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">Memorizza neme utente / save account / сохранить учетную запись </asp:Label>
                        </li>
                    </ol>
                    <asp:Button runat="server" CommandName="Login" Text="Accedi" />
                </fieldset>
            </LayoutTemplate>
        </asp:Login>
            <ul>
                <li>
                    <span style="color:red; font-weight:bold">Password dimenticata? </span>Scrivi a: <strong>congress@2015NFPcongress.org</strong> Indicando il nome utente o la mail di riferimento.
                </li>
                <li>
                    <strong><asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Esegui registrazione</asp:HyperLink></strong>se non è disponibile un account
                </li>
                <li>
                    <strong><asp:HyperLink runat="server" ID="RegisterHyperLink1"  ViewStateMode="Disabled" >Register</asp:HyperLink></strong>if you don't have an accountt
                </li>
                <li>
                    <strong><asp:HyperLink runat="server" ID="RegisterHyperLink2" ViewStateMode="Disabled" >Регистрация</asp:HyperLink></strong>если вы не имеете учетной записи
                </li>
            </ul>
    </section>

</asp:Content>