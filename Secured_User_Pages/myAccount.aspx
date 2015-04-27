<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myAccount.aspx.cs" Inherits="Secured_User_Pages_myAccount" Theme="Style" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    My Account
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cntPageMain" runat="Server">
    <div>
        <p>My name: </p>

        <asp:Label ID="lblUserName" 
            runat="server" 
            Text="">
        </asp:Label>

        <br />
        <br />

        <asp:Label ID="lblTimeLoggedIn"
            runat="server"
            Text="">
        </asp:Label>

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

