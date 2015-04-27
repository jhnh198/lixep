using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Channels;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

public partial class Games : System.Web.UI.Page
{
    //reference in making the gv command options
    //https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.buttonfield.commandname.aspx?cs-save-lang=1&cs-lang=csharp#code-snippet-2
    protected void Page_Load(object sender, EventArgs e)
    {
        Application.Lock();
        int pageHit = Convert.ToInt32(Application["PageHitsGames"]) + 1;
        lblPageCount.Text = "You have visited this page " + pageHit.ToString() + " times.";
        Application["PageHitsGames"] = pageHit;
        Application.UnLock();
    }

    public float averageScore(float reviewScore, int numOfReviews){
        return reviewScore / numOfReviews;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
    protected void btnDownloadGame_Click(object sender, EventArgs e)
    {

    }

    //stuck here
    void gv_games_RowCommand(Object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow selectedRow = gvGames.Rows[index];
        TableCell contactName = selectedRow.Cells[3];
        
        string contact = contactName.Text;
        lblOutput.Text = contact;
        if (e.CommandName == "Download"){
            
        }
        else if (e.CommandName == "Rate") { 
            
        }
    }
}