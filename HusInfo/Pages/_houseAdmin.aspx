<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_houseAdmin.aspx.cs" Inherits="HusInfo.Pages._houseAdmin" %>

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
		function createHouse() {
			var address = $('#AddressTb').val(),
				city = $('#CityTb').val(),
				zip = $('#ZipcodeTb').val(),
				livingAreal = $('#LivingArealTb').val(),
				groundAreal = $('#GroundArealTb').val(),
				basementAreal = $('#BasementArealTb').val(),
				garageAreal = $('#GarageArealTb').val(),
				rooms = $('#RoomsTb').val(),
				toilets = $('#ToiletsTb').val(),
				floorLevels = $('#FloorLevelsTb').val(),
				buildingYear = $('#BuildingYearTb').val(),
				distToSchool = $('#DistToSchoolTb').val(),
				distToShop = $('#DistToShoppingTb').val(),
				energyMark = $('#EnergyMarkTb').val(),
				kvmPrice = $('#KvmPriceTb').val(),
				bruttoPrice = $('#BruttoPriceTb').val(),
				nettoPrice = $('#NettoPriceTb').val(),
				cashPrice = $('#CashPriceTb').val(),
				weblink = $('#WebLinkTb').val();

			$.ajax({
				type: "POST",
				url: "/Handlers/HouseAdmin/HouseHandler_CreateHouse.ashx",
				data: {
					address: address,
					city: city,
					zip: zip,
					livingAreal: livingAreal,
					groundAreal: groundAreal,
					basementAreal: basementAreal,
					garageAreal: garageAreal,
					rooms: rooms,
					toilets: toilets,
					floorLevels: floorLevels,
					buildingYear: buildingYear,
					distToSchool: distToSchool,
					distToShop: distToShop,
					energyMark: energyMark,
					kvmPrice: kvmPrice,
					bruttoPrice: bruttoPrice,
					nettoPrice: nettoPrice,
					cashPrice: cashPrice,
					weblink: weblink
				},
				// DO NOT SET CONTENT TYPE to json
				// contentType: "application/json; charset=utf-8", 
				// DataType needs to stay, otherwise the response object
				// will be treated as a single string
				dataType: "json",
				success: function (response) {
					if (response["fejl"] == "Fejl") {
						alert("Huset blev ikke oprettet, prøv igen...");
					}
					else {
						alert("Huset (" + response["address"] + ", " + response["zip"] + " " + response["city"] + ") er blevet oprettet. ");
					}
				}
			});
			return false;
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
					<div class="panel-heading">
						<h4 class="panel-title">Opret Hus
						</h4>
					</div>
				</a>
				<div id="collapseTwo" class="panel-collapse collapse">
					<div class="panel-body">

								<span class="form-label">Adresse</span>
								<input type="text" id="AddressTb" class="form-control" />

								<span class="form-label">By</span>
								<input type="text" id="CityTb" class="form-control" />

								<span class="form-label">Post nr</span>
								<input type="text" id="ZipcodeTb" class="form-control" />

								<span class="form-label">Boligareal</span>
								<input type="text" id="LivingArealTb" class="form-control" />

								<span class="form-label">Grundareal</span>
								<input type="text" id="GroundArealTb" class="form-control" />

								<span class="form-label">Kælderareal</span>
								<input type="text" id="BasementArealTb" class="form-control" />

								<span class="form-label">Garageareal</span>
								<input type="text" id="GarageArealTb" class="form-control" />

								<span class="form-label">Antal rum</span>
								<input type="text" id="RoomsTb" class="form-control" />

								<span class="form-label">Antal toiletter</span>
								<input type="text" id="ToiletsTb" class="form-control" />

								<span class="form-label">Etager</span>
								<input type="text" id="FloorLevelsTb" class="form-control" />

								<span class="form-label">Byggeår</span>
								<input type="text" id="BuildingYearTb" class="form-control" />

								<span class="form-label">Afstand til skole</span>
								<input type="text" id="DistToSchoolTb" class="form-control" />

								<span class="form-label">Afstand til indkøb</span>
								<input type="text" id="DistToShoppingTb" class="form-control" />

								<span class="form-label">Energimærke</span>
								<input type="text" id="EnergyMarkTb" class="form-control" />

								<span class="form-label">Kvm pris</span>
								<input type="text" id="KvmPriceTb" class="form-control" />

								<span class="form-label">Brutto pris</span>
								<input type="text" id="BruttoPriceTb" class="form-control" />

								<span class="form-label">Netto pris</span>
								<input type="text" id="NettoPriceTb" class="form-control" />

								<span class="form-label">Kontantpris</span>
								<input type="text" id="CashPriceTb" class="form-control" />

								<span class="form-label">Mægler link</span>
								<input type="text" id="WebLinkTb" class="form-control" />

								<button class="btn btn-success btn-lg" id="ButtonCreate" onclick="return createHouse();">Opret</button>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
					<div class="panel-heading">
						<h4 class="panel-title">Ret hus
						</h4>
					</div>
				</a>
				<div id="collapseThree" class="panel-collapse collapse">
					<div class="panel-body">
						<asp:ScriptManager ID="ScriptManager1" runat="server" />
						<asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
							<ContentTemplate>
								<Triggers>
									<asp:AsyncPostBackTrigger ControlID="UpdateButton1" EventName="Click" />
								</Triggers>
							
								<asp:DropDownList ID="DropDownListEdit" runat="server" CssClass="form-control"></asp:DropDownList>

								<asp:Button ID="UpdateButton1" CssClass="btn btn-warning" runat="server" Text="Hent hus" OnClick="ButtonGetHouse_Click" /><br />

								<span class="form-label">Adresse:</span>
								<asp:TextBox ID="AddressTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">By:</span>
								<asp:TextBox ID="CityTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Post nr.:</span>
								<asp:TextBox ID="ZipcodeTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Boligareal:</span>
								<asp:TextBox ID="LivingArealTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Grundareal:</span>
								<asp:TextBox ID="GroundArealTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Kælderareal:</span>
								<asp:TextBox ID="BasementArealTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Garageareal:</span>
								<asp:TextBox ID="GarageArealTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Antal rum:</span>
								<asp:TextBox ID="RoomsTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Antal toiletter:</span>
								<asp:TextBox ID="ToiletsTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Antal plan:</span>
								<asp:TextBox ID="FloorLevelsTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Byggeår:</span>
								<asp:TextBox ID="BuildingYearTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Afstand til skole:</span>
								<asp:TextBox ID="DistToSchoolTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Afstand til indkøb:</span>
								<asp:TextBox ID="DistToShoppingTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Energimærke:</span>
								<asp:TextBox ID="EnergyMarkTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Kvm pris:</span>
								<asp:TextBox ID="KvmPriceTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Brutto pris:</span>
								<asp:TextBox ID="BruttoPriceTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Netto pris:</span>
								<asp:TextBox ID="NettoPriceTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Kontant pris:</span>
								<asp:TextBox ID="CashPriceTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<span class="form-label">Link til mægler:</span>
								<asp:TextBox ID="WeblinkTbe" runat="server" CssClass="form-control"></asp:TextBox>

								<asp:Button CssClass="btn btn-success btn-lg" ID="ButtonEdit" runat="server" Text="Rediger" OnClick="ButtonEdit_Click" />
							
								</ContentTemplate>
							</asp:UpdatePanel>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
					<div class="panel-heading">
						<h4 class="panel-title">Slet hus
						</h4>
					</div>
				</a>
				<div id="collapseFour" class="panel-collapse collapse">
					<div class="panel-body">
						<asp:UpdatePanel runat="server" id="updatepanel3" UpdateMode="Conditional">
							<ContentTemplate>
								<Triggers>
									<asp:AsyncPostBackTrigger ControlID="ButtonDeleteHouse" EventName="Click" />
								</Triggers>
						<asp:DropDownList ID="DropDownListDelete" runat="server" CssClass="form-control"></asp:DropDownList>
						<asp:Button CssClass="btn btn-danger" ID="ButtonDeleteHouse" runat="server" Text="Slet hus" OnClick="ButtonDelete_Click" />
								</ContentTemplate>
							</asp:UpdatePanel>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
					<div class="panel-heading">
						<h4 class="panel-title">Alle huse
						</h4>
					</div>
				</a>
				<div id="collapseFive" class="panel-collapse collapse">
					<div class="panel-body">

						<table class="table table-striped">
							<thead>
								<tr>
									<th>Adresse</th>
									<th>Post nr.</th>
								</tr>
							</thead>
							<tbody>
								<%
									List<HusInfo.Model.House> hou = hC.GetAllHouses();
									var houseSource = from h in hou
													  select new
													  {
														  h.id,
														  h.address,
														  h.zipCode,
													  };
								%>
								<% foreach (var ho in houseSource.ToList())
		   { %>
								<tr>
									<td><%=ho.address%></td>
									<td><%=ho.zipCode%></td>
								</tr>
								<% } %>
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
