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
            SmtpClient client = new SmtpClient();
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("lexipadmn@gmail.com", "pixel1234");
            client.UseDefaultCredentials = false;
            client.Credentials = credentials;

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("lexipadmn@gmail.com");
            mail.To.Add(new MailAddress("kyle.tamayo@gmail.com"));
            mail.Subject = "Contact Us";
            mail.IsBodyHtml = true;
            mail.Body = tbComments.Text;

        try
        {
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