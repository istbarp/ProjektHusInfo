<%@ Page Title="" Language="C#" MasterPageFile="~/content.Master" AutoEventWireup="true" CodeBehind="houseInfo.aspx.cs" Inherits="HusInfo.Pages.houseInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContainerPlaceHolder" runat="server">
	<style>
		img
		{
			margin: auto;
		}
	</style>

      <div class="jumbotron">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<% i = 0; %>
				<% foreach (HusInfo.Model.Picture p in house.Picture) { %>
					<% if (i == 0) { %>
						<li data-target="#carousel-example-generic" data-slide-to="<%=i %>" class="active"></li>
					<% } else { %>
						<li data-target="#carousel-example-generic" data-slide-to="<%=i %>"></li>
					<% } %>
				<% i++; } %>
			</ol>
			
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<% i = 0; %>
				<% foreach (HusInfo.Model.Picture p in house.Picture) { %>
				<div class="<% if (i == 0) Response.Write("item active"); else Response.Write("item"); %>">
					<img src="<%=p.pictureFilename%>" alt="..." />
				</div>
				<% i++; } %>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
      </div>

      <div class="row marketing">
        <div class="col-lg-6">
			<% for (i = 0; i < rows.GetLength(0); i += 2) { %>
			<h4><%=rows[i,0] %></h4>
			<p><%=rows[i,1] %></p>
			<% } %>
        </div>

        <div class="col-lg-6">
			<% for (i = 1; i < rows.GetLength(0); i += 2) { %>
			<h4><%=rows[i,0] %></h4>
			<p><%=rows[i,1] %></p>
			<% } %>
        </div>
      </div>

		<div class="panel-group" id="accordion">
			<% i = 0; %>
			<% foreach (string type in typesOfK) { %>
			<div class="panel panel-default">
				<a data-toggle="collapse" data-parent="#accordion" href="#collapse<%=i %>">
					<div class="panel-heading">
						<h4 class="panel-title">
							<%=type.ToUpper() %>
						</h4>
					</div>
				</a>
				<div id="collapse<%=i %>" class="panel-collapse collapse">
					

					<div class="panel-body">
                            <%HusInfo.Model.Report r = house.Report.FirstOrDefault();
							  
							  if (r != null)
							  {
								  var q = from c in r.Classification
										  where c.type.Equals(type)
										  select c;

								  foreach (HusInfo.Model.Classification c in q)
								{%>
                            <h3><%=c.problem %></h3>
                            <br />
                            <img src="http://www.pro-skadeservice.dk/wp-content/uploads/vandskade2-300x225.jpg" height="200" alt="vandskader" />
							<br />
							<% if (c.Offer.Count > 0) { %>
							<h2>Tilbud:</h2>
								<table style="width:100%;">
									<tr>
										<td style="width:33%;">Kommentar</td>
										<td style="width:34%;">Firma</td>
										<td style="width:33%;">Pris</td>
									</tr>
									<% foreach (HusInfo.Model.Offer o in c.Offer) { %>
									<tr style="width:100%; border: 1px solid black;">
										<td style="width:33%;"><%=o.comment %></td>
										<td style="width:34%;"><%=o.Login.company %></td>
										<td style="width:33%;"><%=String.Format("{0:C}", o.price) %></td>
									</tr>
									<% } %>
								</table>
							<br />
							<% } %>
							<% if (Session["login"] != null) { %>
								<a href="giveOffer.aspx?id=<%=c.id%>" class="btn btn-default">Giv tilbud</a>
							<% } %>
                            <br />
                            <% } %>
                            <% } %>
                        </div>

				</div>
			</div>
			<% i++; } %>
		</div>

      <div class="footer">
        <p>&copy; Husinfo 2014</p>
      </div>

</asp:Content>