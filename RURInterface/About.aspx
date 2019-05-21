<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="RURInterface.About" %>
<%@ MasterType VirtualPath="~/Site.Master" %>


<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class ="row"> <%-- row 1 --%>
       
        <label class="col-sm-5">About Page</label>
        
   </div> <%-- end of row 1 --%>
    <div class="container">
        <p> What is RateUrRef. How did it all come to be. What is the algorithm and how does it make it different than
            other websites and rating things that are out there already. What makes RateUrRef unique. How can it change going 
            forward etc. 
        </p>
    </div>
</asp:Content>

<asp:Content ID="footerContent" ContentPlaceHolderID="footerPlaceHolder" runat="server">

</asp:Content>
