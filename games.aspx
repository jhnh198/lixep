<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Games.aspx.cs" Inherits="Games" Theme="Style" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Games
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" runat="server">
    <p>Games to download and review</p>
    <asp:HyperLink ID="gameOnMyOwn" runat="server">On My Own</asp:HyperLink> <asp:Label class="averageRating" ID="lblOnMyOwn" runat="server" Text="Average Rating  + avgScore(OnMyOwnRatings, OnMyOwnNumReviews)"></asp:Label> <br />
    <asp:HyperLink ID="gamePong" runat="server">Pong</asp:HyperLink> <asp:Label class="averageRating" ID="lblPong" runat="server" Text="Average Rating  + avgScore(PongRatings, PongNumReviews)"></asp:Label> <br />
    <asp:HyperLink ID="gameAsteroids" runat="server">Asteroids</asp:HyperLink> <asp:Label class="averageRating" ID="lblAsteroids" runat="server" Text="Average Rating  + avgScore(AsteroidsRatings, AsteroidsNumReviews)"></asp:Label> <br />
    <asp:HyperLink ID="gameRpsls" runat="server">Rock, Paper, Scissors, Lizard, Spock</asp:HyperLink><asp:Label class="averageRating" ID="lblRpsls" runat="server" Text="Average Rating  + avgScore(RpslsRating, RpslsNumReviews)"></asp:Label> <br />
    <asp:HyperLink ID="gameChess" runat="server">Chess</asp:HyperLink><asp:Label class="averageRating" ID="lblChess" runat="server" Text="Average Rating  + avgScore(ChessRating, ChessNumReviews)"></asp:Label> <br />
</asp:Content>



