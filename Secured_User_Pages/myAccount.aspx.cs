using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Secured_User_Pages_myAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            populateDDL();
            ddlStyleSelection.Visible = true;
            ProfileCommon profile = Profile.GetProfile(User.Identity.Name);
            if(profile.LastUpdatedDate == DateTime.MinValue)
            {
                initialInfo.Visible = true;
            }
            else
            {
                savedInfo.Visible = true;
                showProfile();
            }

            HttpCookie cookie = Request.Cookies["Preferences"];
            if (cookie != null)
            {
                ddlStyleSelection.SelectedValue = cookie["StyleSelection"];
            }
            else
            {
                ddlStyleSelection.SelectedIndex = 0;
            }
        }


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

    private void showProfile()
    {
        lblShowFirstName.Text = Profile.FirstName;
        lblShowLastName.Text = Profile.LastName;
        lblShowLocation.Text = Profile.Location;
        lblShowAbout.Text = Profile.About;
        savedInfo.Visible = true;
    }

    protected void populateDDL()
    {
        ddlStyleSelection.Items.Add(new ListItem("Style"));
        ddlStyleSelection.Items.Add(new ListItem("Dark"));
        ddlStyleSelection.SelectedIndex = 0;
    }

    protected void btnSettings_Click(object sender, EventArgs e)
    {
        saveProfile();
        showProfile();
        initialInfo.Visible = false;
    }

    private void saveProfile()
    {
        Profile.FirstName = txtFirstName.Text;
        Profile.LastName = txtLastName.Text;
        Profile.Location = txtLocation.Text;
        Profile.About = txtAbout.Text;
        Profile.Save();
    }


    protected void btnCancel_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["Prefrences"];
        ddlStyleSelection.SelectedValue = cookie["StyleSelection"];
        showProfile();
        initialInfo.Visible = false;
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        initialInfo.Visible = true;
        savedInfo.Visible = false;
        txtFirstName.Text = Profile.FirstName;
        txtLastName.Text = Profile.LastName;
        txtLocation.Text = Profile.Location;
        txtAbout.Text = Profile.About;
        btnCancel.Visible = true;
    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        Page.Theme = "Style";
        if(Request.Form != null && Request.Form.Count > 0)
        {
            Page.Theme = Request.Form[4];
        }
    }
    protected void ddlStyleSelection_SelectedIndexChanged(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["Prefrences"];
        if (cookie == null)
        {
            cookie = new HttpCookie("Prefrences");
            cookie["StyleSelection"] = ddlStyleSelection.SelectedValue;
            cookie.Expires = DateTime.Now.AddDays(10);
            Response.Cookies.Add(cookie);
        }
        else
        {
            cookie["StyleSelection"] = ddlStyleSelection.SelectedValue;
        }
    }
}