<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Login
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" Runat="Server">
    <asp:Login ID="userLogin" 
        runat="server"
        ContinueDestinationPageUrl="~/Secured_User_Pages/myAccount.aspx"
        text="Log In You Filthy Casual">
    </asp:Login>
</asp:Content>

