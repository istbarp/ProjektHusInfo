<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_jesperTest.aspx.cs" Inherits="HusInfo.Pages._jesperTest" %>

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
		function soeg() {
			var tlf = $('#SearchTbe').val();

			$.ajax({
				type: "POST",
				url: "/Handlers/EstateHandler.ashx",
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
					else
					{
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
	</script>
</head>
<body>
	<form id="form1" runat="server">
		<div class="panel-group" id="accordion3">
			<div class="panel panel-default">
				<a data-toggle="collapse" data-parent="#accordion3" href="#collapseThree3">
					<div class="panel-heading">
						<h4 class="panel-title">Ret Mægler
						</h4>
					</div>
				</a>
				<div id="collapseThree3" class="panel-collapse collapse">
					<div class="panel-body">
						<div id="DivEditUser" title="EditHouse">
							<span class="form-label">Søg på telefon nummer</span>
							<input type="text" id="SearchTbe" placeholder="Telefon nr" class="form-control" />
							<button id="btnSoeg" onclick="return soeg();" class="btn btn-warning" type="button">Hent Bruger</button><br />

							<span class="form-label">Brugernavn</span>
							<input type="text" id="UsernameTbe" class="form-control" />

							<span class="form-label">Kodeord</span>
							<input type="text" id="PasswordTbe" class="form-control" />

							<span class="form-label">Firma navn</span>
							<input type="text" id="CompanyTbe" class="form-control" />

							<span class="form-label">Navn</span>
							<input id="NameTbe" class="form-control" />

							<span class="form-label">Efternavn</span>
							<input id="LastnameTbe" class="form-control" />

							<span class="form-label">Telefon nummer</span>
							<input id="PhoneNumberTbe" class="form-control" />

							<span class="form-label">Cvr nummer</span>
							<input id="CvrNumberTbe" class="form-control" />

							<asp:Button CssClass="btn btn-success btn-lg" ID="ButtonEdit" type="button" runat="server" Text="Redigere" />

						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
