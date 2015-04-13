<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Theme="Style" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Login
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" Runat="Server">
    <asp:Login ID="userLogin" 
        runat="server"
        DestinationPageUrl="~/Secured_User_Pages/myAccount.aspx"
        TitleText="Log In You Filthy Casual"
        PasswordRecoveryUrl="~/PasswordRecovery.aspx"
        PasswordRecoveryText="Forgot your password?">
    </asp:Login>
</asp:Content>

