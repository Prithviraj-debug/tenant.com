<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editProp.aspx.cs" Inherits="editProp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Do you want to Delete this Property?</h1>
        <asp:Button ID="delete" runat="server" Text="Delete" onclick="delete_Click" />
        <asp:Button ID="cancel" runat="server" Text="Cancel" />
      
        
    </div>
    </form>
</body>
</html>
