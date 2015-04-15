<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="Secured_User_Pages_Admin_admin" Theme="Style" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Admin
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cntPageMain" runat="server">    
        <div>    
            <p> User List:</p>
            <asp:GridView ID="gvUsers" runat="server" DataSourceID="dsUsers" AutoGenerateColumns="false"
                DataKeyNames="UserId, UserName" OnSelectedIndexChanged="gvUsers_SelectedIndexChanged">
                <SelectedRowStyle BackColor="Brown" ForeColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="true" />
                    <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="true" Visible="false" SortExpression="UserId"></asp:BoundField>
                    <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" ></asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ></asp:BoundField>
                    <asp:BoundField DataField="RoleName" HeaderText="Privilege" SortExpression="RoleName" ></asp:BoundField>
                </Columns>
            </asp:GridView> <br /><br />

            <asp:Label ID="lblUserInfo" Visible="false" runat="server" Text="User Information: "></asp:Label>
            <asp:DetailsView ID="dvUser" AutoGenerateEditButton="true" DataKeyNames="UserId" 
                DataSourceID="dsUserInfo" runat="server" Height="50px" Width="125px" AutoGenerateRows="false">
                <Fields>
                    <asp:BoundField DataField="UserId" ReadOnly="true" Visible="false" />
                    <asp:BoundField DataField="UserName" HeaderText="User Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                </Fields>
            </asp:DetailsView> <br /><br />

            <asp:Label ID="lblRole" runat="server" Visible="false" Text="Select User Privileges: "></asp:Label> <br /><br />
            <asp:ListBox ID="lstRoles" OnSelectedIndexChanged="lstRoles_SelectedIndexChanged" Visible="false" runat="server">
                <asp:ListItem Text="Admin" Value="admin"></asp:ListItem>
                <asp:ListItem Text="User" Value="user"></asp:ListItem>
            </asp:ListBox> <br /><br />

            <asp:Button ID="btnEdit" Visible="false" OnClick="btnEdit_Click" runat="server" Text="Submit Changes" />
            <asp:Button ID="btnCancel" Visible="false" OnClick="btnCancel_Click" runat="server" Text="Cancel Changes" /><br /><br />
            
            <asp:Label ID="lblError" Visible="false" ForeColor="Red" runat="server" Text="Label"></asp:Label>

            <asp:SqlDataSource ID="dsUsers" runat="server"
                ConnectionString="<%$ ConnectionStrings:lixepUserDB %>"
                SelectCommand="SELECT Users.UserId, Users.UserName, Memberships.Email, Roles.RoleName
                                FROM Users
                                JOIN Memberships ON Users.UserId = Memberships.UserId
                                JOIN UsersInRoles ON Memberships.UserId = UsersInRoles.UserId
                                JOIN Roles ON UsersInRoles.RoleId = Roles.RoleId">
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="dsUserInfo" runat="server"
                ConnectionString="<%$ ConnectionStrings:lixepUserDB %>"
                SelectCommand="SELECT *
                                FROM Users
                                JOIN Memberships ON Memberships.UserId=Users.UserId
                                WHERE Users.UserId=@UserId"
                UpdateCommand="UPDATE Users SET UserName=@UserName WHERE UserId=@UserId;
                                UPDATE Memberships SET Email=@Email WHERE UserId=@UserId;"
                OnUpdating="dsUserInfo_Updating"
                OnUpdated="dsUserInfo_Updated">
                <SelectParameters>
                    <asp:ControlParameter ControlID="gvUsers" PropertyName="SelectedValue" Name="UserId"></asp:ControlParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" ></asp:Parameter>
                    <asp:Parameter Name="UserId" ></asp:Parameter>
                    <asp:Parameter Name="Email" ></asp:Parameter>
                </UpdateParameters>            
            </asp:SqlDataSource>
        </div>
</asp:Content>
