<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="RURInterface.HomePage" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" runat="server">

</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class ="row"> <%-- row 1 --%>
        <label class="col-sm-5">Home Page</label>
        <asp:TextBox runat="server" Height="165px" Width="395px">PUT THE INFO AND ARTICLES HERE</asp:TextBox>
    </div> <%-- end of row 1 --%>
</asp:Content>

<asp:Content ID="footerContent" ContentPlaceHolderID="footerPlaceHolder" runat="server">

</asp:Content>
