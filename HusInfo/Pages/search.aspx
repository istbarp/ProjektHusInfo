<%@ Page Title="" Language="C#" MasterPageFile="~/content.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="HusInfo.Pages.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContainerPlaceHolder" runat="server">

	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
	<style>
		.ui-autocomplete-loading {
			background: white url('/images/loading.gif') right center no-repeat;
		}
	</style>
	<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	<script type="text/javascript">
		$(function () {
			$('#searchTextBox').autocomplete({
				source: function (request, response) {
					$.ajax({
						url: "search.aspx/FindHouse",
						data: "{ 'pre':'" + request.term + "'}",
						dataType: "json",
						type: "POST",
						contentType: "application/json; charset=utf-8",
						success: function (data) {
							response($.map(data.d, function (item) {
								return { value: item.S, id: item.Id }
							}))
						},
						error: function (XMLHttpRequest, textStatus, errorThrown) {
							alert(textStatus);
						}
					});
				},
				select: function (event, ui) {
					$(window.location).attr('href', '/Pages/houseInfo.aspx?id=' + ui.item.id)
				}
			});
		});
	</script>

	<div class="jumbotron">
		<form target="_self" method="get">
			<div class="edit-group">
				<input id ="searchTextBox" name="search" type="text" class="form-control" placeholder="Indtast adresse">
			</div>
			<!-- /input-group -->
		</form>
	</div>

</asp:Content>