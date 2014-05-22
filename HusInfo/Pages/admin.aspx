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
                            <div id="DivCreateHouse" class="input-group" title="Create House">
                                        <asp:Label ID="LabelAddress" class="" runat="server" Text="Adresse"></asp:Label><br />
                                        <asp:TextBox ID="AddressTb" class="form-control" runat="server" Width="300px"></asp:TextBox><br />
								<br />
 
                                        <asp:Label ID="LabelCity" runat="server" Text="By:"></asp:Label><br />
                                        <asp:TextBox ID="CityTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelZipcode" runat="server"  Text="Post nr:"></asp:Label><br />
                                        <asp:TextBox ID="ZipcodeTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelLivingAreal" runat="server" Text="Boligareal:"></asp:Label><br />
                                        <asp:TextBox ID="LivingArealTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelGroundAreal" runat="server" Text="Grundareal:"></asp:Label><br />
                                        <asp:TextBox ID="GroundArealTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelBasementAreal" runat="server" Text="Kælderareal:"></asp:Label><br />
                                        <asp:TextBox ID="BasementArealTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelGarageAreal" runat="server" Text="Garageareal:"></asp:Label><br />
                                        <asp:TextBox ID="GarageArealTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelRooms" runat="server" Text="Rum:"></asp:Label><br />
                                        <asp:TextBox ID="RoomsTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelToilets" runat="server" Text="Toiletter:"></asp:Label><br />
                                        <asp:TextBox ID="ToiletsTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelFloorLevels" runat="server" Text="Antal plan:"></asp:Label><br />
                                        <asp:TextBox ID="FloorLevelsTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelBuildingYear" runat="server" Text="Byggeår:"></asp:Label><br />
                                        <asp:TextBox ID="BuildingYearTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelDistToSchool" runat="server" Text="Afstand til skole:"></asp:Label><br />
                                        <asp:TextBox ID="DistToSchoolTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelDistToShopping" runat="server" Text="Afstand til indkøb:"></asp:Label><br />
                                        <asp:TextBox ID="DistToShppingTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelEnergyMark" runat="server" Text="Energimærke:"></asp:Label><br />
                                        <asp:TextBox ID="EnergyMarkTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelKvmPrice" runat="server" Text="Kvm pris:"></asp:Label><br />
                                        <asp:TextBox ID="KvmPriceTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelBruttoPrice" runat="server" Text="Brutto pris"></asp:Label><br />
                                        <asp:TextBox ID="BruttoPriceTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelNettoPrice" runat="server" Text="Netto pris"></asp:Label><br />
                                        <asp:TextBox ID="NettoPriceTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelCashPrice" runat="server" Text="Cash pris"></asp:Label><br />
                                        <asp:TextBox ID="CashPriceTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
								<br />
                                        <asp:Label ID="LabelWebLink" runat="server" Text="Web link"></asp:Label><br />
                                        <asp:TextBox ID="WebLinkTb" runat="server" class="form-control" Width="300px"></asp:TextBox><br />
                                    </div>
                                </div>
                                <div id="createBtn">
                                    <asp:Button class="btn" ID="ButtonCreate" runat="server" Text="Opret" OnClick="ButtonCreate_Click" />
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
                                <div id="DivGetHouse">
                                </div>
								<asp:ScriptManager ID="ScriptManager1" runat="server"/>
								<asp:UpdatePanel runat="server" ID="UpdatePanel1" UpdateMode="Conditional">
									<Triggers>
										<asp:AsyncPostBackTrigger ControlID="UpdateButton1" EventName="Click" />
									</Triggers>
									<ContentTemplate>
                                <div id="dropdownEdit">
                                    <asp:DropDownList ID="DropDownListEdit" runat="server"></asp:DropDownList>
<<<<<<< HEAD
                                    <asp:Button class="btn" ID="ButtonGetHouse" runat="server" Text="Hent hus" OnClick="ButtonGetHouse_Click" />
=======
                                    <asp:Button ID="UpdateButton1" runat="server" Text="Hent hus" OnClick="ButtonGetHouse_Click" />
>>>>>>> d1258196cfd2e6e50f456c0372b233b0b744e893
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ELabelAddress" runat="server" Text="Adresse"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="AddressTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ELabelCity" runat="server" Text="By:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="CityTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ELabelZipcode" runat="server" Text="Post nr:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="ZipcodeTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ElabelLivingAreal" runat="server" Text="Boligareal:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="LivingArealTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ElabelGroundAreal" runat="server" Text="Grundareal:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="GroundArealTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ElabelBasementAreal" runat="server" Text="Kælderareal:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="BasementArealTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ElabelGarageAreal" runat="server" Text="Garageareal:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="GarageArealTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ELabelRooms" runat="server" Text="Rum:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="RoomsTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ElabelToilets" runat="server" Text="Toiletter:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="ToiletsTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ElabelFloorLevels" runat="server" Text="Antal plan:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="FloorLevelsTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ElabelBuildingYear" runat="server" Text="Byggeår:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="BuildingYearTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ElabelDistToSchool" runat="server" Text="Afstand til skole:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="DistToSchoolTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ElabelDistToShopping" runat="server" Text="Afstand til indkøb:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="DistToShoppingTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ElabelEnergyMark" runat="server" Text="Energimærke:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="EnergyMarkTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ElabelKvmPrice" runat="server" Text="Kvm pris:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="KvmPriceTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ElabelBruttoPrice" runat="server" Text="Brutto pris"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="BruttoPriceTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ElabelNettoPrice" runat="server" Text="Netto pris"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="NettoPriceTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ELabelCashPrice" runat="server" Text="Cash pris"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="CashPriceTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="ELabelWeblink" runat="server" Text="Web link"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="WeblinkTbe" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
										</ContentTemplate>
									</asp:UpdatePanel>
                                <div id="buttonEditDiv">
                                    <asp:Button class="btn" ID="ButtonEdit" runat="server" Text="Redigere" OnClick="ButtonEdit_Click" />
                                </div>
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
                                    <asp:Button class="btn" ID="ButtonDeleteHouse" class="btn" runat="server" Text="Slet hus" OnClick="ButtonDelete_Click" />
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
