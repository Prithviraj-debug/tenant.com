using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.OleDb;

public partial class contactUs : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
protected void  Button1_Click(object sender, EventArgs e)
{
    using (OleDbConnection con = new OleDbConnection(CS))
            {
                OleDbCommand cmd = new OleDbCommand("Insert into [feedback](name,mail,message) values('" + txtName.Text + "', '" + txtMail.Text + "', '" + txtMsg.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                txtName.Text = "";
                txtMail.Text = "";
                txtMsg.Text = "";
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "msgSent();", true);
            }
}
}