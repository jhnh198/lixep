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

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string url = Image1.ImageUrl;
        Image1.ImageUrl = Image2.ImageUrl;
        Image2.ImageUrl = Image3.ImageUrl;
        Image3.ImageUrl = Image4.ImageUrl;
        Image4.ImageUrl = url;

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string url = Image4.ImageUrl;
        Image4.ImageUrl = Image3.ImageUrl;
        Image3.ImageUrl = Image2.ImageUrl;
        Image2.ImageUrl = Image1.ImageUrl;
        Image1.ImageUrl = url;
    }

    
}
