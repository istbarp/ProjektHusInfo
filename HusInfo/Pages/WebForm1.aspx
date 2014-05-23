<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HusInfo.Pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

	
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="jumbotron">
				  <div class="input-group">
					  <asp:TextBox runat="server" ID="searchBox" onkey OnTextChanged="Unnamed_TextChanged" AutoPostBack="true" type="text" CssClass="form-control" placeholder="Indtast adresse"></asp:TextBox>
					  <span class="input-group-btn">
						  <button class="btn btn-default" type="submit">Søg</button>
					  </span>
				  </div>
		  <br />

		 
		  <div class="panel panel-primary">
			  <div class="panel-heading"><h3 class="panel-title" style="text-align:left">Søge resultater</h3></div>
			  <div class="panel-body" style="text-align:left;">
				<asp:PlaceHolder ID="searchResults" runat="server"></asp:PlaceHolder>
			  </div>
		  </div>


      </div>
    </div>
    </form>
</body>
</html>
