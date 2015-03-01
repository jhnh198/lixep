<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="Styles/main.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <h1> Please register for a new account</h1>
    <form id="customerForm" runat="server">
    <div>
        <asp:ValidationSummary ID="vldAllFields"
            HeaderText="Please correct the following errors."
            BorderColor="Red" ForeColor="Red" 
            BorderStyle="Solid" runat="server" 
        />
        <br /><br /><br />

        <label for="txtUserName">User Name: </label> &nbsp;&nbsp;
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox> &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="vldUserName" runat="server" ControlToValidate="txtUserName" 
            ErrorMessage="User Name is required."
            ForeColor="Red" Display="Dynamic">
        </asp:RequiredFieldValidator>
        <br /><br />

        <label for="lstGender">Gender: </label><br />
        <asp:ListBox ID="lstGender" runat="server">
            <asp:ListItem Selected="True" Value="None">Choose Gender</asp:ListItem>
            <asp:ListItem Value="Female">Female</asp:ListItem>
            <asp:ListItem Value="Male">Male</asp:ListItem>
        </asp:ListBox>&nbsp;&nbsp;
       <asp:RequiredFieldValidator ID="vldGender" runat="server" ErrorMessage="Gender is required." 
           ControlToValidate="lstGender" InitialValue="None" ForeColor="Red" Display="Dynamic">
       </asp:RequiredFieldValidator>
        <br /><br />

        <label for="txtPassword">Password: </label>&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox> &nbsp;&nbsp;
       <asp:RequiredFieldValidator ID="vldPassword" runat="server" ErrorMessage="Password is required." 
           ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic">
       </asp:RequiredFieldValidator>
        <br /><br />

        <label for="txtReenterPassword">Password: </label>&nbsp;&nbsp;
        <asp:TextBox ID="txtReenterPassword" runat="server" TextMode="Password"></asp:TextBox> &nbsp;&nbsp;
       <asp:CompareValidator ID="vldComparePassword" runat="server" ErrorMessage="Passwords do not match."
           ControlToCompare="txtPassword" ControlToValidate="txtReenterPassword" ForeColor="Red" Display="Dynamic">
       </asp:CompareValidator>
        <asp:RequiredFieldValidator ID="vldReenterPassword" runat="server" ErrorMessage="You must re-enter your password."
            ForeColor="Red" ControlToValidate="txtReenterPassword" Display="Dynamic" ></asp:RequiredFieldValidator>
        <br /><br />

        <label for="txtAge">Age: </label>&nbsp;&nbsp;
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox> &nbsp;&nbsp;
        <asp:RangeValidator ID="vldAgeRange" runat="server" ErrorMessage="Age must be an integer between 0 and 105."
            ControlToValidate="txtAge" MaximumValue="105" MinimumValue="0" ForeColor="Red" Display="Dynamic"
            Type="Integer" >
        </asp:RangeValidator>
        <asp:RequiredFieldValidator ID="vldAge" runat="server" ErrorMessage="Age is required."
            ForeColor="Red"  ControlToValidate="txtAge" Display="Dynamic"></asp:RequiredFieldValidator>
        <br /><br />

        <label for="email">Email: </label>&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> &nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="vldRegEmail" runat="server" 
            ErrorMessage="Not a valid email."
            ControlToValidate="txtEmail"
            ValidationExpression=".+\@.+\..+"
            Display="Dynamic"
            ForeColor="Red"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="vldEmail" runat="server" 
            ErrorMessage="Email is required."
            ControlToValidate="txtEmail"
            Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
        <br /><br />

        <label for="txtReferralCode">Referral Code: </label>&nbsp;&nbsp;
        <asp:TextBox ID="txtReferralCode" runat="server"></asp:TextBox> &nbsp;&nbsp;
        <asp:CustomValidator ID="vldCustomCode" runat="server" 
            ErrorMessage="Not a valid referral code."
            ControlToValidate="txtReferralCode"
            OnServerValidate="vldCustomCode_ServerValidate"
            Display="Dynamic"
            ForeColor="Red" ></asp:CustomValidator>
        <asp:RequiredFieldValidator ID="vldReferralCode" runat="server" 
            ErrorMessage="Referral Code is required."
            ControlToValidate="txtReferralCode"
            ForeColor="Red"
            Display="Dynamic"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
    </form>
</body>
</html>
