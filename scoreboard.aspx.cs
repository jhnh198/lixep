using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Scoreboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Application.Lock();
        int pageHit = Convert.ToInt32(Application["PageHitsScoreboard"]) + 1;
        //lblPageCount.Text = "You have visited this page " + pageHit.ToString() + " times.";
        Application["PageHitsScoreboard"] = pageHit;
        Application.UnLock();
    }
    
protected void Button1_Click1(object sender, EventArgs e)
    {
        string url = Image1.ImageUrl;
        Image1.ImageUrl = Image2.ImageUrl;
        Image2.ImageUrl = Image3.ImageUrl;
        Image3.ImageUrl = Image4.ImageUrl;
        Image4.ImageUrl = Image5.ImageUrl;
        Image5.ImageUrl = url;

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string url = Image5.ImageUrl;
        Image5.ImageUrl = Image4.ImageUrl;
        Image4.ImageUrl = Image3.ImageUrl;
        Image3.ImageUrl = Image2.ImageUrl;
        Image2.ImageUrl = Image1.ImageUrl;

        Image1.ImageUrl = url;
    }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["Prefrences"];
        if (cookie != null)
        {
            Page.Theme = cookie["StyleSelection"];
        }
    }
    
}
    

