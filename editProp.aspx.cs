using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;

public partial class editProp : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    OleDbCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void delete_Click(object sender, EventArgs e)
    {
        using (OleDbConnection con = new OleDbConnection(CS))
        {
            cmd = new OleDbCommand("delete from listProp where [pid] = ?", con);
                //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "regisSucc();", true);
        }
    }
}