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
            MailMessage mail = messageCreation();
            SmtpClient client = new SmtpClient();
            client.Send(mail);
            Response.Write("Mail Sent!");
        }
        catch(Exception exception)
        {
            lblMessage.Visible = true;
            lblMessage.Text = exception.ToString();
        }
    }

    protected MailMessage messageCreation()
    {
        MailMessage mail = new MailMessage();
        mail.To.Add("lexipadmn@gmail.com");
        mail.From = new MailAddress("lexipadmn@gmail.com", tbName.Text);
        mail.Subject = "Contact Us";
        mail.Body = tbComments.Text;
        return mail;
    }
}