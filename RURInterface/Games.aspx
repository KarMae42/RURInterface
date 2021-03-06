﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="RURInterface.Games" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class ="container"> <%-- row 1 --%>
        <h1 class="blue">NCAA March Madness Game Schedule</h1>
    </div> <%-- end of row 1 --%>

    <%--From CSFinal that put together--%>
    <div class="container">
        <div class="form-group">
            <label id="lblSelectRound" for="ddlSelectRound">
                Choose a Round:
            </label></div>
            <div class="col-sm-3">
                <asp:DropDownList ID="ddlSelectRound" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="game_round" DataValueField="game_round"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RateUrRefDbConnectionString %>" 
                    SelectCommand="SELECT [game_round] FROM [gameRound]"></asp:SqlDataSource>
            </div> 
    </div>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RateUrRefDbConnectionString %>" 
        SelectCommand="SELECT [id], [home_team], [home_score], [home_mascot], [home_abbr], [away_team], [away_score], [away_mascot], [away_abbr], [date_time], [game_round], [ref1], [ref2], [ref3] 
        FROM [bracket] WHERE ([game_round] = @game_round) ORDER BY [date_time]">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlSelectRound" Name="game_round" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <div class="container">
    <asp:Repeater ID="teamDisplayRepeater" runat="server" DataSourceID="SqlDataSource3" OnItemCommand="teamDisplayRepeater_ItemCommand">
        <ItemTemplate>
            <div class="col-sm-4"><a href="/GameProfile/<%# Eval("id") %>">
            <div class="gamePod container gamePod_content gamePod_content-pod_container">
                <div class="gamePod_content">
                    <%--Home Team VS Away Team--%>
                    <div class="gamePod-description">
                        <span><%# Eval("game_round") %></span>
                    </div>
                    <ul class="gamePod-game-teams">
                        <li>
                            <span class="gamePod-game-team-name">
                                <%# Eval("home_team") %> <%# Eval("home_score") %></span>
                        </li>
                        <li>
                            <span class="gamePod-game-team-name">
                                <%# Eval("away_team") %> <%# Eval("away_score") %></span>
                        </li>
                    </ul>
               </div>
            </div>
            </a></div>
        </ItemTemplate>
    </asp:Repeater>
    </div>

</asp:Content>
