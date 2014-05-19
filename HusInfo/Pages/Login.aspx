<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HusInfo.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 
    <div id="UsernameDiv">
        <asp:Label ID="ELabelUsername" runat="server" Text="Brugernavn:"></asp:Label>
        <asp:TextBox ID="UsernameTbe" runat="server"></asp:TextBox>
        </div>

    <div id="PasswordDiv">
        <asp:Label ID="ELabelPassword" runat="server" Text="Adgangskode:"></asp:Label>
        <asp:TextBox ID="PasswordTbe" runat="server"></asp:TextBox>
        </div>

    <div id="ButtonLoginDiv">
        <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click"/>
    </div>

    </form>
</body>
</html>
