<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Show</title>
</head>
<body>
    <form id="Add_Show" runat="server">
    <div>
    <h1>Add Show</h1>



         <table>
        <tr>
            <td>Show Name</td>
            <td>
                
                <asp:TextBox ID="ShowNameTextBox" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Error: User Name Required" ControlToValidate="ShowNameTextBox"></asp:RequiredFieldValidator>
            </td>
            <td></td>
        </tr>

         <tr>

             <!--      show.ShowKey = s.ShowKey;
        show.ShowName = s.ShowName;
        show.ShowDate = s.ShowDate;
        show.ShowTime = s.ShowTime;
        show.ShowTicketInfo = s.ShowTicketInfo;
        show.ShowDateEntered = DateTime.Now;
        show.VenueKey = s.VenueKey; -->
            <td>Venue Name</td>
            <td>
                <asp:TextBox ID="VenueNameTextBox" runat="server"></asp:TextBox>

            </td>
            <td></td>
        </tr>


        

        <tr>

           
            <td>Show Date</td>
            <td>
                <asp:TextBox ID="ShowDateTextBox" runat="server"></asp:TextBox>

                

            </td>
           
        </tr>
        
        <tr>

       
            <td>Show Time</td>
            <td>
                <asp:TextBox ID="ShowTimeTextBox" runat="server" ></asp:TextBox><!--OnTextChanged="VenuePhoneTextBox_TextChanged" [I deleted this b/c caused an error]-->

                

            </td>
            <td></td>
        </tr>
        
        <tr>

          <!--      show.ShowKey = s.ShowKey;
        show.ShowName = s.ShowName;
        show.ShowDate = s.ShowDate;
        show.ShowTime = s.ShowTime;
        show.ShowTicketInfo = s.ShowTicketInfo;
        show.ShowDateEntered = DateTime.Now;
        show.VenueKey = s.VenueKey; -->
            <td>Show Ticket Info</td>
            <td>
                <asp:TextBox ID="ShowTicketInfoTextBox" runat="server"></asp:TextBox>

              

            </td>
            <td></td>
        </tr>

      

        <tr>
            <td>Artist</td>
            <td>
                <asp:DropDownList ID="ArtistDropDownList" runat="server" OnSelectedIndexChanged="ArtistDropDownList_SelectedIndexChanged"></asp:DropDownList>

                
            </td>
            <td>
                <asp:LinkButton ID="AddArtist" runat="server"  PostBackUrl="Default3.aspx">Add New Artist!</asp:LinkButton>

            </td>
        </tr>
           
        
        <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
            </td>
            <td>
                <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
            </td>
            <td>
                &nbsp;
            </td>


        </tr>
    </table>
    </div>
      </form>
</body>
</html>
