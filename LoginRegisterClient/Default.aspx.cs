using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        Login();
    }
    protected void Login()
    {
       ShowTracklerLoginReference.LoginServiceClient rs =
            new ShowTracklerLoginReference.LoginServiceClient();
        int key = rs.VenueLogin(UserTextBox.Text, passwordTextBox.Text);
        if(key!=0)
        {
            Response.Redirect("Default2.aspx"); //redirect to desired
            Session["Userkey"] = key;
        }
        else
        {
            ErrorLabel.Text = "Invalid Login";

        }

    }
}
