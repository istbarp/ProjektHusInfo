<%@ Page EnableSessionState="True" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HusInfo.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
	<link href="/Scripts/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="/Scripts/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    
	<div class="container">

      <form class="form-signin" role="form" runat="server">
        <h2 class="form-signin-heading">Please sign in</h2>
        <asp:TextBox ID="UsernameTbe" class="form-control" placeholder="Indtast brugernavn" runat="server" required autofocus/>
        <asp:TextBox ID="PasswordTbe" type="password" class="form-control" placeholder="Password" runat="server" required/>
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <asp:button OnClick="ButtonLogin_Click" class="btn btn-lg btn-primary btn-block" type="submit" Text="Sign in" runat="server" />
      </form>

    </div> <!-- /container -->

</body>
</html>
