<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Scoreboard.aspx.cs" Inherits="Scoreboard" Theme="Style" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Scoreboard
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" runat="server">

    <asp:Label ID="lblPageCount"
        runat="server"
        Text="">
    </asp:Label>

    <br /><br />

    <asp:Panel runat="server"
        ID="pnlScoreboardImages"
        HorizontalAlign="Center">

        <asp:Button ID="Button2" runat="server" Text="Next" OnClick="Button2_Click1" style="margin-left: 0px" />
        
        <asp:Image ID="Image1" SkinID="imgsScorboard" runat="server" ImageUrl="~/Images/Screenshot (12).png"/>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Screenshot (16).png" Visible="false" />
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Screenshot (13).png"  Visible="false"/>
        <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/Screenshot (14).png" Visible="false" />
        <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/Screenshot (15).png" Visible="false" />

        <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click1" style="margin-left: 0px" />

    </asp:Panel>

    
    </asp:Content>



