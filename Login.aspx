<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Theme="Style" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Login
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" Runat="Server">
    <asp:Login ID="userLogin" 
        runat="server"
        DestinationPageUrl="~/Home.aspx"
        CreateUserText="Register Now!"
        CreateUserUrl="~/register.aspx"
        InstructionText="Enter your username and password."
        FailureText="Too bad!"
        TitleText="Log In You Filthy Casual"
        LogInButtonText="Log In"
        PasswordRecoveryUrl="~/PasswordRecovery.aspx"
        PasswordRecoveryText="Forgot your password?">
    </asp:Login>
</asp:Content>

