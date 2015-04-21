using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void sendEmail()
    {
        var fromAddress = "lexipadmn@gmail.com";
        var toAddress = "lexipadmn@gmail.com";
        const String pass = "pixel7879";
        string subj = "Comments";
        string body = "From: " + tbName.Text + "\n Comments" + tbComments.Text;
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 847;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, pass);
            smtp.Timeout = 20000;
        }

        smtp.Send(fromAddress, toAddress, subj, body);

    }

    protected void btnCollect_Click(object sender, EventArgs e)
    {
        try
        {
            sendEmail();
            lblMessage.Text = "Sent Successfully!";
            lblMessage.Visible = true;
            tbComments.Text = "";
        }
        catch (Exception)
        {

        }

    }
}