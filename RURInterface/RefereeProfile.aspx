<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RefereeProfile.aspx.cs" Inherits="RURInterface.RefereeProfile" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class ="container"> <%-- row 1 --%>
        <h1 class="blue">Referee Profile</h1>
    </div> <%-- end of row 1 --%>
    
    <div class="container">
    
    <asp:DropDownList ID="ddlrefSelect" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" 
        DataTextField="Referee" DataValueField="Referee" 
        OnSelectedIndexChanged="ddlrefSelect_SelectedIndexChanged"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RateUrRefDbConnectionString %>" 
        SelectCommand="SELECT [game_id] FROM [referee_star_ratings]"></asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RateUrRefDbConnectionString %>" 
        SelectCommand="SELECT [Referee], [Average_star_rating] FROM [referee_average_star_rating]"></asp:SqlDataSource>
    </div>
    <div class="container"> <%--Display ref from connecting game clicked??? --%>
        <h1><asp:Label ID="lblRefName" runat="server" ></asp:Label></h1>
        <%--<p><asp:Label ID="lblsentimentScore" runat="server" ></asp:Label></p>--%>
        <h2> Referee Performance Score: <asp:Label ID="lblAverageRate" runat="server" ></asp:Label></h2>

    </div>
   
    <asp:Repeater ID="refereeDisplayRepeater" runat="server" DataSourceID="SqlDataSource3" OnItemCommand="refereeDisplayRepeater_ItemCommand">
        <ItemTemplate>
            <div><a href="<%# Eval("Referee") %>">
                <ul>
                    <span><%# Eval("Referee") %></a></span>
                    <span><%# Eval("Average_star_rating") %></span>
                </ul>
            </div>
        </ItemTemplate>
    </asp:Repeater>

    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RateUrRefDbConnectionString %>" 
        SelectCommand="SELECT referee_star_ratings.game_id, referee_star_ratings.referee_name, referee_star_ratings.star_rating, bracket.home_team, bracket.away_team, referee_average_star_rating.Average_star_rating 
        FROM referee_star_ratings 
        INNER JOIN bracket ON bracket.id = referee_star_ratings.game_id 
        INNER JOIN referee_average_star_rating ON referee_average_star_rating.Referee = referee_star_ratings.referee_name 
        ORDER BY referee_star_ratings.referee_name"></asp:SqlDataSource>
    

</asp:Content>


