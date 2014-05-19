<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRightsEdit.aspx.cs" Inherits="HusInfo.Pages.AdminRightsEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Scripts/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="/Scripts/bootstrap/js/bootstrap.min.js"></script>

    <style>
        .wrap {
            width: 800px;
            min-width: 800px;
            margin: auto auto -2px auto;
            border: 2px solid black;
            overflow: hidden;
        }

        .leftlbl, .rightTxt {
            float: left;
            width: 398px;
            min-width: 398px;
            height: 100%;
            text-align: center;
        }

        #createBtn {
            text-align: center;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div id="DivForAll">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Opret Hus
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <div id="DivCreateHouse" title="Create House">
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelAddress" runat="server" Text="Adresse"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="AddressTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelCity" runat="server" Text="By:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="CityTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelZipcode" runat="server" Text="Post nr:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="ZipcodeTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelLivingAreal" runat="server" Text="Boligareal:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="LivingArealTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelGroundAreal" runat="server" Text="Grundareal:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="GroundArealTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelBasementAreal" runat="server" Text="Kælderareal:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="BasementArealTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelGarageAreal" runat="server" Text="Garageareal:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="GarageArealTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelRooms" runat="server" Text="Rum:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="RoomsTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelToilets" runat="server" Text="Toiletter:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="ToiletsTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelFloorLevels" runat="server" Text="Antal plan:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="FloorLevelsTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelBuildingYear" runat="server" Text="Byggeår:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="BuildingYearTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelDistToSchool" runat="server" Text="Afstand til skole:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="DistToSchoolTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelDistToShopping" runat="server" Text="Afstand til indkøb:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="DistToShppingTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelEnergyMark" runat="server" Text="Energimærke:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="EnergyMarkTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelKvmPrice" runat="server" Text="Kvm pris:"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="KvmPriceTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelBruttoPrice" runat="server" Text="Brutto pris"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="BruttoPriceTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelNettoPrice" runat="server" Text="Netto pris"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="NettoPriceTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelCashPrice" runat="server" Text="Cash pris"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="CashPriceTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="wrap">
                                    <div class="leftlbl">
                                        <asp:Label ID="LabelWebLink" runat="server" Text="Web link"></asp:Label>
                                    </div>
                                    <div class="rightTxt">
                                        <asp:TextBox ID="WebLinkTb" runat="server" Width="300px"></asp:TextBox>
                                    </div>
                                </div>
                                <div id="createBtn">
                                    <asp:Button ID="ButtonCreate" runat="server" Text="Opret" OnClick="ButtonCreate_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Ret hus
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div id="DivEditHouse" title="EditHouse">
                                <div id="DivGetHouse">
                                </div>
                                <div id="dropdownEdit">
                                    <asp:DropDownList ID="DropDownListEdit" runat="server"></asp:DropDownList>
                                    <asp:Button ID="ButtonGetHouse" runat="server" Text="Hent hus" OnClick="ButtonGetHouse_Click" />
                                </div>
                                <div id="AddressDiv">
                                    <asp:Label ID="ELabelAddress" runat="server" Text="adresse"></asp:Label>
                                    <asp:TextBox ID="AddressTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="CityDiv">
                                    <asp:Label ID="ELabelCity" runat="server" Text="By:"></asp:Label>
                                    <asp:TextBox ID="CityTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="ZipcodeDiv">
                                    <asp:Label ID="ELabelZipcode" runat="server" Text="Post nr:"></asp:Label>
                                    <asp:TextBox ID="ZipcodeTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="LivingArealDiv">
                                    <asp:Label ID="ELabelLivingAreal" runat="server" Text="Boligareal:"></asp:Label>
                                    <asp:TextBox ID="LivingArealTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="GroundArealDiv">
                                    <asp:Label ID="ELabelGroundAreal" runat="server" Text="Grundareal:"></asp:Label>
                                    <asp:TextBox ID="GroundArealTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="BasementArealDiv">
                                    <asp:Label ID="ELabelBasementAreal" runat="server" Text="Kælderareal:"></asp:Label>
                                    <asp:TextBox ID="BasementArealTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="GarageArealDiv">
                                    <asp:Label ID="ELabelGarageAreal" runat="server" Text="Garageareal:"></asp:Label>
                                    <asp:TextBox ID="GarageArealTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="RoomsDiv">
                                    <asp:Label ID="ELabelRooms" runat="server" Text="Rum:"></asp:Label>
                                    <asp:TextBox ID="RoomsTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="ToiletsDiv">
                                    <asp:Label ID="ELabelToilets" runat="server" Text="Toiletter:"></asp:Label>
                                    <asp:TextBox ID="ToiletsTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="FloorLevelsDiv">
                                    <asp:Label ID="ELabelFloorLevels" runat="server" Text="Antal plan:"></asp:Label>
                                    <asp:TextBox ID="FloorLevelsTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="BuildingYearDiv">
                                    <asp:Label ID="ELabelBuildingYear" runat="server" Text="Byggeår:"></asp:Label>
                                    <asp:TextBox ID="BuildingYearTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="DistToSchoolDiv">
                                    <asp:Label ID="ELabelDistToSchool" runat="server" Text="Afstand til skole:"></asp:Label>
                                    <asp:TextBox ID="DistToSchoolTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="DistToShoppingDiv">
                                    <asp:Label ID="ELabelDistToShopping" runat="server" Text="Afstand til indkøb:"></asp:Label>
                                    <asp:TextBox ID="DistToShppingTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="EnergyMarkDiv">
                                    <asp:Label ID="ELabelEnergyMark" runat="server" Text="energimærke:"></asp:Label>
                                    <asp:TextBox ID="EnergyMarkTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="KvmPriceDiv">
                                    <asp:Label ID="ELabelKvmPrice" runat="server" Text="Kvm pris:"></asp:Label>
                                    <asp:TextBox ID="KvmPriceTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="BruttoPriceDiv">
                                    <asp:Label ID="ELabelBruttoPrice" runat="server" Text="Brutto pris"></asp:Label>
                                    <asp:TextBox ID="BruttoPriceTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="NettoPriceDiv">
                                    <asp:Label ID="ELabelNettoPrice" runat="server" Text="Netto pris"></asp:Label>
                                    <asp:TextBox ID="NettoPriceTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="CashPriceDiv">
                                    <asp:Label ID="ELabelCashPrice" runat="server" Text="Cash pris"></asp:Label>
                                    <asp:TextBox ID="CashPriceTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="WebLinkDiv">
                                    <asp:Label ID="ELabelWebLink" runat="server" Text="Web link"></asp:Label>
                                    <asp:TextBox ID="WebLinkTbe" runat="server"></asp:TextBox>
                                </div>
                                <div id="buttonEditDiv">
                                    <asp:Button ID="ButtonEdit" runat="server" Text="Redigere" OnClick="ButtonEdit_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">slet hus
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div id="DivDeleteHouse">
                                <div id="DropdownlistDeleteDiv">
                                    <asp:DropDownList ID="DropDownListDelete" runat="server"></asp:DropDownList>
                                </div>
                                <div id="ButtonDeleteDiv">
                                    <asp:Button ID="ButtonDeleteHouse" runat="server" Text="Slet hus" OnClick="ButtonDelete_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <div id="DivShowAllHouses">
                <div id="ListBoxShowAllHousesDiv">
                    <asp:ListBox ID="ListBoxAllHouses" runat="server"></asp:ListBox>
                </div>
                <table style="width: 100%;" id="tableHouses" runat="server">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
