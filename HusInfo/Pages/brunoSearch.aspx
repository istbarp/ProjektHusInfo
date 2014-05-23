<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="brunoSearch.aspx.cs" Inherits="HusInfo.Pages.brunoSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
        <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
        <script type="text/javascript">
        	$(function () {
        		$('#Text1').autocomplete({
        			source: function (request, response) {
        				$.ajax({
        					url: "brunoSearch.aspx/FindHouse",
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
</head>
<body>

	<div class="ui-widget" style="text-align: left">
		<input id="Text1" type="text" />
	</div>

</body>
</html>
