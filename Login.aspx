<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <asp:SiteMapPath runat="server"></asp:SiteMapPath>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntTabs" runat="server">
    <asp:LinkButton ID="lbtnHome" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
    <asp:LinkButton ID="lbtnGames" runat="server" PostBackUrl="~/Games.aspx">Games</asp:LinkButton>
    <asp:LinkButton ID="lbtnScoreboard" runat="server" PostBackUrl="~/Scoreboard.aspx">Scoreboard</asp:LinkButton>
    <asp:LinkButton ID="lbtnForums" runat="server" PostBackUrl="~/Forums.aspx">Forums</asp:LinkButton>
    <asp:LinkButton ID="lbtnRelatedSites" runat="server" PostBackUrl="~/RelatedSites.aspx">Related Sites</asp:LinkButton>
    <asp:LinkButton ID="lbtnRegister" runat="server" PostBackUrl="~/Register.aspx">Register</asp:LinkButton>
    <asp:LinkButton ID="lbtnLogin" runat="server" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>
    <asp:LinkButton ID="lbtnContact" runat="server" PostBackUrl="~/Contact.aspx">Contact</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" Runat="Server">
    <h1>Log in</h1>
    <asp:Label ID="lblAccountName" runat="server">Account Name:</asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="txtAccountName" runat="server"></asp:TextBox>&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="vldAccountName" 
        ControlToValidate="txtAccountName" 
        runat="server" 
        ErrorMessage="Please enter an account name.">
    </asp:RequiredFieldValidator>

    <br /><br />

    <asp:Label ID="lblAccountPass" runat="server">Password:</asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="txtAccountPass" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="vldAccountPass"
        ControlToValidate="txtAccountPass"
        runat="server"
        ErrorMessage="Password needed.">
    </asp:RequiredFieldValidator>

    <br /><br />

    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
</asp:Content>

