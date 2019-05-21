<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="RURInterface.Games" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class ="row"> <%-- row 1 --%>
        <label class="col-sm-5">Games Schedule Page</label>
        <asp:TextBox runat="server" ID="txtTempPgDescription" Text="This page is for the schedule of tournament" Width="783px"></asp:TextBox>
    </div> <%-- end of row 1 --%>

    <%--From CSFinal that put together--%>
    <div class="container">
        <div class="form-group">
            <label id="lblSelectRound" for="ddlSelectRound">
                Choose a Round:
            </label>
            <div class="col-sm-3">
                <asp:DropDownList ID="ddlSelectRound" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="game_round" DataValueField="game_round"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RateUrRefDbConnectionString %>" 
                    SelectCommand="SELECT [game_round] FROM [gameRound]"></asp:SqlDataSource>
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RateUrRefDbConnectionString %>" 
        SelectCommand="SELECT [id], [home_team], [home_score], [home_mascot], [home_abbr], [away_team], [away_score], [away_mascot], [away_abbr], [date_time], [game_round], [ref1], [ref2], [ref3] 
        FROM [bracket] WHERE ([game_round] = @game_round) ORDER BY [date_time]">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlSelectRound" Name="game_round" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <div class="row">
    <asp:Repeater ID="teamDisplayRepeater" runat="server" DataSourceID="SqlDataSource3" OnItemCommand="teamDisplayRepeater_ItemCommand">
        <ItemTemplate>
            <div class="col-sm-4">
            <div class=" gamePod_content gamePod_content-pod_container container">
                <div class="gamePod_content"><a href="/GameProfile/<%# Eval("id") %>">
                    <%--Home Team VS Away Team--%>
                    <div class="gamePod-description">
                        <span><%# Eval("game_round") %></span>
                    </div>
                    <ul class="gamePod-game-teams">
                        <li>
                            <span class="gamePod-game-team-name">
                                <%# Eval("home_team") %></span>
                            <span class="gamePod-game-team-score"><%# Eval("home_score") %></span>
                        </li>
                        <li>
                            <span class="gamePod-game-team-name">
                                <%# Eval("away_team") %></span>
                            <span class="gamePod-game-team-score"><%# Eval("away_score") %></span>
                        </li>
                    </ul>
               </a></div>
            </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    </div>

</asp:Content>
