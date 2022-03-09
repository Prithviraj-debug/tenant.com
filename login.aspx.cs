using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.OleDb;

public partial class login : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    OleDbCommand cmd;
    OleDbDataReader dr;
    string str2 = "";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        using (OleDbConnection con = new OleDbConnection(CS))
        {
            con.Open();
            cmd = new OleDbCommand("select username, password from userRegis", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string un = dr.GetValue(0).ToString();
                string pss = dr.GetValue(1).ToString();

                if (un == txtUserName.Text && pss == txtPassword.Text)
                {
                    str2 = "insert into [sessions] ([username],[date])";
                    str2 = str2 + "VALUES";
                    str2 = str2 + "( '" + txtUserName.Text + "','" + DateTime.Now + "') ";
                    cmd = new OleDbCommand(str2, con);
                    cmd.ExecuteNonQuery();
                    //Session Started
                    OleDbCommand cmd2 = new OleDbCommand("select uid from userRegis", con);
                    int ID = (int)cmd2.ExecuteScalar();
                    Session["ID"] = ID;
                    Session["UserName"] = txtUserName.Text;
                    con.Close();
                    Response.Redirect("home.aspx");
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "loginFail();", true);
                }
            }
        }














        /*
         * OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\Projects\Final Year\tenant.com\tenantDB.accdb"); 

    OleDbCommand cmd;
    String str2 = "";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string sql1 = " select * from [userReg] where uname = @username and pass = @password";
        cmd = new OleDbCommand(sql1, con);
        cmd.Parameters.AddWithValue("uname", txtUserName.Text);
        cmd.Parameters.AddWithValue("pass", txtPassword.Text);

        con.Open();
        OleDbDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            str2 = "insert into [sessions] ([username],[date])";
            str2 = str2 + "VALUES";
            str2 = str2 + "( '" + txtUserName.Text + "','" + DateTime.Now + "') ";  
            cmd = new OleDbCommand(str2, con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Session Started
            Session["ID"] = txtUserName.Text;
            Response.Redirect("home.aspx");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Messagebox", "alert('Log in Successfully');", true);

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Messagebox", "alert('Log in failed');", true);
            //Label1.Text = "Please Enter Valid Username and Paswword";
        }
         * 
         */
    }
}