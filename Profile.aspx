<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="Stylesheet" href="Profile.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/tenantDB.accdb" SelectCommand="SELECT * FROM [userRegis] WHERE ([username] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="UserName" Type="String" />
        </SelectParameters>
        </asp:AccessDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="uid" 
        DataSourceID="AccessDataSource1">
        <ItemTemplate>
            <div>
                First name:
                <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                <br />
            </div>

            <div>
            Last Name:
            <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
            <br />
            </div>

            <div>
            Address:
            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
            <br />
            </div>

            <div>
            Age:
            <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
            <br />
            </div>

            <div>
            Email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' class="emailLabel" />
            <br />
            </div>

            <div>
            Phone Number:
            <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
            <br />
            </div>

            <div>
            Username:
            <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
            <br />
            </div>
        </ItemTemplate>
    </asp:DataList>

    <div class="btns">
    
        <a href="yourProp.aspx?uid=<%# Eval("username") %>  ID="yourProp" class="edit">Your Property(s)</a>
        <asp:Button ID="logoutBtn" runat="server" Text="Logout" class="edit" 
            onclick="logoutBtn_Click1" />
    
    </div>
</asp:Content>

