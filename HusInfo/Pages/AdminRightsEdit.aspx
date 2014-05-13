<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRightsEdit.aspx.cs" Inherits="HusInfo.Pages.AdminRightsEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="dropdownEdit">
            <asp:DropDownList ID="DropDownListEdit" runat="server" OnSelectedIndexChanged="DropDownListEdit_SelectedIndexChanged"></asp:DropDownList>
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
        <div id ="LivingArealDiv">
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
    </form>
</body>
</html>
