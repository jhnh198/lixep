using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RelatedSites : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Application.Lock();
            int pageHit = Convert.ToInt32(Application["PageHitsRelatedSites"]) + 1;
            lblPageCount.Text = "You have visited this page " + pageHit.ToString() + " times.";
            Application["PageHitsRelatedSites"] = pageHit;
            Application.UnLock();
        }
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