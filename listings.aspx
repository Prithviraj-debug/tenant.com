<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="listings.aspx.cs" Inherits="listings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="listings.css"  />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="listings">
        <div class="top">
            <h1>
                All the available Listings...
            </h1>
        </div>
        <div class="cards">
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1" DataKeyField="pid" 
                Font-Size="Medium" RepeatColumns="3" RepeatDirection="Horizontal">
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
                <a class="view" href="propDetails.aspx?pid=<%# Eval("pid") %>"> View Property</a>
                

               
               
                <br />
            </ItemTemplate>

        </asp:DataList>

        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/tenantDB.accdb" 
            SelectCommand="SELECT * FROM [listProp]"></asp:AccessDataSource>
        </div>

    </div>
</asp:Content>

