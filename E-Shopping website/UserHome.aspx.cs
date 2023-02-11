using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Shopping_website
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)


        {

            if (Session["Username"] != null)
            {
                lblSuccess.Text="Login suceess,welcome" + Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("~/signin.aspx");
            }
        }
        protected void btnlogout_click(object sender, EventArgs e)
        {
            Response.Redirect("~/Signin.aspx");
            Session["Username"] = null;
        }
    }
}