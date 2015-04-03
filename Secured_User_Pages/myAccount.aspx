<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myAccount.aspx.cs" Inherits="Secured_User_Pages_myAccount" Theme="Style" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    My Account
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntPageMain" runat="Server">
    <div>
        <p>My Name: </p>
            <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
        <p>Change Password: </p>
        <p>Old Password: </p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>Enter new password: </p>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <p>Confirm new password: </p>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>

</asp:Content>

