<%@ Page Title="" Language="C#" MasterPageFile="~/content.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="HusInfo.Pages.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContainerPlaceHolder" runat="server">

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

		  <% if (hList != null) { %>
		  <div class="panel panel-primary">
			  <div class="panel-heading"><h3 class="panel-title" style="text-align:left">Søge resultater</h3></div>
			  <div class="panel-body" style="text-align:left;">
				  <% foreach (HusInfo.Model.House h in hList) { %>
					<h4><a href="/Pages/houseInfo.aspx?id=<%=h.id %>"><%= h.address + ", " + h.zipCode.ToString() + ", " + h.city %></a></h4>
				  <% } %>
			  </div>
		  </div>
		  <% } %>

      </div>

</asp:Content>