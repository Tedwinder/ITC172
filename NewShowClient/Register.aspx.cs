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



   


    /*
           public bool AddArtistr(Book b)
      {

          //just for testing

          Book book = new Book();

          book.BookTitle = b.BookTitle;
          book.BookEntryDate = DateTime.Now;
          book.BookISBN = b.BookISBN;
          foreach (Author a in b.Authors)
          {
              Author author = db.Authors.FirstOrDefault(x => x.AuthorName.Equals(a.AuthorName));
              book.Authors.Add(author);

          }

          foreach (Category c in b.Categories)
          {
              Category category =
                  db.Categories.FirstOrDefault(x => x.CategoryName.Equals(c.CategoryName));
              book.Categories.Add(category);
          }
          bool result = true;
          try
          {
              db.Books.Add(book);
              db.SaveChanges();
          }
          catch
          {
              result = false;
          }
          return result;
      }



      public bool AddReview(Review r)
      {
          bool result = true;
          try
          {
              db.Reviews.Add(r);
              db.SaveChanges();
          }
          catch
          {
              result = false;
          }
          return result;
      } */






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

        if (VenueAgeRestrictionTextBox.Text == "")
        {
            r.VenueAgeRestriction = 0; 
        }
        else
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