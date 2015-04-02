using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string ValidationGroup
    {
        set {vldAllFields.ValidationGroup = value; }
    }
    public void logout()
    {
        
    }
    protected void lbtnLogout_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/Login.aspx");
    }
}
