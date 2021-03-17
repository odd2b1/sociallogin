# Sociallogin

Use sociallogin to integrate facebook to your web forms projects.

## Config File
Add the following Keys in web config file.
```
<appSettings>
    <add key="fbsecret" value="Facebook Secret Key" />
    <add key="fbscope" value="public_profile,email" />
    <add key="fbredirecturi" value="Your Redirect URL" />
    <add key="fbappid" value="Facebook Client ID/App Id" />
</appSettings>

````
### Add a Login Button.


````
<asp:LinkButton ID="fbbtn" runat="server" Text="FB Login" onClick="Clickfb">
</asp:LinkButton>

````

Redirect Page to Login
```
Response.Redirect(facebookauth.loginpopup());
```

### Redirect Page
On Redirect Page Use the following Functions-
```
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
```
