<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="listProp.aspx.cs" Inherits="listProp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="listPropCon top">
                <h1>List Your Property Here..</h1>
                <div class="listProp">
                    <div class="address">
                        <div>
                            <label for="">City</label>
                            <asp:TextBox ID="city" runat="server" placeholder="Enter City.."></asp:TextBox>
                        </div>
                    
                        <div>
                            <label for="">Building</label>
                            <asp:TextBox ID="bulding" runat="server" placeholder="Name of Building.."></asp:TextBox>
                        </div>

                        <div>
                            <label for="">Locality</label>
                            <asp:TextBox ID="locality" runat="server" placeholder="Enter Locality.."></asp:TextBox>
                        </div>

                        <div>
                            <label for="">Floor No.</label>
                            <asp:TextBox ID="floorNo" runat="server" placeholder="Enter Floor No.." TextMode="Number"></asp:TextBox>
                        </div>

                        <div>
                            <label for="">Total Floors</label>
                            <asp:TextBox ID="totalFloors" runat="server" placeholder="Enter Total Nos. of Floors.." TextMode="Number"></asp:TextBox>
                        </div>

                        <div>
                            <label for="">Flat No.</label>
                            <asp:TextBox ID="flatNo" runat="server" placeholder="Enter Flat No.." TextMode="Number"></asp:TextBox>
                        </div>

                        <div>
                            <label for="">Total Flats</label>
                            <asp:TextBox ID="totalFlats" runat="server" placeholder="Enter Nos. of Flats.." TextMode="Number"></asp:TextBox>
                        </div>

                        <div>
                            <label>Upload Image</label>
                            <br />
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            
                        </div>
                    </div>
                    
                    <div class="basicDtl">
                        <div>
                            <label for="">Age of Property</label>
                            <asp:TextBox ID="AOP" runat="server" placeholder="Enter Age of your Property.." TextMode="Number"></asp:TextBox>
                        </div>
                    
                        <div>
                            <label for="">Built-up Area</label>
                            <asp:TextBox ID="BUA" runat="server" placeholder="in sq.ft.." TextMode="Number"></asp:TextBox>
                        </div>

                        <div>
                            <label for="">BHK No.</label>
                            <asp:TextBox ID="bhkNo" runat="server" placeholder="e.g. 1, 2, 3.." TextMode="Number"></asp:TextBox>
                        </div>

                        <div>
                            <label for="">Furnish Type</label>
                            <asp:TextBox ID="FType" runat="server" placeholder="Fully, Semi or Not Furnished.."></asp:TextBox>
                        </div>

                        <div>
                            <label for="">Monthly Rent</label>
                            <asp:TextBox ID="Rent" runat="server" placeholder="in Rs.." TextMode="Number"></asp:TextBox>
                        </div>

                        <div>
                            <label for="">Maintenance Charges</label>
                            <asp:TextBox ID="maintenance" runat="server" placeholder="in Rs.." TextMode="Number"></asp:TextBox>
                        </div>

                        <div>
                            <label for="">Security Deposit</label>
                            <asp:TextBox ID="deposit" runat="server" placeholder="in Rs per month.." TextMode="Number"></asp:TextBox>
                        </div>

                        <div>
                            <label for="">Available From</label>
                            <asp:TextBox ID="avaFrom" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                        </div>

                        <div>
                            <label for="">Owner's Contact</label>
                            <asp:TextBox ID="ownerCon" runat="server" placeholder="Enter Phone Number" TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                </div>
                    
                <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/Assets/nextWhite.png" class="subBtn" Height="50px" 
                                Width="50px" onclick="ImageButton1_Click" />
    </div>
</asp:Content>

