using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

        if (!Roles.RoleExists("user"))
        {
            Roles.CreateRole("user");
        }
        Roles.AddUserToRole(wizRegisterUser.UserName, "user");
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
