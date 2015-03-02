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
    <asp:LinkButton ID="lbtnContact" runat="server" PostBackUrl="~/Contact.aspx">Contact</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" runat="server">
    <h1>Welcome to Lixep!</h1>
</asp:Content>

