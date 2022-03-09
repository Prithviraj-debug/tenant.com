<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="contactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="ContactUs.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="contact container top">
        <h1> Our Mailing Address</h1>
        <div class="address">
            <p>Tenant.com</p>
            <p>Shivaji Nagar, Nilkamal Vihar, Room no. 6, Phaltan, Satara - 415523, Maharashtra, India
        </div>

        
    </div>

    <div>
        <h1>In case of any Queries Or Just Give Us A Feedback..</h1>
        <div class="form">
            <label for="name">name: </label>
            <asp:TextBox ID="txtName" class="input" runat="server" placeholder="Enter your First Name.."></asp:TextBox>

            <label for="mail">MailID: </label>
            <asp:TextBox ID="txtMail" class="input" runat="server" placeholder="Enter your mail.."></asp:TextBox>


            <label for="your message">Message: </label>
            <asp:TextBox ID="txtMsg" class="input" runat="server" placeholder="Enter your Message.." TextMode="MultiLine"></asp:TextBox>

            <div class="center">
                <asp:Button ID="Button1" runat="server" Text="Send Message" class="submit" 
                    onclick="Button1_Click" />
            </div>
        </div>
    </div>
</asp:Content>

