<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="RURInterface.Games" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class ="row"> <%-- row 1 --%>
        <label class="col-sm-5">Games Schedule Page</label>
        <asp:TextBox runat="server" ID="txtTempPgDescription" Text="This page is for the schedule of tournament" Width="783px"></asp:TextBox>
    </div> <%-- end of row 1 --%>
    
    <div class ="row"> <%-- row 2 --%>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="home_team" HeaderText="home_team" SortExpression="home_team" />
                <asp:BoundField DataField="home_score" HeaderText="home_score" SortExpression="home_score" />
                <asp:BoundField DataField="away_team" HeaderText="away_team" SortExpression="away_team" />
                <asp:BoundField DataField="away_score" HeaderText="away_score" SortExpression="away_score" />
                <asp:BoundField DataField="date_time" HeaderText="date_time" SortExpression="date_time" />
                <asp:BoundField DataField="game_round" HeaderText="game_round" SortExpression="game_round" />
                <asp:BoundField DataField="ref1" HeaderText="ref1" SortExpression="ref1" />
                <asp:BoundField DataField="ref2" HeaderText="ref2" SortExpression="ref2" />
                <asp:BoundField DataField="ref3" HeaderText="ref3" SortExpression="ref3" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RateUrRefDbConnectionString %>" SelectCommand="SELECT [home_team], [home_score], [away_team], [away_score], [date_time], [game_round], [ref1], [ref2], [ref3] FROM [bracket] ORDER BY [date_time]"></asp:SqlDataSource>
    </div> <%-- end of row 2 --%>
</asp:Content>
