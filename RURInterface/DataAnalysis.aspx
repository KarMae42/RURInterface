<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataAnalysis.aspx.cs" Inherits="RURInterface.DataAnalysis" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class ="container"> <%-- row 1 --%>
        <h1 class="blue">Data Analysis</h1>
    </div> <%-- end of row 1 --%>

    <div class="container">
        <p>
            The analysis for RateUrRef was done through extracting almost half a million tweets from Twitter. 
            From there, the data was cleaned and we found about 50,000 usable tweets. With these tweets, we were able to run 
            sentiment analysis on them as well as find out frequencies of the most used words. To find these frequencies, a 
            combination of WordStat8 and Tableau were used. This page shows some of the results that were found using these 
            programs. For example, the team that appeared in most tweets during the March Madness tournament was Duke. Another
            example shows that the most tweeted about game was the Championship game. In the future, RateUrRef will dive more 
            into the statistics and provide an more focused view of the data analysis.
        </p>
    </div>
    <div class="container">
        <img src="Images/team-frequency.jpg" alt="Bar Chart" style="width:600px;height:600px;" />
    </div>
    <div class="container">
        <img src="Images/10_most_frequent_words.jpg" alt="Bar Chart" style="width:600px;height:600px;" />
    </div>
    <div class="container">
        <img src="Images/missed-ncaa-refs-blew.jpg" alt="Bar Chart" style="width:600px;height:600px;" />
    </div>
    <div class="container">
        <img src="Images/refs-frequency.jpg" alt="Bar Chart" style="width:600px;height:600px;" />
    </div>

</asp:Content>

