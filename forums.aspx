<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forums.aspx.cs" Inherits="Forums" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Forums</title>
    <asp:SiteMapPath runat="server"></asp:SiteMapPath>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" runat="server">

    <p>Lixep Forums</p><br />
    <asp:HyperLink ID="lnkGeneral" runat="server">General Discussion</asp:HyperLink>
    <asp:Label ID="lblGeneral" runat="server" Text=""></asp:Label><br />
    <asp:Table ID="tblGeneral" runat="server">
        <asp:TableRow>
            <asp:TableHeaderCell>Topic</asp:TableHeaderCell>
            <asp:TableHeaderCell>User</asp:TableHeaderCell>
            <asp:TableHeaderCell>Replies</asp:TableHeaderCell>
            <asp:TableHeaderCell>Last Reply</asp:TableHeaderCell>
        </asp:TableRow>
    </asp:Table>
    <br /><br />
    
    <asp:HyperLink ID="lnkGames" runat="server">Games</asp:HyperLink>
    <asp:Label ID="lblGames" runat="server" Text=""></asp:Label>
    <asp:Table ID="tblGames" runat="server">
        <asp:TableRow>
            <asp:TableHeaderCell>Topic</asp:TableHeaderCell>
            <asp:TableHeaderCell>User</asp:TableHeaderCell>
            <asp:TableHeaderCell>Replies</asp:TableHeaderCell>
            <asp:TableHeaderCell>Last Reply</asp:TableHeaderCell>
        </asp:TableRow>
    </asp:Table>
    <br /><br />

    <asp:HyperLink ID="lnkSupport" runat="server">Support</asp:HyperLink>
    <asp:Label ID="lblSupport" runat="server" Text=""></asp:Label>
    <asp:Table ID="tblSupport" runat="server">
        <asp:TableRow>
            <asp:TableHeaderCell>Topic</asp:TableHeaderCell>
            <asp:TableHeaderCell>User</asp:TableHeaderCell>
            <asp:TableHeaderCell>Replies</asp:TableHeaderCell>
            <asp:TableHeaderCell>Last Reply</asp:TableHeaderCell>           
        </asp:TableRow>
    </asp:Table>
    <br /><br />
</asp:Content>
