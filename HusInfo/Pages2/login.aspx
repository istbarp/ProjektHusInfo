<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HusInfo.Pages2.login" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Narrow Jumbotron Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/Scripts/bootstrap2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/Scripts/bootstrap2/css/jumbotron-narrow.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">
      <div class="header">
        <ul class="nav nav-pills pull-right">
          <li><a href="/default2.aspx">Forside</a></li>
          <li><a href="/Pages2/houses.aspsx">Boliger</a></li>
          <li><a href="/Pages2/search.aspx">Søg</a></li>
          <li class="active"><a href="/Pages2/login.aspx">Login</a></li>
        </ul>
        <h3 class="text-muted">HusInfo</h3>
      </div>

      <div class="jumbotron">
		  <form class="form-signin" role="form">
			  <h2 class="form-signin-heading">Log ind</h2>
			  <input type="email" class="form-control" placeholder="Brugernavn" required autofocus>
			  <input type="password" class="form-control" placeholder="Adgangskode" required>
			  <label class="checkbox">
				  <input type="checkbox" value="remember-me">
				  Husk mig
			  </label>
			  <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
		  </form>
      </div>

      <div class="footer">
        <p>&copy; Company 2014</p>
      </div>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
</html>
