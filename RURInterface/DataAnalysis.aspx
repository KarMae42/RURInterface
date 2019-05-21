<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataAnalysis.aspx.cs" Inherits="RURInterface.DataAnalysis" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class ="row"> <%-- row 1 --%>
        <label class="col-sm-5">Data Analysis Page</label>
        </div> <%-- end of row 1 --%>
    <div class="container">
        <p>
            This page will have information and graphs regarding the different games and statistics that were found with the data
            that was collected. WordStat was used in order to come up with different statistics and graphs that illustrate our
            findings overall on some of the data other than the offical score of the refs.
        </p>
    </div>
</asp:Content>

