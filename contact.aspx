<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" Theme="Style" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Contact Us
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" Runat="Server">
    <asp:Label ID="lblPageCount"
        runat="server"
        Text="">
    </asp:Label>
    <br />
    <br />
    <span>
        Please leave any comments and concerns right here:
    </span>
    <br />

    <asp:TextBox ID="tbName" 
        runat="server">
    </asp:TextBox>

    <br />
    <br />

    <asp:TextBox ID="tbComments" 
        TextMode="MultiLine"
        runat="server">
    </asp:TextBox>

    <br /><br />

    <asp:Label ID="lblMessage"
        runat="server" 
        Text=""
        Visible="false">
    </asp:Label>
    
    <br /><br />

    <asp:Button ID="btnCollect" 
        runat="server" 
        Text="Send"
        OnClick="btnCollect_Click"/>
</asp:Content>

