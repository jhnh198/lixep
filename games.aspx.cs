﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Games : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Application.Lock();
        int pageHit = Convert.ToInt32(Application["PageHitsGames"]) + 1;
        lblPageCount.Text = "You have visited this page " + pageHit.ToString() + " times.";
        Application["PageHitsGames"] = pageHit;
        Application.UnLock();
    }

    public  float averageScore(float reviewScore, int numOfReviews){
        return reviewScore / numOfReviews;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
    protected void btnDownloadGame_Click(object sender, EventArgs e)
    {

    }
}