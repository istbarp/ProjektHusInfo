<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="SearchTest.aspx.cs" Inherits="HusInfo.Pages.SearchTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContainerPlaceHolder" runat="server">


	<div class="jumbotron">
				  <div class="input-group">
					  <asp:TextBox runat="server" ID="searchBox" OnTextChanged="Unnamed_TextChanged" type="text" CssClass="form-control" placeholder="Indtast adresse"></asp:TextBox>
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
</asp:Content>
