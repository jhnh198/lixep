<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Login</title>
    <asp:SiteMapPath runat="server"></asp:SiteMapPath>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" Runat="Server">
    <h1>Log in</h1>
    <asp:Label ID="lblAccountName" runat="server">Account Name:</asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="txtAccountName" runat="server"></asp:TextBox>&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="vldAccountName" 
        ControlToValidate="txtAccountName" 
        runat="server" 
        ErrorMessage="Please enter an account name.">
    </asp:RequiredFieldValidator>

    <br /><br />

    <asp:Label ID="lblAccountPass" runat="server">Password:</asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="txtAccountPass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="vldAccountPass"
        ControlToValidate="txtAccountPass"
        runat="server"
        ErrorMessage="Password needed.">
    </asp:RequiredFieldValidator>

    <br /><br />

    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
</asp:Content>

