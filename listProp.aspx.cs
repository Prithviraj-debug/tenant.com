using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data.OleDb;

public partial class listProp : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    OleDbConnection con = new OleDbConnection();
    OleDbCommand cmd;
    string str = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("login.aspx");
        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        using (OleDbConnection con = new OleDbConnection(CS))
        {
            string fileName = "";
            if (FileUpload1.HasFile)
            {
                fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/") + fileName);
            }

            str = "INSERT INTO listProp ([city],[building],[locality],[floor_no],[total_floors],[flat_no],[total_flats],[image],[age_of_property],[built_up_area],[bhk_no],[furnish_type],[monthly_rent],[maintenance_chrg],[deposit],[avail_from],[contact_no],[username],[uid]) values('" + city.Text + "','" + bulding.Text + "','" + locality.Text + "','" + floorNo.Text + "','" + totalFloors.Text + "','" + flatNo.Text + "','" + totalFlats.Text + "','" + ("~/images/") + fileName + "','" + AOP.Text + "','" + BUA.Text + "','" + bhkNo.Text + "','" + FType.Text + "','" + Rent.Text + "','" + maintenance.Text + "','" + deposit.Text + "','" + avaFrom.Text + "','" + ownerCon.Text + "', '" + Session["UserName"] + "', '" + Session["ID"] + "')";
            cmd = new OleDbCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();

            con.Close();
            city.Text = "";
            bulding.Text = "";
            locality.Text = "";
            floorNo.Text = "";
            totalFloors.Text = "";
            flatNo.Text = "";
            totalFlats.Text = "";
            AOP.Text = "";
            BUA.Text = "";
            bhkNo.Text = "";
            FType.Text = "";
            Rent.Text = "";
            maintenance.Text = "";
            deposit.Text = "";
            avaFrom.Text = "";
            ownerCon.Text = "";

            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS",
   "setTimeout(function() { window.location.replace('home.aspx') }, 5000);", true);
    }
    }
}