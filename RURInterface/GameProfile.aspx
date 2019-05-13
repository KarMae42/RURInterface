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

 <%--   HTML for Tweet Button--%>
    <div class ="row"> <%-- row 1 --%>
        <label class="col-sm-5">Game Profile Page</label>
        <asp:TextBox runat="server" Text="Each specific game when clicked on is directed here"> </asp:TextBox>
    </div> <%-- end of row 1 --%>
    <a href="https://twitter.com/intent/tweet"
        data-size="large"
        data-text =" "
        data-url=" "
        data-hashtags ="RUR,MarchMadness"
        data-via="RateUrRef"
        data-related="RateUrRef"
        class="twitter-share-button">Tweet</a>

</asp:Content>

