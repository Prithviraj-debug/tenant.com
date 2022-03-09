<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script src="app.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="Assets/t.png" />

    <link href="style.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container loginForm">
                <div class="skipBtn">
                    <a href="home.aspx"><img src="./Assets/back.png"></a>
                </div>
                <div class="loginCon">
                    <h1>Login To</h1>
                    <img class="logo" src="./Assets/Tenant.com.png"> 
                    <div class="login" id="login">
                        <div class="logform">
                            <div>
                                <label for="">Username</label>
                                <asp:TextBox ID="txtUserName" runat="server" placeholder="Enter your Username.." required></asp:TextBox>
                            </div>
                            
                            <div>
                                <label for="">Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter your Password.." required></asp:TextBox>
                            </div>
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/Assets/next.png" class="logbtn" Height="50px" 
                                onclick="ImageButton1_Click" Width="50px" />
                        </div>
                    </div>
                    <div class="frgtPss">
                        <a onclick="frgtPss()">Forgot Password?</a>
                        <a href="registration.aspx">New User?</a>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script type="text/javascript" src="app.js"></script>
<script type="text/javascript" src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>
