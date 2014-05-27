<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="HusInfo.Pages.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContainerPlaceHolder" runat="server">

	<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
	<script>
		$(function () {
			$("#tabs").tabs({
				beforeLoad: function (event, ui) {
					ui.jqXHR.error(function () {
						ui.panel.html(
						  "ERROR: Couldn't load this tab.");
					});
				}
			});
		});
	</script>

	<div id="tabs">
		<ul>
			<li><a href="_houseAdmin.aspx">Boliger</a></li>
			<li><a href="_estateAdmin.aspx">Mæglere</a></li>
			<li><a href="_workmanAdmin.aspx">Håndværkere</a></li>
		</ul>
		<div id="tabs-1"></div>
	</div>

</asp:Content>
