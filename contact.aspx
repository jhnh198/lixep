<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" Theme="Style" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Contact Us
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" Runat="Server">
    <span>
        Please leave any comments and concerns right here:
    </span>
    <br />

    <asp:TextBox ID="comments" TextMode="MultiLine" runat="server"></asp:TextBox>

    <br /><br />
    <asp:Button ID="collect" runat="server" Text="Send"/>
</asp:Content>

