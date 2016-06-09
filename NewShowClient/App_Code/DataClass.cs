using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
// libraries needed to talk to database
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



/// <summary>
/// This class will connect to the database. 
/// It will have methods to retrieve the Services. 

/// </summary>
public class DataClass
{
    SqlConnection connect;
    public DataClass()
    {
        connect = new SqlConnection(ConfigurationManager.ConnectionStrings["ShowTrackers"].ToString());
    }//end constructor
    public DataTable GetArtists()
    {

        DataTable tbl = null;
        string sql = "Select ArtistKey, ArtistName from Artist";
        SqlCommand cmd = new SqlCommand(sql, connect);
        SqlDataReader reader = null;
        tbl = new DataTable();
        connect.Open();
        reader = cmd.ExecuteReader();
        tbl.Load(reader);
        reader.Close();
        connect.Close();


        return tbl;

    }

    
}//end class