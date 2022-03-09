using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class Default2 : System.Web.UI.Page
{
    string to = "rajkummar9913@gmail.com";
    string from = "prithvirajmahamulkar100@gmail.com";

    string mailBody = "hello";

    protected void Page_Load(object sender, EventArgs e)
    {
        MailMessage message = new MailMessage(from, to);
        message.Subject = "hmmm";
        message.Body = mailBody;
        message.IsBodyHtml = true;
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        System.Net.NetworkCredential basicCredential1 = new System.Net.NetworkCredential("raj.anotherone@gmail.com", "iluvlinux");
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Credentials = basicCredential1;
        try
        {
            client.Send(message);
        }

        catch (Exception ex)
        {
            throw ex;
        }
    }

}