<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PasswordRecovery.aspx.cs" Inherits="PasswordRecovery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Password Recovery
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntPageMain" Runat="Server">
        <asp:PasswordRecovery ID="passwordRecovery" runat="server"
        SuccessText="Your password has been sent to the email address on file."
        UserNameFailureText="User name not on file."
        UserNameTitleText="Password Recovery">
        <MailDefinition From="lexipadmn@gmail.com"
            Subject="Password Reset"
            BodyFileName="~/PasswordRecoveryTemplate.txt" >

        </MailDefinition>


        <TitleTextStyle Font-Size="Large" />
        <LabelStyle HorizontalAlign="Left" Width="5em"/>
        <SubmitButtonStyle Width="5em" />
    </asp:PasswordRecovery>
</asp:Content>

