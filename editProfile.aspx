<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editProfile.aspx.cs" Inherits="editProfile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" href="editProfile.css" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
            <div class="skipBtn">
                <a href="Profile.aspx"><img src="./Assets/back.png"></a>
            </div>
            <div class="editCon">
                <h1>Edit Your Profile</h1>
                <div class="editForm">
                    <div>
                        <label for="">First Name</label>
                        <asp:TextBox ID="txtFName" runat="server" placeholder="Enter your First Name.."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="Please Enter Name" ControlToValidate="txtFName" class="validator">
                        </asp:RequiredFieldValidator>
                    </div>
                    
                    <div>
                        <label for="">Last Name</label>
                        <asp:TextBox ID="txtLName" runat="server" placeholder="Enter your Last Name.."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Please Enter Name" ControlToValidate="txtLName" class="validator">
                        </asp:RequiredFieldValidator>
                    </div>

                    <div>
                        <label for="">Address</label>
                        <asp:TextBox ID="txtAddress" runat="server" placeholder="Enter your Address.."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="txtAddress" ErrorMessage="Please
                        Enter Address" class="validator"></asp:RequiredFieldValidator>
                    </div>

                    <div>
                        <label for="">Age</label>
                        <asp:TextBox ID="txtAge" runat="server" placeholder="Enter your Age.." TextMode="Number" class="validator"></asp:TextBox>
                    </div>

                    <div>
                        <label for="">Email</label>
                        <asp:TextBox ID="txtEmailid" runat="server" placeholder="Enter your Email.."></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailid" ErrorMessage="Please Enter Correct Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([- .]\w+)*" class="validator">
                        </asp:RegularExpressionValidator>
                    </div>

                    <div>
                        <label for="">Phone Number</label>
                        <asp:TextBox ID="txtMobile" runat="server" placeholder="Enter your Phone Number.."></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                        runat="server"
                        ControlToValidate="txtMobile" ErrorMessage="Please Enter
                        Correct Phone No."
                        ValidationExpression="\d{10}" class="validator">
                        </asp:RegularExpressionValidator>
                    </div>

                    <div>
                        <label for="">Username</label>
                        <asp:TextBox ID="txtUsn" runat="server" placeholder="Choose your Username.." onchange="checkUserName(this)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Please Enter Username" ControlToValidate="txtUsn" class="validator">
                        </asp:RequiredFieldValidator>
                        <asp:Label ID="urn" runat="server"></asp:Label>
                    </div>

                    <div>
                        <label for="">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Choose your Password.."></asp:TextBox>
                    </div>

                    <div>
                        <label for="">Confirm Password</label>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" placeholder="Re-Enter your Password.." TextMode="Password"></asp:TextBox>
                         <asp:CompareValidator ID="CompareValidator1" runat="server"
                        ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"
                        ErrorMessage="Password and Confirm Password should be same" class="validator">
                        </asp:CompareValidator>
                    </div>
                </div>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/Assets/nextWhite.png" class="edtbtn" Height="50px" 
                                Width="50px" onclick="ImageButton1_Click"/>
            </div>
        </div>
    </form>
</body>
</html>
