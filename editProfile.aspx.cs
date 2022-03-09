using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;

public partial class editProfile : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    OleDbCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        using (OleDbConnection con = new OleDbConnection(CS))
        {
            cmd = new OleDbCommand("update userRegis set fname = '" + txtFName.Text + "',lname = '" + txtLName.Text + "',address = '" + txtAddress.Text + "',age = '" + txtAge.Text + "',email = '" + txtEmailid.Text + "',phone = '" + txtMobile.Text + "',username = '" + txtUsn.Text + "',password = '" + txtPassword.Text + "' where uid = " + Session["ID"] + "", con);
            OleDbCommand cmd2 = new OleDbCommand("select username from userRegis", con);
            con.Open();
            string uname = (string)cmd2.ExecuteScalar();
            if (txtUsn.Text != uname)
            {
                cmd.ExecuteNonQuery();
                con.Close();
                txtFName.Text = "";
                txtLName.Text = "";
                txtAddress.Text = "";
                txtAge.Text = "";
                txtEmailid.Text = "";
                txtMobile.Text = "";
                txtUsn.Text = "";
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "regisSucc();", true);
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS",
       "setTimeout(function() { window.location.replace('login.aspx') }, 5000);", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Username Already Exists!!');", true);
            }
        }
    }
}