<%@ Page Title="League Options" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="League.aspx.cs" Inherits="RURInterface.League" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class ="row"> <%-- row 1 --%>
        <label class="col-sm-5">League Profile Page</label>
        <asp:TextBox runat="server"> </asp:TextBox>
    </div> <%-- end of row 1 --%>

    <div class="row"><%-- row 2 --%>
        <div class="col-sm-12">
            <%-- message label and buttons --%>
        </div>
    </div>
</asp:Content>

<asp:Content ID="footerContent" ContentPlaceHolderID="footerPlaceHolder" runat="server">

</asp:Content>

