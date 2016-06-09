<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>User Name</td>
            <td>
                
                <asp:TextBox ID="LastNameTextBox" runat="server" OnTextChanged="LastNameTextBox_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Error: User Name Required" ControlToValidate="LastNameTextBox"></asp:RequiredFieldValidator>
            </td>
            <td></td>
        </tr>

         <tr>

             <!-- (r., r.VenueAddress, r.VenueCity, 
            r.VenueState, r.VenueZipCode, 
             r.VenuePhone, , r.VenueWebPage,
             r.VenueAgeRestriction,

             );*/ -->
            <td>Venue Name</td>
            <td>
                <asp:TextBox ID="VenueNameTextBox" runat="server"></asp:TextBox>

            </td>
            <td></td>
        </tr>


        <tr>

             <!-- (r., r., r.VenueCity, 
            r.VenueState, r.VenueZipCode, 
             r.VenuePhone, , r.VenueWebPage,
             r.VenueAgeRestriction,

             );*/ -->
            <td>Venue Address</td>
            <td>
                <asp:TextBox ID="VenueAddressTextBox" runat="server"></asp:TextBox>

            </td>
            <td></td>
        </tr>

          <tr>

             <!-- (r., r., r.VenueCity, 
            r.VenueState, r.VenueZipCode, 
             r.VenuePhone, , r.VenueWebPage,
             r.VenueAgeRestriction,

             );*/ -->
            <td>Venue City</td>
            <td>
                <asp:TextBox ID="VenueCityTextBox" runat="server"></asp:TextBox>

            </td>
            <td></td>
        </tr>
        
          <tr>

             <!-- (r., r., r., 
            r., r.VenueZipCode, 
             r.VenuePhone, , r.VenueWebPage,
             r.VenueAgeRestriction,

             );*/ -->
            <td>Venue State</td>
            <td>
                <asp:TextBox ID="VenueStateTextBox" runat="server"></asp:TextBox>

            </td>
            <td></td>
        </tr>
        

        <tr>

             <!-- (r., r., r., 
            r., r., 
             r.VenuePhone, , r.VenueWebPage,
             r.VenueAgeRestriction,

             );*/ -->
            <td>Venue Zip Code</td>
            <td>
                <asp:TextBox ID="VenueZipCodeTextBox" runat="server"></asp:TextBox>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="VenueZipCodeTextBox" ErrorMessage="Not a valid postal code" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>

            </td>
            <td></td>
        </tr>
        
        <tr>

             <!-- (r., r., r., 
            r., r., 
             r., , r.VenueWebPage,
             r.VenueAgeRestriction,

             );*/ -->
            <td>Venue Phone</td>
            <td>
                <asp:TextBox ID="VenuePhoneTextBox" runat="server" ></asp:TextBox><!--OnTextChanged="VenuePhoneTextBox_TextChanged" [I deleted this b/c caused an error]-->

                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="VenuePhoneTextBox" ErrorMessage="Not a Valid Phone Number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>

            </td>
            <td></td>
        </tr>
        
        <tr>

             <!-- (r., r., r., 
            r., r., 
             r., , r.,
             r.VenueAgeRestriction,

             );*/ -->
            <td>VenueWebPage</td>
            <td>
                <asp:TextBox ID="VenueWebPageTextBox" runat="server"></asp:TextBox>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="VenueWebPageTextBox" ErrorMessage="not a valid web address" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>

            </td>
            <td></td>
        </tr>

        <tr>

             <!-- (r., r., r., 
            r., r., 
             r., , r.VenueWebPage,
             r.VenueAgeRestriction,

             );*/ -->
            <td>Venue Age Restriction</td>
            <td>
                <asp:TextBox ID="VenueAgeRestrictionTextBox" runat="server"></asp:TextBox>

                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="VenueAgeRestrictionTextBox" ErrorMessage="RangeValidator" MinimumValue="21" MaximumValue="99"></asp:RangeValidator>

            </td>
            <td></td>
        </tr>

        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required" ControlToValidate="EmailTextBox" ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not a Valid Email" 
                    ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>


            </td>
        </tr>


         <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is Required" ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator>
            </td>
            <td>


            </td>
        </tr>

         

           <tr>
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="ConfirmTextBox" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords don't match"
                    ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmTextBox"></asp:CompareValidator>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" />
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
