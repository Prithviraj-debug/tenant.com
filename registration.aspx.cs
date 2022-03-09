﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    OleDbCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Reg_Click(object sender, EventArgs e)
    {
        using (OleDbConnection con = new OleDbConnection(CS))
        {
            cmd = new OleDbCommand("INSERT INTO userRegis ([fname],[lname],[address],[age],[email],[phone],[username],[password]) values('" + txtFName.Text + "','" + txtLName.Text + "','" + txtAddress.Text + "','" + txtAge.Text + "','" + txtEmailid.Text + "','" + txtMobile.Text + "','" + txtUsn.Text + "','" + txtPassword.Text + "')", con);
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