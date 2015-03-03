<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <asp:SiteMapPath runat="server"></asp:SiteMapPath>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntTabs" Runat="Server">
    <asp:LinkButton ID="lbtnHome" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
    <asp:LinkButton ID="lbtnGames" runat="server" PostBackUrl="~/Games.aspx">Games</asp:LinkButton>
    <asp:LinkButton ID="lbtnScoreboard" runat="server" PostBackUrl="~/Scoreboard.aspx">Scoreboard</asp:LinkButton>
    <asp:LinkButton ID="lbtnForums" runat="server" PostBackUrl="~/Forums.aspx">Forums</asp:LinkButton>
    <asp:LinkButton ID="lbtnRelatedSites" runat="server" PostBackUrl="~/RelatedSites.aspx">Related Sites</asp:LinkButton>
    <asp:LinkButton ID="lbtnRegister" runat="server" PostBackUrl="~/Register.aspx">Register</asp:LinkButton>
    <asp:LinkButton ID="lbtnLogin" runat="server" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>
    <asp:LinkButton ID="lbtnContact" runat="server" PostBackUrl="~/Contact.aspx">Contact</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" runat="server">
    <h1>Welcome to Lixep!</h1>
    <p>
        Our goal here at Lixep is to provide a place for both Gamers and Game Designers to come together. <br />
        Here everyone will be able to play games uploaded by users and check high scores on those games. <br />
        Users will also be able to discuss them and other topics with each other on our forums, and find links to sites with even more of what they are looking for!
    </p>
</asp:Content>

