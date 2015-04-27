using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Secured_User_Pages_myAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
        {
            lblUserName.Text = System.Web.HttpContext.Current.User.Identity.Name;
        }
        else lblUserName.Text = "user not logged in or invalid credentials.";
        TimeSpan time = (((DateTime)Session["SessionStart"]).AddDays(7) - DateTime.Now);
        int days = time.Days;
        int hours = time.Hours;
        int minutes = time.Minutes;
        lblTimeLoggedIn.Text = "You have been logged in for " + days + " days " + hours + " hours " + minutes + " minutes.";
    }

}