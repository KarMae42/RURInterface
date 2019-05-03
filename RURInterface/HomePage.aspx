<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <asp:DropDownList ID="ddlTeamName" runat="server" DataSourceID="SqlDataSource1">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RateUrRefDbConnectionString %>" SelectCommand="SELECT [team] FROM [team] ORDER BY [team]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="team" DataValueField="team">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebAppFinalConnectionString %>" SelectCommand="SELECT [team] FROM [TeamTrial]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="team" DataValueField="team">
        </asp:DropDownList>
    </form>

</body>
</html>