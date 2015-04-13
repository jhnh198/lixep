<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PasswordRecovery.aspx.cs" Inherits="PasswordRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:PasswordRecovery ID="passwordRecovery" runat="server"
        SuccessText="Your password has been sent to the email address on file."
        UserNameFailureText="User name not on file."
        UserNameTitleText="Password Recovery">
        <MailDefinition From="LixepAdmne@gmail.com"
            Subject="Password Reset"
            BodyFileName="~/PasswordRecoveryTemplate.txt" >

        </MailDefinition>


        <TitleTextStyle Font-Size="Large" />
        <LabelStyle HorizontalAlign="Left" Width="5em"/>
        <SubmitButtonStyle Width="5em" />
    </asp:PasswordRecovery>
    </div>
    </form>
</body>
</html>
