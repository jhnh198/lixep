<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myAccount.aspx.cs" Inherits="Secured_User_Pages_myAccount" Theme="Style" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    My Account
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntPageMain" runat="Server">
    <div>
        <p>My name: </p>
            <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>
        <p>Change password: </p>
        <p>Old password: </p>
            <asp:TextBox ID="txtOldPw" runat="server"></asp:TextBox>
        <p>Enter new password: </p>
            <asp:TextBox ID="txtNewPw" runat="server"></asp:TextBox>
        <p>Confirm new password: </p>
            <asp:TextBox ID="txtNewPwConfirm" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnChangePw" runat="server" Text=" Confirm " />
    </div>

</asp:Content>

