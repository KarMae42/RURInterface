<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameProfile.aspx.cs" Inherits="RURInterface.GameProfile" %>
<%@ MasterType VirtualPath="~/Site.Master" %>


<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <%--javascript for tweet button--%>
    <script>window.twttr = (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0],
        t = window.twttr || {};
      if (d.getElementById(id)) return t;
      js = d.createElement(s);
      js.id = id;
      js.src = "https://platform.twitter.com/widgets.js";
      fjs.parentNode.insertBefore(js, fjs);

      t._e = [];
      t.ready = function(f) {
        t._e.push(f);
      };

      return t;
        }(document, "script", "twitter-wjs"));
  </script>

    <div class ="container"> <%-- row 1 --%>
        <h1 class="blue">Game Profile</h1>
    </div> <%-- end of row 1 --%> 
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RateUrRefDbConnectionString %>" 
                SelectCommand="SELECT bracket.id, bracket.home_team, bracket.home_score, bracket.home_mascot, bracket.home_abbr, bracket.away_team, bracket.away_score, bracket.away_mascot, bracket.away_abbr, bracket.date_time, bracket.game_round, bracket.ref1, bracket.ref2, bracket.ref3, referee_star_ratings.star_rating 
                FROM bracket INNER JOIN referee_star_ratings ON referee_star_ratings.game_id = bracket.id">
            </asp:SqlDataSource>


            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RateUrRefDbConnectionString %>" SelectCommand="SELECT bracket.id, bracket.home_team, bracket.home_score, bracket.home_mascot, bracket.home_abbr, bracket.away_team, bracket.away_score, bracket.away_mascot, bracket.away_abbr, bracket.date_time, bracket.game_round, bracket.ref1, bracket.ref2, bracket.ref3, referee_star_ratings.star_rating, team.logo, team_1.logo AS Expr1 FROM bracket INNER JOIN referee_star_ratings ON referee_star_ratings.game_id = bracket.id INNER JOIN team ON team.team = bracket.home_team INNER JOIN team AS team_1 ON bracket.away_team = team.logo"></asp:SqlDataSource>

            <%-- Display the game info --%>
            <div class="container">
   
                <h1 class="display-2"><asp:Label ID="lblHomeTeam" runat="server" ></asp:Label>
                    
                    <asp:Image ID ="imgHomeTeam" runat="server"/>

                </h1>
                <h1 class="display-2"><asp:Label ID="lblAwayTeam" runat="server" ></asp:Label></h1>

               <%--   HTML for Tweet Button--%>
    <div class ="row"> <%-- row 1 --%>
        <div class="col-sm-5">
            <%--<asp:DropDownList ID="ddlGameID" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1"
                DataTextField="id" DataValueField="id"
                OnSelectedIndexChange="ddlGameID_SelectedIndexChanged" CssClass="form-control"></asp:DropDownList>--%>
    </div> <%-- end of row 1 --%>

    <div class="col-sm-8">
        <a href="https://twitter.com/intent/tweet"
        data-size="large"
        data-text =" "
        data-url=" "
        data-hashtags ="RUR,MarchMadness"
        data-via="RateUrRef"
        data-related="RateUrRef"
        class="twitter-share-button">Tweet</a>
                
                <h2>Referees:</h2>

                <div>
                    <asp:Button class="refButton" ID="btnRef1Info" runat="server" Text="Score" OnClick="ref1Info_Click" />

                    <asp:Button class="refButton" ID="btnRef2Info" runat="server" Text="Score" OnClick="ref2Info_Click" />

                    <asp:Button class="refButton" ID="btnRef3Info" runat="server" Text="Score" OnClick="ref3Info_Click" />
                </div>

                <br>
                <br>
                <h2 class="blue">Game Performance Score: <asp:Label ID="lblSentimentScore" runat="server"></asp:Label> </h2>
              </div>

        </div>
    </div>
 

</asp:Content>

