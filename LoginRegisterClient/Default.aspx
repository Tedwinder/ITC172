<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Client</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Login or Register</h1>
    <table>
        <tr>
            <td>User Name</td>
            <td>
            <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox>

            </td>
            </tr>
        <tr>
         <td>Password</td>
            <td>
            <asp:TextBox ID="passwordTextBox" TextMode="Password" runat="server"></asp:TextBox>

            </td>
            </tr>
        <tr>
            <td>
            <asp:Button ID="LoginButton" runat="server" Text="Button" OnClick="LoginButton_Click" />
            </td>
            <td>
                <asp:Label ID="ErrorLabel" runat="server" Text="ErrorLabel"></asp:Label>
            </td>
        </tr>
    </table>
        <asp:LinkButton ID="RegisterLink" runat="server" PostBackUrl="Register.aspx">LinkButton</asp:LinkButton>
        <hr/>
    </div>
    </form>
</body>
</html>



