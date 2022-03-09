<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            
<div class="showcase">

    <div id="greet"><asp:LinkButton a class="" ID="greet" runat="server" 
            EnableTheming="True" onclick="greet_Click"></asp:LinkButton></div>

    <div class="welcome">
        <h1>Welcome To World's Largest No Broker Property Site</h1>    
    </div>
    </div>
    <div class="container">
    

        <!-- Working start -->
        <h2 class="sub-title">Why Use tenant.com</h2>
        <div class="working">
            <div class="one step">
                <div class="data">
                    <h3>Simple Listing Process</h3>
                    <p>
                        As an owner you can list your property in a few minutes. Just fill out our super simple form. Your property will go live after verification.
                    </p>
                </div>
                <div class="img">
                    <img src="./Assets/search.jpg" alt="" />
                </div>
            </div>

            <div class="two step">
                <div class="data">
                    <h3>Tenant Selects Property and Schedules an Appointment</h3>
                    <p>
                        If a tenant likes your property they will request for your contact details. Both parties will receive contact information and then arrange for a visit.
                    </p>
                </div>
                <div class="img">
                    <img src="./Assets/phonecall.jpg" alt="" />
                </div>
            </div>

            <div class="three step">
                <div class="data">
                    <h3>Deal Closure</h3>
                    <p>
                        Owner and tenant meet to close the deal directly. NoBroker can help create a rental agreement and deliver it to your doorstep.
                    </p>
                </div>
                <div class="img">
                    <img src="./Assets/shakeHands.jpg" alt="" />
                </div>
            </div>
        </div>

        <h2 class="sub-title">Tenant Feedbacks</h2>
         <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1" DataKeyField="fid" 
                Font-Size="Medium" RepeatColumns="3" RepeatDirection="Horizontal">
         <ItemTemplate>
        <div class="feedbacks">
            <div>
                <h3 class="user"><asp:Label ID="cityLabel" runat="server" Text='<%# Eval("name") %>' /></h3>
                <p>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("message") %>' />
                </p>
            </div>                
        </div>
        </ItemTemplate>

        </asp:DataList>

        <div class="list">
            <h3>List Property</h3>
            <p>For Free, Without any Brokerage</p>
            <a href="listProp.aspx" class="list-btn btn">List Now</a>
        </div>
    </div>

    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/tenantDB.accdb" 
            SelectCommand="SELECT * FROM [feedback]">
            
        </asp:AccessDataSource>
</asp:Content>

