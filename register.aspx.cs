using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    List<string> referralCodes = new List<string>();

    protected void Page_Load(object sender, EventArgs e)
    {

        referralCodes.Add("1337");
       

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Response.Redirect("~/Home.aspx");
        }

    }

    protected void vldCustomCode_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = referralCodes.Contains(args.Value);
    }
}
