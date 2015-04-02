<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Scoreboard.aspx.cs" Inherits="Scoreboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Scoreboard
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" runat="server">
    <asp:Table ID="playerScoreboard" runat="server">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell> Name </asp:TableHeaderCell>
            <asp:TableHeaderCell> Score </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell> AAA </asp:TableCell>
            <asp:TableCell> 1000 </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell> AAA </asp:TableCell>
            <asp:TableCell> 1000 </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell> AAA </asp:TableCell>
            <asp:TableCell> 1000 </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell> AAA </asp:TableCell>
            <asp:TableCell> 1000 </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell> AAA </asp:TableCell>
            <asp:TableCell> 1000 </asp:TableCell>
        </asp:TableRow>

    </asp:Table>
</asp:Content>



