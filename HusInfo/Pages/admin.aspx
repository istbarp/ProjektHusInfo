<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="HusInfo.Pages.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContainerPlaceHolder" runat="server">
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
	</style>
	<form id="form1" runat="server">
        <div id="DivForAll">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" "><div class="panel-heading">
                        <h4 class="panel-title">
                            Opret Hus
                        </h4>
                    </div></a>
                    <div id="collapseOne" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div id="DivCreateHouse" class="jumbotron" title="Create House">
                                        <span class="form-label">Adresse</span>
                                        <asp:TextBox ID="AddressTb" class="form-control" runat="server" ></asp:TextBox>
 
                                        <span class="form-label">By</span>
                                        <asp:TextBox ID="CityTb" runat="server" class="form-control" ></asp:TextBox>

                                        <span class="form-label">Post nr</span>
                                        <asp:TextBox ID="ZipcodeTb" runat="server" class="form-control"></asp:TextBox>
								
                                        <span class="form-label">Boligareal</span>
                                        <asp:TextBox ID="LivingArealTb" runat="server" class="form-control"></asp:TextBox>
								
                                        <span class="form-label">Grundareal</span>
                                        <asp:TextBox ID="GroundArealTb" runat="server" class="form-control"></asp:TextBox>

                                        <span class="form-label">Kælderareal</span>
                                        <asp:TextBox ID="BasementArealTb" runat="server" class="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Garageareal</span>
                                        <asp:TextBox ID="GarageArealTb" runat="server" class="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Antal rum</span>
                                        <asp:TextBox ID="RoomsTb" runat="server" class="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Antal toiletter</span>
                                        <asp:TextBox ID="ToiletsTb" runat="server" class="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Etager</span>
                                        <asp:TextBox ID="FloorLevelsTb" runat="server" class="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Byggeår</span>
                                        <asp:TextBox ID="BuildingYearTb" runat="server" class="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Afstand til skole</span>
                                        <asp:TextBox ID="DistToSchoolTb" runat="server" class="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Afstand til indkøb</span>
                                        <asp:TextBox ID="DistToShppingTb" runat="server" class="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Energimærke</span>
                                        <asp:TextBox ID="EnergyMarkTb" runat="server" class="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Kvm pris</span>
                                        <asp:TextBox ID="KvmPriceTb" runat="server" class="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Brutto pris</span>
                                        <asp:TextBox ID="BruttoPriceTb" runat="server" class="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Netto pris</span>
                                        <asp:TextBox ID="NettoPriceTb" runat="server" class="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Kontantpris</span>
                                        <asp:TextBox ID="CashPriceTb" runat="server" class="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Mægler link</span>
                                        <asp:TextBox ID="WebLinkTb" runat="server" class="form-control" ></asp:TextBox>

										<asp:Button class="btn btn-success btn-lg" ID="ButtonCreate" runat="server" Text="Opret" OnClick="ButtonCreate_Click" />
                                    </div>
                                </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><div class="panel-heading">
                        <h4 class="panel-title">
                            Ret hus
                        </h4>
                    </div></a>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div id="DivEditHouse" title="EditHouse">
                                
								<asp:ScriptManager ID="ScriptManager1" runat="server"/>
								<asp:UpdatePanel runat="server" ID="UpdatePanel1" UpdateMode="Conditional">
									<Triggers>
										<asp:AsyncPostBackTrigger ControlID="UpdateButton1" EventName="Click" />
									</Triggers>
									<ContentTemplate>
                                <div id="dropdownEdit">
                                    

                                </div>
										<div id="EditFields" class="jumbotron">

										<asp:DropDownList ID="DropDownListEdit" runat="server"></asp:DropDownList>
										<asp:Button ID="UpdateButton1" class="btn btn-warning" runat="server" Text="Hent hus" OnClick="ButtonGetHouse_Click" /><br />

										<span class="form-label">Adresse:</span>
                                        <asp:TextBox ID="AddressTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">By:</span>
                                        <asp:TextBox ID="CityTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Post nr.:</span>
                                        <asp:TextBox ID="ZipcodeTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Boligareal:</span>
                                        <asp:TextBox ID="LivingArealTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Grundareal:</span>
                                        <asp:TextBox ID="GroundArealTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Kælderareal:</span>
                                        <asp:TextBox ID="BasementArealTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Garageareal:</span>
                                        <asp:TextBox ID="GarageArealTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Antal rum:</span>
                                        <asp:TextBox ID="RoomsTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Antal toiletter:</span>
                                        <asp:TextBox ID="ToiletsTbe" runat="server" class="form-control"></asp:TextBox>
											
										<span class="form-label">Antal plan:</span>
                                        <asp:TextBox ID="FloorLevelsTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Byggeår:</span>
                                        <asp:TextBox ID="BuildingYearTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Afstand til skole:</span>
                                        <asp:TextBox ID="DistToSchoolTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Afstand til indkøb:</span>
                                        <asp:TextBox ID="DistToShoppingTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Energimærke:</span>
                                        <asp:TextBox ID="EnergyMarkTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Kvm pris:</span>
                                        <asp:TextBox ID="KvmPriceTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Brutto pris:</span>
                                        <asp:TextBox ID="BruttoPriceTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Netto pris:</span>
                                        <asp:TextBox ID="NettoPriceTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Kontant pris:</span>
                                        <asp:TextBox ID="CashPriceTbe" runat="server" class="form-control"></asp:TextBox>

										<span class="form-label">Link til mægler:</span>
                                        <asp:TextBox ID="WeblinkTbe" runat="server" class="form-control"></asp:TextBox>

										<asp:Button class="btn btn-success btn-lg" ID="ButtonEdit" runat="server" Text="Redigere" OnClick="ButtonEdit_Click" />
                                    </div>
                                </div>
										</ContentTemplate>
									</asp:UpdatePanel>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><div class="panel-heading">
                        <h4 class="panel-title">
                            Slet hus
                        </h4>
                    </div></a>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div id="DivDeleteHouse">
                                <div id="DropdownlistDeleteDiv">
                                    <asp:DropDownList ID="DropDownListDelete" runat="server"></asp:DropDownList>
                                </div>
                                <div id="ButtonDeleteDiv">
                                    <asp:Button class="btn btn-danger" ID="ButtonDeleteHouse" runat="server" Text="Slet hus" OnClick="ButtonDelete_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><div class="panel-heading">
                        <h4 class="panel-title">
                            Alle huse
                        </h4>
                    </div></a>
                    <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">
                             <div id="DivShowAllHouses">
                <div id="ListShowAllHousesDiv">
                </div>
                               <table class="table table-condensed">
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
                    </div>
                </div>
            
    </form>

</asp:Content>
