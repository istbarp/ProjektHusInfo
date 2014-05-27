<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_workmanAdmin.aspx.cs" Inherits="HusInfo.Pages._workmanAdmin" %>

<script type="text/javascript">
	function del(i) {
		$.ajax({
			url: "_workmanAdmin.aspx/delete",
			data: "{ 'id':'" + i + "'}",
			dataType: "json",
			type: "POST",
			contentType: "application/json; charset=utf-8",
			success: function (data) {
				var current_index = $("#tabs").tabs("option", "active");
				$("#tabs").tabs('load', current_index);
			},
			error: function (XMLHttpRequest, textStatus, errorThrown) {
				alert(textStatus);
			}
		});
	}

	function verify(i) {
		$.ajax({
			url: "_workmanAdmin.aspx/verify",
			data: "{ 'id':'" + i + "'}",
			dataType: "json",
			type: "POST",
			contentType: "application/json; charset=utf-8",
			success: function (data) {
				var current_index = $("#tabs").tabs("option", "active");
				$("#tabs").tabs('load', current_index);
			},
			error: function (XMLHttpRequest, textStatus, errorThrown) {
				alert(textStatus);
			}
		});
	}

	
</script>

<h4>Håndværkere</h4>

<table class="table table-striped">
	<thead>
		<tr>
			<th>#</th>
			<th>Firma</th>
			<th>Tlf. Nr.</th>
			<th>Verificeret</th>
			<th>Slet</th>
		</tr>
	</thead>
	<tbody>
<% foreach(HusInfo.Model.Login l in lCtr.GetWorkmen()) { %>
		<tr>
			<td><%=l.id %></td>
			<td><%=l.company %></td>
			<td><%=l.phoneNumber %></td>
			<% if (l.verified != null && (bool)l.verified) { %>
				<td><button type="button" class="btn btn-success">Godkendt</button></td>
			<% } else { %>
				<td><button type="button" class="btn btn-primary" onclick="verify(<%=l.id %>);">Verificer?</button></td>
			<% } %>
			<td><button type="button" class="btn btn-danger" onclick="del(<%=l.id %>);">Slet</button></td>
		</tr>
<% } %>
	</tbody>
</table>