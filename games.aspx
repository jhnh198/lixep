<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Games.aspx.cs" Inherits="Games" Theme="Style" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Games
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" runat="server">

    <asp:Label ID="lblPageCount"
        runat="server"
        Text=""/>
    <br />

    <p>Games to download and review</p>
    <asp:GridView ID="gvGames" runat="server"
        DataSourceID="sourceGames"
        AutoGenerateColumns="false"
        DataKeyNames="Id"
        OnRowCommand="gv_games_RowCommand">
        <Columns>
            <asp:ButtonField CommandName="Download" ButtonType="Link" Text="Download" />
            <asp:ButtonField CommandName="Rate" ButtonType="Button" Text="Rate" />
            <asp:BoundField DataField="gameName" HeaderText="Game Name" ReadOnly="true" />
            <asp:BoundField DataField="gameAverage" HeaderText="Average Rating" ReadOnly="true" />
            <asp:BoundField DataField="gameTotal" HeaderText="Total Rating" ReadOnly="true" />
            <asp:BoundField DataField="gameTotalRatings" HeaderText="Times Rated" ReadOnly="true" />
            <asp:BoundField DataField="gamefile" Visible="false" HeaderText=" Game File" ReadOnly="true" />
        </Columns>
    </asp:GridView>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit Score" OnClick="btnSubmit_Click" />

    <asp:SqlDataSource ID="sourceGames" runat="server"
        ConnectionString = "<%$ ConnectionStrings: lixepUserDB %>"
        SelectCommand ="SELECT Id, gameName, gameAverage, gameTotal, gameTotalRatings, gameFile FROM games">
    </asp:SqlDataSource>
    <asp:RadioButtonList ID="rblRating" runat="server" repeatDirection="Horizontal">
        <asp:ListItem Text="1" Selected="True" Value="1"></asp:ListItem>
        <asp:ListItem Text="2" Selected="False" Value="2"></asp:ListItem>
        <asp:ListItem Text="3" Selected="False" Value="3"></asp:ListItem>
        <asp:ListItem Text="4" Selected="False" Value="4"></asp:ListItem>
        <asp:ListItem Text="5" Selected="False" Value="5"></asp:ListItem>
    </asp:RadioButtonList>
</asp:Content>



