using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {

        if(Session["Userkey"] !=null)
            {
            if (!IsPostBack)
                LoadDropDownList();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {


        AddShow();





    }

    protected void AddShow()
    {
        ShowTracklerLoginReference.LoginServiceClient lsc =
            new ShowTracklerLoginReference.LoginServiceClient();

        ShowTracklerLoginReference.VenueLogin l =
          new ShowTracklerLoginReference.VenueLogin();

        ShowTracklerLoginReference.Venue r =
            new ShowTracklerLoginReference.Venue();

        ShowTracklerLoginReference.Show s =
             new ShowTracklerLoginReference.Show();

        /* */


        s.ShowName = ShowNameTextBox.Text;
        s.ShowDate = DateTime.Parse(ShowDateTextBox.Text);
        s.ShowTime = TimeSpan.Parse(ShowTimeTextBox.Text);
        s.ShowTicketInfo = ShowTicketInfoTextBox.Text;
        l.VenueLoginKey = (int)Session["Userkey"];
       

        bool result = lsc.AddShow(s);
        if (result)
        {
            ErrorLabel.Text = "Registration Successful!";
            //Response.Redirect("Default.aspx"); //redirect to desired 


        }
        else
            ErrorLabel.Text = "Registration Failed";
    }



    protected void ArtistButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx");
    }

    protected void LoadDropDownList()
    {

        //Declare the dataTabe
        DataTable table = null; ;
        try
        {
            //call the method in the class to fill the table
            table = dc.GetArtists();
        }
        catch (Exception ex)
        {
            ErrorLabel.Text = ex.Message;
        }
        //Attach the table as a datasource for the 
        //drop down list
        //assign the display and value fields
       ArtistDropDownList.DataSource = table;
        ArtistDropDownList.DataTextField = "ArtistName";
        ArtistDropDownList.DataValueField = "ArtistKey";
        ArtistDropDownList.DataBind();


    }

    protected void ArtistDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}