<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataAnalysis.aspx.cs" Inherits="RURInterface.DataAnalysis" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class ="row"> <%-- row 1 --%>
        <label class="col-sm-5">Data Analysis Page</label>
        <asp:TextBox runat="server" ID="txtTempPgDescription" Text="This is where the graphs and such for the Word Stat will go"> </asp:TextBox>
    </div> <%-- end of row 1 --%>
</asp:Content>

