<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRightsCreate.aspx.cs" Inherits="HusInfo.Pages.AdminRightsCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
        <div id="AddressDiv">
        <asp:Label ID="LabelAddress" runat="server" Text="adresse"></asp:Label>
        <asp:TextBox ID="AddressTb" runat="server"></asp:TextBox>
        </div>
        <div id="CityDiv">
        <asp:Label ID="LabelCity" runat="server" Text="By:"></asp:Label>
        <asp:TextBox ID="CityTb" runat="server"></asp:TextBox>
        </div>
        <div id="ZipcodeDiv">
        <asp:Label ID="LabelZipcode" runat="server" Text="Post nr:"></asp:Label>
        <asp:TextBox ID="ZipcodeTb" runat="server"></asp:TextBox>
        </div>
        <div id ="LivingArealDiv">
        <asp:Label ID="LabelLivingAreal" runat="server" Text="Boligareal:"></asp:Label>
        <asp:TextBox ID="LivingArealTb" runat="server"></asp:TextBox>
        </div>
        <div id="GroundArealDiv">
        <asp:Label ID="LabelGroundAreal" runat="server" Text="Grundareal:"></asp:Label>
        <asp:TextBox ID="GroundArealTb" runat="server"></asp:TextBox>
        </div>
        <div id="BasementArealDiv">
        <asp:Label ID="LabelBasementAreal" runat="server" Text="Kælderareal:"></asp:Label>
        <asp:TextBox ID="BasementArealTb" runat="server"></asp:TextBox>
        </div>
        <div id="GarageArealDiv">
        <asp:Label ID="LabelGarageAreal" runat="server" Text="Garageareal:"></asp:Label>
        <asp:TextBox ID="GarageArealTb" runat="server"></asp:TextBox>
        </div>
        <div id="RoomsDiv">
        <asp:Label ID="LabelRooms" runat="server" Text="Rum:"></asp:Label>
        <asp:TextBox ID="RoomsTb" runat="server"></asp:TextBox>
        </div>
        <div id="ToiletsDiv">
        <asp:Label ID="LabelToilets" runat="server" Text="Toiletter:"></asp:Label>
        <asp:TextBox ID="ToiletsTb" runat="server"></asp:TextBox>
        </div>
        <div id="FloorLevelsDiv">
        <asp:Label ID="LabelFloorLevels" runat="server" Text="Antal plan:"></asp:Label>
        <asp:TextBox ID="FloorLevelsTb" runat="server"></asp:TextBox>
        </div>
        <div id="BuildingYearDiv">
        <asp:Label ID="LabelBuildingYear" runat="server" Text="Byggeår:"></asp:Label>
        <asp:TextBox ID="BuildingYearTb" runat="server"></asp:TextBox>
        </div>
        <div id="DistToSchoolDiv">
        <asp:Label ID="LabelDistToSchool" runat="server" Text="Afstand til skole:"></asp:Label>
        <asp:TextBox ID="DistToSchoolTb" runat="server"></asp:TextBox>
        </div>
        <div id="DistToShoppingDiv">
        <asp:Label ID="LabelDistToShopping" runat="server" Text="Afstand til indkøb:"></asp:Label>
        <asp:TextBox ID="DistToShppingTb" runat="server"></asp:TextBox>
        </div>
        <div id="EnergyMarkDiv">
        <asp:Label ID="LabelEnergyMark" runat="server" Text="energimærke:"></asp:Label>
        <asp:TextBox ID="EnergyMarkTb" runat="server"></asp:TextBox>
        </div>
        <div id="KvmPriceDiv">
        <asp:Label ID="LabelKvmPrice" runat="server" Text="Kvm pris:"></asp:Label>
        <asp:TextBox ID="KvmPriceTb" runat="server"></asp:TextBox>
        </div>
        <div id="BruttoPriceDiv">
        <asp:Label ID="LabelBruttoPrice" runat="server" Text="Brutto pris"></asp:Label>
        <asp:TextBox ID="BruttoPriceTb" runat="server"></asp:TextBox>
        </div>
        <div id="NettoPriceDiv">
        <asp:Label ID="LabelNettoPrice" runat="server" Text="Netto pris"></asp:Label>
        <asp:TextBox ID="NettoPriceTb" runat="server"></asp:TextBox>
        </div>
        <div id="CashPriceDiv">
        <asp:Label ID="LabelCashPrice" runat="server" Text="Cash pris"></asp:Label>
        <asp:TextBox ID="CashPriceTb" runat="server"></asp:TextBox>
        </div>
        <div id="WebLinkDiv">
        <asp:Label ID="LabelWebLink" runat="server" Text="Web link"></asp:Label>
        <asp:TextBox ID="WebLinkTb" runat="server"></asp:TextBox>
        </div>
        <div id="buttonCreateDiv">
        <asp:Button ID="ButtonCreate" runat="server" Text="Opret" OnClick="ButtonCreate_Click" />
        </div>
    </form>
</body>
</html>
