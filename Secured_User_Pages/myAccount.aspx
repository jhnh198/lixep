<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myAccount.aspx.cs" Inherits="Secured_User_Pages_myAccount" Theme="Style" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    My Account
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntPageMain" runat="Server">
    <div>
        <p>My name: </p>
            <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
        <asp:ChangePassword ID="ChangePassword1" runat="server"></asp:ChangePassword>
    </div>

</asp:Content>

