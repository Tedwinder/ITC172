<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:DropDownList ID="Venue" runat="server"></asp:DropDownList>
        <asp:GridView ID="ShowInVenue" runat="server"></asp:GridView>
        <asp:Button ID="GetShowsInVenue" runat="server" Text="GetShowsInVenue" OnClick="GetShowsInVenue_Click" />
        <br />
        <asp:DropDownList ID="Artist" runat="server"></asp:DropDownList>
        <asp:GridView ID="ShowInArtist" runat="server"></asp:GridView>
        <asp:Button ID="GetShowsInArtist" runat="server" Text="GetShowsInArtist" OnClick="GetShowsInArtist_Click" />
    </div>
    </form>
</body>
</html>
