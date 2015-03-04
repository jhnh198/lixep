<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Register</title>
    <asp:SiteMapPath runat="server"></asp:SiteMapPath>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" Runat="Server">
        <h1>Please Register!</h1>
 
        <br /><br /><br />

        <asp:Label ID="lblUserName" runat="server">User Name: </asp:Label> &nbsp;&nbsp;

        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox> &nbsp;&nbsp;

        <asp:RequiredFieldValidator ID="vldUserName" runat="server" ControlToValidate="txtUserName" 
            ErrorMessage="User Name is required."
            ForeColor="Red" Display="Dynamic">
        </asp:RequiredFieldValidator>

        <br /><br />

        <asp:Label ID="lblGender" runat="server">Gender: </asp:Label><br />

        <asp:ListBox ID="lstGender" runat="server">
            <asp:ListItem Selected="True" Value="None">Choose Gender</asp:ListItem>
            <asp:ListItem Value="Female">Female</asp:ListItem>
            <asp:ListItem Value="Male">Male</asp:ListItem>
        </asp:ListBox>&nbsp;&nbsp;

       <asp:RequiredFieldValidator ID="vldGender" runat="server" ErrorMessage="Gender is required." 
           ControlToValidate="lstGender" InitialValue="None" ForeColor="Red" Display="Dynamic">
       </asp:RequiredFieldValidator>
        <br /><br />

        <asp:Label ID="lblPassword" runat="server">Password: </asp:Label>&nbsp;&nbsp;

        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="16"></asp:TextBox> &nbsp;&nbsp;

       <asp:RequiredFieldValidator ID="vldPassword" runat="server" ErrorMessage="Password is required." 
           ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic">
       </asp:RequiredFieldValidator>

        <br /><br />

        <asp:Label ID="lblReenterPassword" runat="server">Password: </asp:Label>&nbsp;&nbsp;

        <asp:TextBox ID="txtReenterPassword" runat="server" TextMode="Password"></asp:TextBox> &nbsp;&nbsp;

       <asp:CompareValidator ID="vldComparePassword" runat="server" ErrorMessage="Passwords do not match."
           ControlToCompare="txtPassword" ControlToValidate="txtReenterPassword" ForeColor="Red" Display="Dynamic">
       </asp:CompareValidator>

        <asp:RequiredFieldValidator ID="vldReenterPassword" runat="server" ErrorMessage="You must re-enter your password."
            ForeColor="Red" ControlToValidate="txtReenterPassword" Display="Dynamic" >
        </asp:RequiredFieldValidator>

        <br /><br />

        <asp:Label ID="lblAge" runat="server">Age: </asp:Label>&nbsp;&nbsp;

        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox> &nbsp;&nbsp;

        <asp:RangeValidator ID="vldAgeRange" runat="server" ErrorMessage="Age must be an integer between 0 and 105."
            ControlToValidate="txtAge" MaximumValue="105" MinimumValue="0" ForeColor="Red" Display="Dynamic"
            Type="Integer" >
        </asp:RangeValidator>

        <asp:RequiredFieldValidator ID="vldAge" runat="server" ErrorMessage="Age is required."
            ForeColor="Red"  ControlToValidate="txtAge" Display="Dynamic">
        </asp:RequiredFieldValidator>
        <br /><br />

        <asp:Label ID="lblEmail" runat="server">Email: </asp:Label>&nbsp;&nbsp;

        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> &nbsp;&nbsp;

        <asp:RegularExpressionValidator ID="vldRegEmail" runat="server" 
            ErrorMessage="Not a valid email."
            ControlToValidate="txtEmail"
            ValidationExpression=".+\@.+\..+"
            Display="Dynamic"
            ForeColor="Red">
        </asp:RegularExpressionValidator>

        <asp:RequiredFieldValidator ID="vldEmail" runat="server" 
            ErrorMessage="Email is required."
            ControlToValidate="txtEmail"
            Display="Dynamic" ForeColor="Red" >
        </asp:RequiredFieldValidator>

        <br /><br />

        <asp:Label ID="lblReferralCode" runat="server">Referral Code: </asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtReferralCode" runat="server"></asp:TextBox> &nbsp;&nbsp;
        <asp:CustomValidator ID="vldCustomCode" runat="server" 
            ErrorMessage="Not a valid referral code."
            ControlToValidate="txtReferralCode"
            OnServerValidate="vldCustomCode_ServerValidate"
            Display="Dynamic"
            ForeColor="Red" >
        </asp:CustomValidator>

        <asp:RequiredFieldValidator ID="vldReferralCode" runat="server" 
            ErrorMessage="Referral Code is required."
            ControlToValidate="txtReferralCode"
            ForeColor="Red"
            Display="Dynamic">
        </asp:RequiredFieldValidator>

        <br /><br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
</asp:Content>

