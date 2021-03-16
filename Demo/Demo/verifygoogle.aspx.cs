using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sociallogin;

namespace Demo
{
    public partial class verifygoogle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["code"] != null)
            {
                var result = googleauth.verifyauth(Request.QueryString["code"].ToString());
                if(result.issuccess)
                {
                    lblid.Text = result.id;
                    lblemail.Text = result.email;
                    lblname.Text = result.name;
                    lblfirst.Text = result.given_name;
                    lbllast.Text = result.family_name;
                    lblpic.Text = result.picture;
                }
                else
                {
                    lblerror.Text = result.error.error;
                }
            }
        }
    }
}