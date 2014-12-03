<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NegozioTest.aspx.cs" Inherits="NegozioTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script type="text/javascript" src="simpleCart.js"></script>
<script type="text/javascript">
    simpleCart.email = "payment@camen.org";
    simpleCart.checkoutTo = PayPal;
    simpleCart.currency = EUR;
    simpleCart.taxRate = 0,00;
    simpleCart.shippingFlatRate = 0,00;

    simpleCart.cartHeaders = ["remove", "Name", "Price", "Quantity", "Total"];
</script>
<link href="css/styles.css" rel="stylesheet" type="text/css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <div id="wrapper">
        <div id="container">
            <p class="TitoloVetrina">NFP 2015 Congress paypal payment</p>
          <h2>Benvenuto nel sistema di pagamento PayPal di &quot;NFP 2015 CONGRESS&quot;</h2>
          <h2>Welcome to PayPal payment system of the &quot;NFP 2015 CONGRESS&quot;</h2>
          <p>Qui puoi pagare per / You can pay for</p>
          <p style="color:#6d4233"><strong>No PayPal? Dal menù vai a --&gt; Iscrizione e Pagamenti --&gt; Come Pagare / From main menu go to --&gt; Registration &amp; Bookingt --&gt; Payments</strong></p>
          <ul>
              <li>
                  Iscrizone al congresso / Subscription to the Congress
              </li>
              <li>
                    Prenotazione hotel / hotels reservations
              </li>
              <li>
                    Fare una donazione per sostenere il congresso/ make a donation to sustain the congress

              </li>
          </ul>
          <hr />
        <h2>Riassunto del pagamento / Payment summary</h2>
        <div class="simpleCart_items"></div>
    
        <div class="clear">&nbsp;</div>
    

        <div id="cartTotal">
        <a style="color:white;" href="javascript:;" class="simpleCart_empty">empty cart</a>   <span style="font-size:18px"> Total: <span class="simpleCart_finalTotal"></span></span> <a style="color:white;" href="javascript:;" class="simpleCart_checkout">checkout</a> 
        </div>
          <table class="TblNegozio">
              <tr>
                  <th >Servizi / Servicies
                  </th>
              </tr>
              <tr>
                  <td style="text-align:right">
                      <div style="width:100%; margin:0px; top: 0px; left: 0px;" class="simpleCart_shelfItem">
                          <span class="item_name">Congress Subscription</span> € 
                              <input class="item_price" />
                                <input type="button" class="item_add" value="+" style="color: #003399; font-weight: bold;"/>Aggiungi al carrello / Add to basket<br />

                      </div>
                  </td>
                  </tr>
              <tr>
                  <td style="text-align:right">
                      <div style="width:100%; margin:0px" class="simpleCart_shelfItem">
                                          <span class="item_name">Hotel booking</span> € 
                              <input class="item_price" />
                                <input type="button" class="item_add" value="+" style="color: #003399; font-weight: bold;"/>Aggiungi al carrello / Add to basket<br />

                      </div>
                  </td>
              </tr>

              <tr>
                  <td style="text-align:right">
                      <div style="width:100%; margin:0px" class="simpleCart_shelfItem">
                                          <span class="item_name">Donation</span> € 
                              <input class="item_price" />
                                <input type="button" class="item_add" value="+" style="color: #003399; font-weight: bold;"/>Aggiungi al carrello / Add to basket<br />

                      </div>
                  </td>
              </tr>
          </table>
          <table class="TblNegozio">
              <tr>
                  <th colspan="2" >Sostieni il congresso / Donate for the congress
                  </th>
              </tr>
              <tr>
                  <td style="border-style: solid; border-width: thin; border-radius: 5px">
                      <div class="simpleCart_shelfItem">
                          <h3 class="item_name">Small bricks</h3>
                          <img class="item_image" src="images/smallbrick.png" /><br />
                          <strong class="item_price">€ 1.00</strong><br />
                           <input type="button" class="item_add" value="+" style="color: #003399; font-weight: bold;"/><br />Aggiungi al carrello <br />Add to basket
<%--                         <input type="button" class="item_add" value="aggiungi al carrello" style="color: #003399; font-weight: bold;"/><br />
                          <input type="button" class="item_add" value="add to basket" style="color: #003399; font-weight: bold;"/>--%>
                      </div>
                  </td>
                  <td style="border-style: solid; border-width: thin; border-radius: 5px">
                      <div class="simpleCart_shelfItem">
                          <h3 class="item_name">Bricks</h3>
                          <img class="item_image" src="images/brick.png" /><br />
                          <strong class="item_price">€ 10.00</strong><br />
                          <input type="button" class="item_add" value="+" style="color: #003399; font-weight: bold;"/><br />Aggiungi al carrello <br />Add to basket
<%--                          <input type="button" class="item_add"  style="color: #003399; font-weight: bold;"><br />--%>
                      </div>
                  </td>
                  <td style="border-style: solid; border-width: thin; border-radius: 5px">
                      <div class="simpleCart_shelfItem">
                          <h3 class="item_name">Heavy bricks</h3>
                          <img class="item_image" src="images/heavybrick.png" /><br />
                          <strong class="item_price">€ 100.00</strong><br />
                          <input type="button" class="item_add" value="+" style="color: #003399; font-weight: bold;"/><br />Aggiungi al carrello <br />Add to basket
<%--                          <input type="button" class="item_add" value="aggiungi al carrello" style="color: #003399; font-weight: bold;"/><br />
                          <input type="button" class="item_add" value="add to basket" style="color: #003399; font-weight: bold;"/>--%>
                      </div>
                  </td>
                  <td style="border-style: solid; border-width: thin; border-radius: 5px">
                      <div class="simpleCart_shelfItem">
                          <h3 class="item_name">Pillar</h3>
                          <img class="item_image" src="images/pillar.png" /><br />
                          <strong class="item_price">€ 1,000.00</strong><br />
                          <input type="button" class="item_add" value="+" style="color: #003399; font-weight: bold;"/><br />Aggiungi al carrello <br />Add to basket
<%--                          <input type="button" class="item_add" value="aggiungi al carrello" style="color: #003399; font-weight: bold;"/><br />
                          <input type="button" class="item_add" value="add to basket" style="color: #003399; font-weight: bold;"/>--%>
                      </div>
                  </td>
              </tr>
              <tr>
                  <td>

                  </td>
                  <td colspan="2" style="border-style: solid; border-width: thin; border-radius: 5px">
                      <div style="width:100%" class="simpleCart_shelfItem">
                          <h3 class="item_name">&quot;Adotta&quot; un partecipante / &quot;Adopt&quot; some partecipants</h3>
                          <img class="item_image" src="images/Adotta.png" /><br />
                          <strong class="item_price">€ 350.00</strong><br />
                          <input type="button" class="item_add" value="+" style="color: #003399; font-weight: bold;"/><br />Aggiungi al carrello <br />Add to basket
<%--                          <input type="button" class="item_add" value="aggiungi al carrello" style="color: #003399; font-weight: bold;"/><br />
                          <input type="button" class="item_add" value="add to basket" style="color: #003399; font-weight: bold;"/>--%>
                      </div>
                  </td>
                  <td>

                  </td>
              </tr>
          </table>
        </div>
    
      <div class="clear">&nbsp;</div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
</asp:Content>

