using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {

            loginBtn.Visible = true;
            profile.Visible = false;
            regBtn.Visible = true;
            listings.Visible = false;
            list.Visible = false;

        }

        else
        {
            loginBtn.Visible = false;

            profile.Visible = true;
            regBtn.Visible = false;
            listings.Visible = true;
            list.Visible = true;



        }
    }

    protected void Login_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Remove("UserName");
        Response.Redirect("home.aspx");
    }

    protected void listings_Click(object sender, EventArgs e)
    {

    }
}
