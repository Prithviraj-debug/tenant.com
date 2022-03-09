using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

   
    protected void logoutBtn_Click1(object sender, EventArgs e)
    {
        Session.Remove("UserName");
        Response.Redirect("home.aspx");
    }
}