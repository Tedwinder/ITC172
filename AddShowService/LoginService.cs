using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "LoginService" in code, svc and config file together.
public class LoginService : ILoginService
{

   ShowTrackerEntities db = new ShowTrackerEntities();


    public List<string> GetVenue()
    {
        var ven = from a in db.Venues
                  orderby a.VenueName
                  select new { a.VenueName };
        List<string> venues = new List<string>();
        foreach (var ve in ven)
        {
            venues.Add(ve.VenueName.ToString());
        }
        return venues;
    }
    public bool RegisterVenue(Venue r, VenueLogin l)
    {
        //this registers a new reviewer using
        //the stored procedure usp_NewReviewer
        //the stored procedure takes the fields listed
        //as parameters. It returns 0 if good
        //and -1 if the registration fails
        //usernames and emails must be unique
        bool result = true;
        int pass = db.usp_RegisterVenue( r.VenueName, r.VenueAddress, r.VenueCity, 
           r.VenueState, r.VenueZipCode, 
            r.VenuePhone, r.VenueEmail, r.VenueWebPage,
            r.VenueAgeRestriction,
           l.VenueLoginUserName,
            l.VenueLoginPasswordPlain);
        if (pass == -1)
        {
            result = false;
        }

        return result;
    }

    public int VenueLogin(string userName, string password)
    {
        //logs in a reviewer using the stored Procedure
        //usp_Reviewer Login
        // returns 0 if succeeds
        //-1 if it fails. (not the same as the reviewerKey
        //which is also set to 0)
        //when
        int venueKey = 0;
        int result = db.usp_venueLogin(userName, password);
        if (result != -1)
        {
            var key = (from r in db.VenueLogins
                       where r.VenueLoginUserName.Equals(userName)
                      select new { r.VenueKey }).FirstOrDefault();

            venueKey = (int)key.VenueKey;

          }
        return venueKey;

    }


    public bool AddShow(Show s)
    {

        //just for testing

        Show show = new Show();
        show.ShowKey = s.ShowKey;
        show.ShowName = s.ShowName;
        show.ShowDate = s.ShowDate;
        show.ShowTime = s.ShowTime;
        show.ShowTicketInfo = s.ShowTicketInfo;
        show.ShowDateEntered = DateTime.Now;
        show.VenueKey = s.VenueKey;
        
        /*

           foreach (Category c in b.Categories)
           {
               Category category =
                   db.Categories.FirstOrDefault(x => x.CategoryName.Equals(c.CategoryName));
               book.Categories.Add(category);
           }  */
        bool result = true;
        try
        {
            db.Shows.Add(show);
            db.SaveChanges();
        }
        catch
        {
            result = false;
        }
        return result;
    }


    public bool AddArtist(Artist a)
    {

    

        Artist artist = new Artist();

        artist.ArtistName = a.ArtistName;
        artist.ArtistEmail = a.ArtistEmail;
        artist.ArtistWebPage = a.ArtistWebPage;
        

        
        /*

           foreach (Category c in b.Categories)
           {
               Category category =
                   db.Categories.FirstOrDefault(x => x.CategoryName.Equals(c.CategoryName));
               book.Categories.Add(category);
           }  */
        bool result = true;
        try
        {
            db.Artists.Add(artist);
            db.SaveChanges();
        }
        catch
        {
            result = false;
        }
        return result;
    }


}
