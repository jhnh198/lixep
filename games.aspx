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
        AutoGenerateColumns= "false"
        DataKeyNames="Id">
            <Columns>
                <asp:ButtonField CommandName="Download" ButtonType="Link" Text="Download" />
                <asp:ButtonField CommandName="Rate" ButtonType="Button" Text="Rate"/>
                <asp:BoundField DataField="gameName" HeaderText="Game Name" ReadOnly ="true" />
                <asp:BoundField DataField="gameAverage" HeaderText="Average Rating" ReadOnly="true" />
                <asp:BoundField DataField="gameTotal" HeaderText="Total Rating" ReadOnly="true" 
                />
            </Columns>
    </asp:GridView>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit Score" OnClick="btnSubmit_Click" />
    <asp:Button ID="btnDownloadGame" runat="server" Text="Download" OnClick="btnDownloadGame_Click"/>

    <asp:SqlDataSource ID="sourceGames" runat="server"
        ConnectionString = "<%$ ConnectionStrings: lixepUserDB %>"
        SelectCommand ="SELECT Id, gameName, gameAverage, gameTotal FROM games">
    </asp:SqlDataSource>
</asp:Content>



