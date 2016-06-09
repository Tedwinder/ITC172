<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Artist</title>
</head>
<body>
    <h1>Add Artist</h1>
    <form id="form1" runat="server">
    <div>
        <table>


               <tr>

           
            <td>Artist Name</td>
            <td>
                <asp:TextBox ID="ArtistNameTextBox" runat="server"></asp:TextBox>

                

            </td>
           
        </tr>
            <tr>

           
            <td>Artist Email</td>
            <td>
                <asp:TextBox ID="ArtistEmailTextBox" runat="server"></asp:TextBox>

                

            </td>
           
        </tr>
            <tr>

           
            <td>Artist WebPage</td>
            <td>
                <asp:TextBox ID="ArtistWebPageTextBox" runat="server"></asp:TextBox>

                

            </td>
           
        </tr>
            <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
            </td>
            <td>
                <asp:Label ID="ErrorLabel" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;
            </td>


        </tr>
        </table>
    
        
        <br />
    
    </div>
    </form>
</body>
</html>
