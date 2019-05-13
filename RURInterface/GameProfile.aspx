<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameProfile.aspx.cs" Inherits="RURInterface.GameProfile" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class ="row"> <%-- row 1 --%>
        <label class="col-sm-5">Game Profile Page</label>
        <asp:TextBox runat="server" Text="Each specific game when clicked on is directed here"> </asp:TextBox>
    </div> <%-- end of row 1 --%>

    <div class="col-sm-8">
        <label class="col-sm-6">Select Game: </label>
        <div class="col-sm-5">
            <asp:DropDownList ID="ddlGameID" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceTrialFromLocal" 
                    DataTextField="gameID" DataValueField="gameID" 
                    OnSelectedIndexChange="ddlGameID_SelectedIndexChanged" CssClass="form-control"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceTrialFromLocal" runat="server" ConnectionString="<%$ ConnectionStrings:WebAppFinalConnectionString %>" 
                SelectCommand="SELECT [gameID], [home_team], [home_score], [home_mascot], [home_abbr], [away_team], [away_score], [away_mascot], [away_abbr], [date_time], [game_round], [ref1], [ref2], [ref3] 
                FROM [bracket]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RateUrRefDbConnectionString %>" 
                SelectCommand="SELECT [id], [home_team], [home_score], [home_mascot], [home_abbr], [away_team], [away_score], [away_mascot], [away_abbr], [date_time], [game_round], [ref1], [ref2], [ref3] 
                FROM [bracket]">
            </asp:SqlDataSource>

            <%-- Display the game info --%>
            
                <h1 class="display-2"><asp:Label ID="lblHomeTeam" runat="server" ></asp:Label></h1>
                <h1 class="display-2"><asp:Label ID="lblAwayTeam" runat="server" ></asp:Label></h1>
                <p><asp:Label ID="lblRef1" runat="server" ></asp:Label></p>
                <p><asp:Label ID="lblRef2" runat="server" ></asp:Label></p>
                <p><asp:Label ID="lblRef3" runat="server" ></asp:Label></p>
        </div>
    </div>
</asp:Content>

