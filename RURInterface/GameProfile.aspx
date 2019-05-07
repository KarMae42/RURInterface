<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameProfile.aspx.cs" Inherits="RURInterface.GameProfile" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class ="row"> <%-- row 1 --%>
        <label class="col-sm-5">Game Profile Page</label>
        <asp:TextBox runat="server" Text="Each specific game when clicked on is directed here"> </asp:TextBox>
    </div> <%-- end of row 1 --%>
</asp:Content>

