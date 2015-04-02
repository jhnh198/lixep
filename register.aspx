<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Register
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" Runat="Server">
    <asp:CreateUserWizard ID="wizRegisterUser" 
        runat="server" 
        OnCreatedUser="CreateUserWizard1_CreatedUser"
        ContinueDestinationPageUrl="~/Secured_User_Pages/myAccount.aspx"
        CompletedSuccessText="Account Successfully Registered!">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" 
                runat="server"
                title="Please Register Your Account!">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

