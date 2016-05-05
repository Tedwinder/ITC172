using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    ShowTrackerServiceReference.ServiceClient stsc
       = new ShowTrackerServiceReference.ServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
            FillVenueDropDown();
        FillArtistDropDown();
            }

    }


    protected void FillArtistDropDown()
    {

        string[] artists = stsc.GetArtist();
        Artist.DataSource = artists;
        Artist.DataBind();

    }

    protected void FillVenueDropDown()
    {

        string[] venues = stsc.GetVenue();
        Venue.DataSource = venues;
        Venue.DataBind();

    }

  

    protected void GetShowsInArtist_Click(object sender, EventArgs e)
    {
        string ArtistChoice = Artist.SelectedItem.Text;


        ShowTrackerServiceReference.ShowsInArtist[] shows = stsc.GetShowsInArtist(ArtistChoice);
        ShowInArtist.DataSource = shows;
        ShowInArtist.DataBind();
    }

    protected void GetShowsInVenue_Click(object sender, EventArgs e)
    {
        string VenueChoice = Venue.SelectedItem.Text;


        ShowTrackerServiceReference.ShowsInVenue[] vens = stsc.GetShowsInVenue(VenueChoice);
        ShowInVenue.DataSource = vens;
        ShowInVenue.DataBind();
    }
}