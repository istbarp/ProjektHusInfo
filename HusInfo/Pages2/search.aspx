<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="HusInfo.Pages2.search" %>

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
          <li class="active"><a href="/Pages2/search.aspx">Søg</a></li>
          <li><a href="/Pages2/login.aspx">Login</a></li>
        </ul>
        <h3 class="text-muted">HusInfo</h3>
      </div>

      <div class="jumbotron">
			<form target="_self" method="get">
				  <div class="input-group">
					  <input name="search" type="text" class="form-control" placeholder="Indtast adresse">
					  <span class="input-group-btn">
						  <button class="btn btn-default" type="submit">Søg</button>
					  </span>
				  </div>
				  <!-- /input-group -->
			</form>
		  <br />

		  <% string search = Request.QueryString["search"]; %>
		  <% if (!string.IsNullOrEmpty(search)) { %>
		  <div class="panel panel-primary">
			  <div class="panel-heading"><h3 class="panel-title" style="text-align:left">Søge resultater</h3></div>
			  <div class="panel-body" style="text-align:left;">
				  <%
					HusInfo.Controller.HouseCtr hCtr = new HusInfo.Controller.HouseCtr();
					List<HusInfo.Model.House> hList = hCtr.getHouseAddress(search);

					foreach (HusInfo.Model.House h in hList) {
					  %>
					<h4><a href="/Pages2/houseInfo.aspx?id=<%=h.id %>"><%= h.address + ", " + h.zipCode.ToString() + ", " + h.city %></a></h4>
				  <% } %>
			  </div>
		  </div>
		  <% } %>

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
