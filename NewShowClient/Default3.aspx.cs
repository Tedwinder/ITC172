using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }






    protected void RegisterArtist()
    {
        ShowTracklerLoginReference.LoginServiceClient lsc =
            new ShowTracklerLoginReference.LoginServiceClient();

        ShowTracklerLoginReference.Artist a =
            new ShowTracklerLoginReference.Artist();

        /* ( , , 
            , , 
             , , ,
             ,

             );*/
        a.ArtistName = ArtistNameTextBox.Text;
        a.ArtistEmail = ArtistEmailTextBox.Text;
        a.ArtistWebPage = ArtistWebPageTextBox.Text;
        a.ArtistDateEntered = DateTime.Now;

        bool result = lsc.AddArtist(a);
        if (result)
        {
            ErrorLabel.Text = "Registration Successful"; //redirect to desired 


        }
        else
            ErrorLabel.Text = "Registration Failed";
    }



    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        RegisterArtist();
    }
}
