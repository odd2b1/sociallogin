using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sociallogin;

namespace Demo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtnfacebook_Click(object sender, EventArgs e)
        {
            Response.Redirect(facebookauth.loginpopup());
        }

        protected void lbtngoogle_Click(object sender, EventArgs e)
        {
            Response.Redirect(googleauth.loginpopup());
        }
    }
}