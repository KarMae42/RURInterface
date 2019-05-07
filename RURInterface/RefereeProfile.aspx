<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RefereeProfile.aspx.cs" Inherits="RURInterface.RefereeProfile" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class ="row"> <%-- row 1 --%>
        <label class="col-sm-5">Referee Profile Page</label>
        <asp:TextBox runat="server" Text="Page of list of referee profiles"> </asp:TextBox>
    </div> <%-- end of row 1 --%>
</asp:Content>


