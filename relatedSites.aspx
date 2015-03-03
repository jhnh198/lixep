<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RelatedSites.aspx.cs" Inherits="RelatedSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Related Sites</title>
    <asp:SiteMapPath runat="server"></asp:SiteMapPath>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" runat="server">
    <asp:ImageButton ID="ibtnTwitch" ImageUrl="~/Images/twitchLogo.png" runat="server" PostBackUrl="http://twitch.tv/"/>
    <asp:ImageButton ID="ibtnYoutube" ImageUrl="~/Images/youtube.jpg" runat="server" PostBackUrl="http://www.youtube.com/" />
    <asp:ImageButton ID="ibtnIGN" ImageUrl="~/Images/ign.jpg" runat="server" PostBackUrl="http://www.ign.com/" />
</asp:Content>

