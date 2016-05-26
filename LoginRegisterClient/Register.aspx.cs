using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LastNameTextBox_TextChanged(object sender, EventArgs e)
    {
        RegisterVenue();
    }
    protected void RegisterVenue()
    {
        ShowTracklerLoginReference.LoginServiceClient lsc =
            new ShowTracklerLoginReference.LoginServiceClient();

        ShowTracklerLoginReference.VenueLogin l =
          new ShowTracklerLoginReference.VenueLogin();

        ShowTracklerLoginReference.Venue r =
            new ShowTracklerLoginReference.Venue();

        /* ( , , 
            , , 
             , , ,
             ,

             );*/
        r.VenueName = VenueNameTextBox.Text;
        r.VenueAddress = VenueAddressTextBox.Text;
        r.VenueCity = VenueCityTextBox.Text;
        r.VenueState = VenueStateTextBox.Text;
        r.VenueZipCode = VenueZipCodeTextBox.Text;
        r.VenuePhone = VenuePhoneTextBox.Text;
        r.VenueWebPage = VenueWebPageTextBox.Text;
        r.VenueAgeRestriction = int.Parse(VenueAgeRestrictionTextBox.Text);
        l.VenueLoginUserName = LastNameTextBox.Text;
        r.VenueEmail = EmailTextBox.Text;
        l.VenueLoginPasswordPlain = PasswordTextBox.Text;

        bool result = lsc.RegisterVenue(r,l);
        if (result)
        {
            Response.Redirect("Default.aspx"); //redirect to desired 


        }
        else
            ErrorLabel.Text = "Registration Failed";
    }
}