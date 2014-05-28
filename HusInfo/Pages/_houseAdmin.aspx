<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_houseAdmin.aspx.cs" Inherits="HusInfo.Pages._houseAdmin" %>

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

		th 
		{
			text-align: left;
			border-bottom: solid 1px grey;
		}
		
		td 
		{
			text-align: left;
			background-color: white;
		}

		td:nth-child(2)
		{
			border-left: 1px solid grey;
		}

		table{
			border: solid 1px grey;
			margin-bottom: 0px !important;
			border-collapse: inherit !important;
		}
	</style>


<script type="text/javascript">
	$("#create").submit(function (event) {
		event.preventDefault();
		var str = $("#create").serializeArray();
		console.log(str);

		$.ajax({
			url: "_houseAdmin.aspx/Create",
			data: "{ 'data':'" + JSON.stringify(str) + "'}",
			dataType: "json",
			type: "POST",
			contentType: "application/json; charset=utf-8",
			success: function (data) {
				if (data.d.length > 0) {
					alert(data.d);
				} else {
					var current_index = $("#tabs").tabs("option", "active");
					$("#tabs").tabs('load', current_index);
				}
			},
			error: function (XMLHttpRequest, textStatus, errorThrown) {
				alert(textStatus);
			}
		});
	});
</script>


            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" "><div class="panel-heading">
                        <h4 class="panel-title">
                            Opret Hus
                        </h4>
                    </div></a>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
							<form id="create">
								<% foreach (KeyValuePair<string, string> item in createForm) { %>
									<span class="form-label"><%=item.Value %></span>
									<input name="<%=item.Key %>" class="form-control">
								<% } %>
								<input type="submit" class="btn btn-success btn-lg" value="Opret">
							</form>
                                </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><div class="panel-heading">
                        <h4 class="panel-title">
                            Ret hus
                        </h4>
                    </div></a>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div id="DivEditHouse" title="EditHouse">
	<form id="form1" runat="server">
                                
								<asp:ScriptManager ID="ScriptManager1" runat="server"/>
								<asp:UpdatePanel runat="server" ID="UpdatePanel1" UpdateMode="Conditional">
									<Triggers>
										<asp:AsyncPostBackTrigger ControlID="UpdateButton1" EventName="Click" />
									</Triggers>
									<ContentTemplate>
                                

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
                </div>
				<div class="panel panel-default">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><div class="panel-heading">
                        <h4 class="panel-title">
                            Slet hus
                        </h4>
                    </div></a>
                    <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">

								    <asp:DropDownList ID="DropDownListDelete" runat="server" CssClass="form-control"></asp:DropDownList>
                                    <asp:Button CssClass="btn btn-danger" ID="ButtonDeleteHouse" runat="server" Text="Slet hus" OnClick="ButtonDelete_Click" />

                    </div>
                </div>
				</div>
                
                <div class="panel panel-default">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive"><div class="panel-heading">
                        <h4 class="panel-title">
                            Alle huse
                        </h4>
                    </div></a>
                    <div id="collapseFive" class="panel-collapse collapse">
                        <div class="panel-body">
                               <table class="table table-condensed">
								   <tr>
									   <th>
										   Adresse
									   </th>
									   <th>
										   Post nr.
									   </th>
								   </tr>
                                   <%HusInfo.Controller.HouseCtr hC = new HusInfo.Controller.HouseCtr();
									 List<HusInfo.Model.House> hou = hC.GetAllHouses();
									 var houseSource = from h in hou
													   select new
													   {
														   h.id,
														   h.address,
														   h.zipCode,
													   };
									 {

										 houseSource.ToList();

										 foreach (var ho in houseSource)
										 {
                                             %><tr>
                                                 <td><%=ho.address%></td>
                                                 <td><%=ho.zipCode%></td>
                                               </tr><%
										 }

									 } %>
                               </table>
                                </div>
                            </div>
                        </div>
                    </div>
    </form>
