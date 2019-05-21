<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="RURInterface.About" %>
<%@ MasterType VirtualPath="~/Site.Master" %>


<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class ="row"> <%-- row 1 --%>
       
        <label class="col-sm-5">About Page</label>
        
   </div> <%-- end of row 1 --%>
    <div class="container">
        <p> RateUrRef was made as the Capstone project for the Software Engineering course at Elmhurst College. RateUrRef collected Tweets regarding referee performance 
            in the 2019 NCAA basketball tournament. Those tweets were then analyzed for negative or positive sentiment (i.e. if the user was satisfied or unhappy with
            referee performance). <br /><br />
            From that analysis each Tweet was assigned a sentiment score. RateUrRef then used an algorithm to rate referee performance on a one to five star rating
            by considering the number of Tweets associated with each game and the sentiment scores assigned to each Tweets. RateUrRefs method of rating referee performance is a
            unique process because it reflects the real time opinions of fans who are watchng march madness games. This method for rating perfomance is superior to a questionaire because
            Twitter users feel safe expressing their true opinions online and express their opinions more frequently than if prompted with a questionaire -- RateUrRef used over 15000 Tweets
            to rate referee performance, which is far greater input than a questionaire could produce. <br /><br />

            In the future, RateUrRef plans on analyzing referee performance in other sports leagues and is planning on accumulating more Tweets by allowing users to post directly from the rateUrRef website.
            We hope this allows for an online discussion that can allow fans to express their frustrations and excitement with referee performance, as well as allow leagues to select high performing
            officials for important games.

        </p>
    </div>
</asp:Content>

<asp:Content ID="footerContent" ContentPlaceHolderID="footerPlaceHolder" runat="server">

</asp:Content>
