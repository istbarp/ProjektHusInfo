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
									<asp:TextBox ID="SearchTbe" hint="Telefon nr" runat="server" CssClass="form-control"></asp:TextBox>
									<asp:Button ID="UpdateButton1" CssClass="btn btn-warning" runat="server" Text="Hent Bruger" /><br />

									<span class="form-label">Brugernavn</span>
									<asp:TextBox ID="UsernameTbe" runat="server" CssClass="form-control"></asp:TextBox>

									<span class="form-label">Kodeord</span>
									<asp:TextBox ID="PasswordTbe" runat="server" CssClass="form-control"></asp:TextBox>

									<span class="form-label">Firma navn</span>
									<asp:TextBox ID="CompanyTbe" runat="server" CssClass="form-control"></asp:TextBox>

									<span class="form-label">Navn</span>
									<asp:TextBox ID="NameTbe" runat="server" CssClass="form-control"></asp:TextBox>

									<span class="form-label">Efternavn</span>
									<asp:TextBox ID="LastnameTbe" runat="server" CssClass="form-control"></asp:TextBox>

									<span class="form-label">Telefon nummer</span>
									<asp:TextBox ID="PhoneNumberTbe" runat="server" CssClass="form-control"></asp:TextBox>

									<span class="form-label">Cvr nummer</span>
									<asp:TextBox ID="CvrNumberTbe" runat="server" CssClass="form-control"></asp:TextBox>

									<asp:Button CssClass="btn btn-success btn-lg" ID="ButtonEdit" type="button" runat="server" Text="Redigere"  />

						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
