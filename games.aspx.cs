using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
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

    //only a cosmetic rating. no single user rating only and no db update
    protected void gv_games_RowCommand(Object sender, GridViewCommandEventArgs e)
    {
        //SqlConnection con = new SqlConnection(gvGames.DataSourceID);
        
        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow selectedRow = gvGames.Rows[index];        

        if (e.CommandName == "Download"){
            TableCell gameFileCell = selectedRow.Cells[6];
            string gameFileToDL = gameFileCell.Text;
            string DLDir = "~/gameDir/pong.txt";

            FileInfo file = new FileInfo(DLDir);
            if (file.Exists)
            {
                Response.ContentType = "text/plain";
                Response.AddHeader("Content-Disposition", "attachment; filename=" + DLDir);
                Response.TransmitFile(Server.MapPath("~/gameDir/pong.txt"));
                Response.End();
            }
        }
        else if (e.CommandName == "Rate") {
            GridViewRow i = gvGames.SelectedRow;

            TableCell gameAverageCell = selectedRow.Cells[3];
            TableCell gameTotalCell = selectedRow.Cells[4];
            TableCell gameTotalRatingsCell = selectedRow.Cells[5];
            double userRating = double.Parse(rblRating.SelectedValue);
            double gameNewTotal = userRating + double.Parse(gameTotalCell.Text);
            double gameNewTotalRatings = double.Parse(gameTotalRatingsCell.Text);
            gameNewTotalRatings++;
            double gameNewAverage = gameNewTotal / gameNewTotalRatings;
            gameAverageCell.Text = gameNewAverage.ToString();
            gameTotalCell.Text = gameNewTotal.ToString();
            gameTotalRatingsCell.Text = gameNewTotalRatings.ToString();
        }
    }
}