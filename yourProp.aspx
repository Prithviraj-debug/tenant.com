<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="yourProp.aspx.cs" Inherits="yourProp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="Stylesheet" href="yourProp.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="listings">
       
        <div class="cards">
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1" DataKeyField="pid" 
                Font-Size="Medium" RepeatColumns="3" RepeatDirection="Horizontal" >
            <ItemTemplate>
            <div class="card">
            <div class="image">
                <asp:Image ID="image" runat="server" ImageUrl='<%# Eval("image") %>' Width="300px" />
                <br />
            </div>

            <div class="details">
                city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                <br />
               
                <asp:Label ID="bhk_noLabel" runat="server" Text='<%# Eval("bhk_no") + " " + "BHK" %>' />
                <br />
                
                monthly rent:
                <asp:Label ID="monthly_rentLabel" runat="server" 
                    Text='<%# Eval("monthly_rent") %>' />
                <br />

            </div>
            
                <asp:Button class="view" ID="delBtn" runat="server" Text="Delete Property" onclick="delete_Click" />

               
               
                <br />
            </ItemTemplate>

        </asp:DataList>

        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/tenantDB.accdb" 
            SelectCommand="SELECT * FROM [listProp] WHERE ([username] = ?)">
            <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="UserName" Type="String" />
        </SelectParameters>
        </asp:AccessDataSource>
        </div>

    </div>
</asp:Content>

