# Sociallogin

Use sociallogin to integrate facebook,Google Login to your web forms projects.

## Config File
Add the following Keys in web config file.
```
<appSettings>
    //For Facebook
    <add key="fbsecret" value="Facebook Secret Key" />
    <add key="fbscope" value="public_profile,email" />
    <add key="fbredirecturi" value="Your Redirect URL" />
    <add key="fbappid" value="Facebook Client ID/App Id" />
    //For Google
    <add key="googlesecret" value="Google Secret Key" />
    <add key="googleredirecturi" value="Google Redirect URL" />
    <add key="googleclientid" value="Google Client Id" />
</appSettings>

````
### Add a Login Button.


````
<asp:LinkButton ID="fbbtn" runat="server" Text="FB Login" onClick="Clickfb">
</asp:LinkButton>

<asp:LinkButton ID="googlebtn" runat="server" Text="Google Login" onClick="Clickgoogle">
</asp:LinkButton>

````

Redirect Page to Login
```
//for Facebook
Response.Redirect(facebookauth.loginpopup());
//For Google
Response.Redirect(googleauth.loginpopup());
```

### Redirect Page
On Redirect Page
```
//For Facebook
protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["code"] != null)
            {
                var result = facebookauth.verifyauth(Request.QueryString["code"]);
                if(result.issucces)
                {
                   // result.id,
                   // result.email, 
                   //result.name, 
                   //result.first_name,
                   //result.last_name, 
                   //result.gender, 
                   //result.birthday
                }
                else
                {
                    // result.error.message;
                    // result.error.code;
                    // result.error.fbtrace_id;
                }
            }
        }

//For Google
protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["code"] != null)
            {
                var result = googleauth.verifyauth(Request.QueryString["code"].ToString());
                if(result.issuccess)
                {
                    //result.id;
                    //result.email;
                    //result.name;
                    //result.given_name;
                    //result.family_name;
                    //result.picture;
                }
                else
                {
                    //result.error.error;
                    //result.error.error_description;
                }
            }
        }


```


## License
[Github Demo](https://github.com/odd2b1/sociallogin)
