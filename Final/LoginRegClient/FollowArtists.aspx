<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FollowArtists.aspx.cs" Inherits="FollowArtists" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ShowTracker|Follow Artists</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

    </div>
    <h1>Follow Artists</h1>
    <div>
        <asp:Label ID="lblInstructions" runat="server" Text="Label"></asp:Label>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="3"></asp:CheckBoxList>
        <asp:Button ID="Button1" runat="server" Text="Add Artists" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
