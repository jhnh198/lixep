<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myAccount.aspx.cs" Inherits="Secured_User_Pages_myAccount" Theme="Style" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    My Account
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntPageMain" runat="Server">
    
    <h1>Welcome 
    <asp:Label ID="lblUserName" 
        runat="server" 
        Text="">
    </asp:Label>
    </h1>
    <br /><br />

    <div id="initialInfo" runat="server" visible="false">
        <asp:Label ID="lblTimeLoggedIn"
            runat="server"
            Text="">
        </asp:Label>
        <br /> <br />

        <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox> &nbsp;&nbsp;
        <br />
        <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox> &nbsp;&nbsp;
        <br />
        <asp:Label ID="lblLocation" runat="server" Text="Location: "></asp:Label>
        <asp:TextBox ID="txtLocation" Text="" runat="server"></asp:TextBox> &nbsp;&nbsp;
        <br />
        <asp:Label ID="lblAbout" runat="server" Text="About Me: "></asp:Label>
        <asp:TextBox ID="txtAbout" runat="server"></asp:TextBox>
        <br />

        <br /><br />
        <asp:Button ID="btnSettings" OnClick="btnSettings_Click" runat="server" Text="Save Settings" /> &nbsp;&nbsp;
        <asp:Button ID="btnCancel" OnClick="btnCancel_Click" runat="server" Text="Cancel Settings" /><br /><br />
    </div>
    <div id="savedInfo" runat="server" visible="false">

        <asp:Label ID="lblFirstNameSaved" runat="server" Text="First Name: "></asp:Label>
        <asp:Label ID="lblShowFirstName" runat="server" Text=""></asp:Label> <br /> <br />

        <asp:Label ID="lblLastNameSaved" runat="server" Text="Last Name: "></asp:Label>
        <asp:Label ID="lblShowLastName" runat="server" Text=""></asp:Label><br /><br />

        <asp:Label ID="lblLocationSaved" runat="server" Text="Location: "></asp:Label>
        <asp:Label ID="lblShowLocation" runat="server" Text=""></asp:Label><br /><br />

        <asp:Label ID="lblAboutSaved" runat="server" Text="About Me: "></asp:Label>
        <asp:Label ID="lblShowAbout" runat="server" Text=""></asp:Label><br /><br />
        
        <h1 id="themeTxt" runat="server"> Select Website Theme</h1>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
            <asp:ListItem Value="Style" Selected="True">Default</asp:ListItem>
            <asp:ListItem Value="Dark">Dark</asp:ListItem>
        </asp:DropDownList><br /><br />

        <asp:Button ID="btnEdit" OnClick="btnEdit_Click" runat="server" Text="Edit Settings" />
    </div>
    <div>
        <br /><br />
        <asp:ChangePassword ID="ChangePassword1"
                runat="server">
        </asp:ChangePassword>

        <br /><br />

        <asp:LoginView ID="lgView" runat="server">
            <AnonymousTemplate>
                
            </AnonymousTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="admin">
                    <ContentTemplate>
                        <p>Hello admin. Would you like to
                        <asp:HyperLink ID="lnkAdmin" 
                            NavigateUrl="~/Secured_User_Pages/Admin/admin.aspx" 
                            runat="server">
                            edit
                        </asp:HyperLink>
                            the users account information?</p>
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView>

    </div>

</asp:Content>

