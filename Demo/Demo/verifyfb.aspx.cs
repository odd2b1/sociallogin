using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sociallogin;

namespace Demo
{
    public partial class verifyfb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["code"] != null)
            {
                var result = facebookauth.verifyauth(Request.QueryString["code"]);
                if(result.issucces)
                {
                    lblid.Text = result.id;
                    lblemail.Text = result.email;
                    lblname.Text = result.name;
                    lblfirst.Text = result.first_name;
                    lbllast.Text = result.last_name;
                    lblgender.Text = result.gender;
                    lblbirthday.Text = result.birthday;
                }
                else
                {
                    lblerror.Text = result.showerror.error.message;
                }
            }
        }
    }
}