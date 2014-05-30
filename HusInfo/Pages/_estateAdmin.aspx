<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_estateAdmin.aspx.cs" Inherits="HusInfo.Pages._estateAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<style>
		.panel-group .panel-heading {
			background-color: #f5f5f5;
		}

		.panel-title {
			color: #999 !important;
			font-weight: bold;
		}

		a {
			color: none !important;
			text-decoration: none !important;
		}

		.a:hover {
			color: none !important;
			text-decoration: none !important;
		}

		#DivCreateHouse {
			margin: auto;
		}


		.input-group {
			margin: auto;
		}

		.jumbotron {
			padding-top: 15px !important;
			padding-bottom: 15px !important;
		}

		.form-label {
			float: left;
		}

		.form-control {
			margin-bottom: 16px;
		}

		th {
			text-align: left;
			border-bottom: solid 1px grey;
		}

		td {
			text-align: left;
			background-color: white;
		}

			td:nth-child(2) {
				border-left: 1px solid grey;
			}

		table {
			border: solid 1px grey;
			margin-bottom: 0px !important;
			border-collapse: inherit !important;
		}
	</style>

	<script type="text/javascript">
		function searchEstate() {
			var tlf = $('#SearchTbe').val();

			$.ajax({
				type: "POST",
				url: "/Handlers/EstateHandler_GetEstate.ashx",
				data: { firstName: tlf },
				// DO NOT SET CONTENT TYPE to json
				// contentType: "application/json; charset=utf-8", 
				// DataType needs to stay, otherwise the response object
				// will be treated as a single string
				dataType: "json",
				success: function (response) {
					if (response["fejl"] == "Fejl") {
						alert("Ingen bruger fundet... Prøv igen");
					}
					else {
						$('#UsernameTbe').val(response["username"]);
						$('#PasswordTbe').val(response["password"]);
						$('#CompanyTbe').val(response["company"]);
						$('#NameTbe').val(response["name"]);
						$('#LastnameTbe').val(response["lastname"]);
						$('#PhoneNumberTbe').val(response["phone"]);
						$('#CvrNumberTbe').val(response["cvr"]);
					}
				}
			});
			return false;
		}

		function createEstate() {
			var username = $('#UsernameTb').val(),
				password = $('#PasswordTb').val(),
				company = $('#CompanyTb').val(),
					name = $('#NameTb').val(),
					lastname = $('#LastnameTb').val(),
						phone = $('#PhoneNumberTb').val(),
						cvr = $('#CvrNumberTb').val();

			$.ajax({
				type: "POST",
				url: "/Handlers/EstateHandler_CreateEstate.ashx",
				data: {
					username: username,
					password: password,
					company: company,
					name: name,
					lastname: lastname,
					phone: phone,
					cvr: cvr
				},
				// DO NOT SET CONTENT TYPE to json
				// contentType: "application/json; charset=utf-8", 
				// DataType needs to stay, otherwise the response object
				// will be treated as a single string
				dataType: "json",
				success: function (response) {
					if (response["fejl"] == "Fejl") {
						alert("Oprettelsen fejlede, prøv igen...");
					}
					else {
						alert("Brugeren, " + response["name"] + " " + response["lastname"] + " er nu oprettet")
					}
				}
			});
			return false;
		}

		function editEstate() {
			var username = $('#UsernameTbe').val(),
				password = $('#PasswordTbe').val(),
				company = $('#CompanyTbe').val(),
					name = $('#NameTbe').val(),
					lastname = $('#LastnameTbe').val(),
						phone = $('#PhoneNumberTbe').val(),
						cvr = $('#CvrNumberTbe').val();

			$.ajax({
				type: "POST",
				url: "/Handlers/EstateHandler_EditEstate.ashx",
				data: {
					username: username,
					password: password,
					company: company,
					name: name,
					lastname: lastname,
					phone: phone,
					cvr: cvr
				},
				// DO NOT SET CONTENT TYPE to json
				// contentType: "application/json; charset=utf-8", 
				// DataType needs to stay, otherwise the response object
				// will be treated as a single string
				dataType: "json",
				success: function (response) {
					if (response["fejl"] == "Fejl") {
						alert("Opdateringen fejlede, prøv igen...");
					}
					else {
						alert("Brugeren, " + response["name"] + " " + response["lastname"] + " er nu opdateret")
					}
				}
			});
			return false;
		}

		function deleteEstate() {
			var tlf = $('#DeleteTbd').val();

			$.ajax({
				type: "POST",
				url: "/Handlers/EstateHandler_DeleteEstate.ashx",
				data: { tlf: tlf },
				// DO NOT SET CONTENT TYPE to json
				// contentType: "application/json; charset=utf-8", 
				// DataType needs to stay, otherwise the response object
				// will be treated as a single string
				dataType: "json",
				success: function (response) {
					if (response["fejl"] == "Fejl") {
						alert("Ingen bruger fundet... Prøv igen");
					}
					else {
						alert("Brugeren er blevet slettet.")
					}
				}
			});
			return false;
		}
	</script>
</head>
<body>
	<form id="estateForm" runat="server">
		<asp:ScriptManager ID="ScriptManager2" runat="server" />

		<div class="panel-group" id="accordion2">
			<div class="panel panel-default">
				<a data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo2">
					<div class="panel-heading">
						<h4 class="panel-title">Opret Mægler
						</h4>
					</div>
				</a>
				<div id="collapseTwo2" class="panel-collapse collapse">
					<div class="panel-body">

								<span class="form-label">Brugernavn</span>
								<input type="text" id="UsernameTb" class="form-control" />

								<span class="form-label">Kodeord</span>
								<input type="text" id="PasswordTb" class="form-control" />

								<span class="form-label">Firma navn</span>
								<input type="text" id="CompanyTb" class="form-control" />

								<span class="form-label">Navn</span>
								<input type="text" id="NameTb" class="form-control" />

								<span class="form-label">Efternavn</span>
								<input type="text" id="LastnameTb" class="form-control" />

								<span class="form-label">Telefon nummer</span>
								<input type="text" id="PhoneNumberTb" class="form-control" />

								<span class="form-label">Cvr nummer</span>
								<input type="text" id="CvrNumberTb" class="form-control" />

								<button class="btn btn-success btn-lg" id="CreateButton" type="button" onclick="return createEstate();">Opret</button>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<a data-toggle="collapse" data-parent="#accordion2" href="#collapseThree2">
					<div class="panel-heading">
						<h4 class="panel-title">Ret Mægler
						</h4>
					</div>
				</a>
				<div id="collapseThree2" class="panel-collapse collapse">
					<div class="panel-body">
						<div id="DivEditUser" title="EditHouse">
							<span class="form-label">Søg på telefon nummer</span>
							<input type="text" id="SearchTbe" placeholder="Telefon nr" class="form-control" />
							<button id="btnSoeg" onclick="return searchEstate();" class="btn btn-warning" type="button">Hent Bruger</button><br />

							<span class="form-label">Brugernavn</span>
							<input type="text" id="UsernameTbe" class="form-control" />

							<span class="form-label">Kodeord</span>
							<input type="text" id="PasswordTbe" class="form-control" />

							<span class="form-label">Firma navn</span>
							<input type="text" id="CompanyTbe" class="form-control" />

							<span class="form-label">Navn</span>
							<input type="text" id="NameTbe" class="form-control" />

							<span class="form-label">Efternavn</span>
							<input type="text" id="LastnameTbe" class="form-control" />

							<span class="form-label">Telefon nummer</span>
							<input type="text" id="PhoneNumberTbe" class="form-control" />

							<span class="form-label">Cvr nummer</span>
							<input type="text" id="CvrNumberTbe" class="form-control" />

							<button class="btn btn-success btn-lg" id="ButtonEdit" type="button" onclick="return editEstate();">Rediger</button>

						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<a data-toggle="collapse" data-parent="#accordion2" href="#collapseFour2">
					<div class="panel-heading">
						<h4 class="panel-title">Slet Mægler
						</h4>
					</div>
				</a>
				<div id="collapseFour2" class="panel-collapse collapse">
					<div class="panel-body">

						<span class="form-label">Telefon nr</span>
						<input type="text" id="DeleteTbd" class="form-control" />
						<button type="button" class="btn btn-danger" id="ButtonDeleteUser" onclick="return deleteEstate();" >Slet</button>

					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
