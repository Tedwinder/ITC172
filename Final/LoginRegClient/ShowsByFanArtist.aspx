<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowsByFanArtist.aspx.cs" Inherits="ShowsByFanArtist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    
    <div id="wrapper">
        <br /><!--Shows by Artist-->
    <div id="ShowsByArtist">
        
        <h2>Shows by Artists</h2>
        <asp:GridView ID="gvShowsByFanArtist" CssClass="gridview" runat="server"></asp:GridView>
        <asp:Button ID="btnGetShowsByFanArtist" CssClass="button" runat="server" Text="Get Shows" OnClick="btnGetShowsByArtist_Click" Width="90px" />
        <asp:Label ID="lblErrorShowsByArtist" runat="server" Text="" ForeColor="Red"></asp:Label>
    </div>
    </div>
    </form>
</body>
</html>
