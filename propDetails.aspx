<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="propDetails.aspx.cs" Inherits="propDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script src="./app.js"></script>
<link rel="Stylesheet" href="style.css" type="text/css" />
<link rel="Stylesheet" href="propDetails.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1">
        <ItemTemplate>
        <div class="image">
            <asp:Image class="img" ID="Image1" runat="server" ImageUrl= '<%# Eval("image") %>' /> <br />
                   <br />
        </div>

        <div class="details">
            <div>
             City:<asp:Label ID="Label" runat="server" Text='<%# Eval("city") %>' />
            </div>
            
            <div>
             building:<asp:Label ID="Label1" runat="server" Text='<%# Eval("building") %>' />
            </div>

            <div>
             locality:<asp:Label ID="Label2" runat="server" Text='<%# Eval("locality") %>' />
            </div>
            
            <div>
             floor no:<asp:Label ID="Label3" runat="server" Text='<%# Eval("floor_no") %>' />
            </div>
            
            <div>
             total floors:<asp:Label ID="Label4" runat="server" Text='<%# Eval("total_floors") %>' />
            </div>
            
            <div>
             flat no:<asp:Label ID="Label5" runat="server" Text='<%# Eval("flat_no") %>' />
            </div>
            
            <div>
             total flats:<asp:Label ID="Label6" runat="server" Text='<%# Eval("total_flats") %>' />
            </div>
            
            <div>
             age of property:<asp:Label ID="Label7" runat="server" Text='<%# Eval("age_of_property") %>' />
            </div>
            
            <div>
             built-up area:<asp:Label ID="Label8" runat="server" Text='<%# Eval("built_up_area") %>' />
            </div>
            
            <div>
             BHK:<asp:Label ID="Label9" runat="server" Text='<%# Eval("bhk_no") %>' />
            </div>
            
            <div>
             furnish type:<asp:Label ID="Label10" runat="server" Text='<%# Eval("furnish_type") %>' />
            </div>
            
            <div>
             monthly rent:<asp:Label ID="Label11" runat="server" Text='<%# Eval("monthly_rent") %>' />
            </div>
            
            <div>
             maintenance charges:<asp:Label ID="Label12" runat="server" Text='<%# Eval("maintenance_chrg") %>' />
            </div>
            
            <div>
             security deposit:<asp:Label ID="Label13" runat="server" Text='<%# Eval("deposit") %>' />
            </div>
            
            <div>
             available from:<asp:Label ID="Label14" runat="server" Text='<%# Eval("avail_from") %>' />
            </div>
            
            <div>
             owner's contact:<asp:Label ID="Label16" runat="server" Text='<%# Eval("contact_no") %>' />
            </div
            
        </div>

        </ItemTemplate>
    </asp:DataList>

    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/tenantDB.accdb"
        SelectCommand="SELECT * FROM [listProp] WHERE ([pid] = ?)">
        <SelectParameters>
                  <asp:QueryStringParameter DefaultValue="1" Name="pid" QueryStringField="pid" 
                      Type="Int32" />
              </SelectParameters>
    </asp:AccessDataSource>

</asp:Content>

