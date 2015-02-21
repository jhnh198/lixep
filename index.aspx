<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblRegsiter" runat="server"><a href="register.aspx">Register</a></asp:Label>
        <asp:Label ID="lblGames" runat="server"><a href="games.aspx">Games</a></asp:Label>
        <asp:Label ID="lblScoreboard" runat="server"><a href="scoreboard.aspx">Scoreboard</a></asp:Label>
        <asp:Label ID="lblRelatedSites" runat="server"><a href="relatedSites.aspx">Related Sites</a></asp:Label>
        <asp:Label ID="lblForums" runat="server"><a href="forums.aspx">Forums</a></asp:Label>
        <asp:Label ID="lblContact" runat="server"><a href="conact.aspx">Conact Us</a></asp:Label>
    </div>
    </form>
</body>
</html>
