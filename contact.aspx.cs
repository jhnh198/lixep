using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCollect_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage mail = new MailMessage();
            mail.From = new System.Net.Mail.MailAddress("lexipadmn@gmail.com");

            SmtpClient client = new SmtpClient();
            client.Port = 465;
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("lexipadmn@gmail.com", "pixel7879");
            client.Host = "smtp.gmail.com";

            mail.To.Add(new MailAddress("lexipadmn@gmail.com"));
            mail.Subject = "Contact Us";
            mail.Body = tbComments.Text;

            client.Send(mail);
            Response.Write("Mail Sent!");
        }
        catch (Exception exception)
        {
            lblMessage.Visible = true;
            lblMessage.Text = exception.ToString();
        }
    }
}