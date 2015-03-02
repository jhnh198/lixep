<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <asp:SiteMapPath runat="Server"></asp:SiteMapPath>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntTabs" runat="Server">
    <asp:LinkButton ID="lbtnHome" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton>
    <asp:LinkButton ID="lbtnGames" runat="server" PostBackUrl="~/Games.aspx">Games</asp:LinkButton>
    <asp:LinkButton ID="lbtnScoreboard" runat="server" PostBackUrl="~/Scoreboard.aspx">Scoreboard</asp:LinkButton>
    <asp:LinkButton ID="lbtnForums" runat="server" PostBackUrl="~/Forums.aspx">Forums</asp:LinkButton>
    <asp:LinkButton ID="lbtnRelatedSites" runat="server" PostBackUrl="~/RelatedSites.aspx">Related Sites</asp:LinkButton>
    <asp:LinkButton ID="lbtnRegister" runat="server" PostBackUrl="~/Register.aspx">Register</asp:LinkButton>
    <asp:LinkButton ID="lbtnContact" runat="server" PostBackUrl="~/Contact.aspx">Contact</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" Runat="Server">
    <span>
        Please leave any comments and concerns right here:
    </span>
    <br />

    <asp:TextBox ID="comments" TextMode="MultiLine" runat="server"></asp:TextBox>

    <br /><br />
    <asp:Button ID="collect" runat="server" Text="Send"/>
</asp:Content>

