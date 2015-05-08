<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RelatedSites.aspx.cs" Inherits="RelatedSites" Theme="Style" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Related Sites
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" runat="server">
    <asp:Label ID="lblPageCount"
        runat="server"
        Text=""/>
    <br /><br />

    <span>
        <asp:ImageButton ID="ibtnTwitch" ImageUrl="~/Images/twitchLogo.png" runat="server" PostBackUrl="http://twitch.tv/" Width="200px" Height="200px"/>
        <p>Twitch is a great site for watching some of the most popular games out today along with a few hidden classics. Check it out, watch the streamer, and chat with others all on one site!</p>
    </span>
    <br /><br />
    <span>
        <asp:ImageButton ID="ibtnYoutube" ImageUrl="~/Images/youtube.jpg" runat="server" PostBackUrl="http://www.youtube.com/" Width="400px" Height="200px"/>
        <p>From 'Let's Plays' to tutorials for playing and even making your own games, this site has everything a gamer could ask for!</p>
    </span>
    <br /><br />
    <span>
        <asp:ImageButton ID="ibtnIGN" ImageUrl="~/Images/ign.jpg" runat="server" PostBackUrl="http://www.ign.com/" Width="200px" Height="200px"/>
        <p>IGN is a great site on some of the most recent news about upcoming games, movies and major events in the gaming community.</p>
    </span>
</asp:Content>

