using HusInfo.Controller;
using HusInfo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HusInfo.Controller;

namespace HusInfo.Pages
{
    public partial class AdminRightsEdit : System.Web.UI.Page
    {
        HouseCtr hC = new HouseCtr();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<House> ha = hC.GetAllHouses();
            List<string> haddress = new List<string>(); 
            foreach (House h in ha)
            {
                haddress.Add(h.address);
            }
            DropDownListEdit.DataSource = haddress;
            DropDownListEdit.DataBind();
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            House h = new House();
            h.address = AddressTbe.Text;
            h.basementAreal = double.Parse(BasementArealTbe.Text);
            h.bruttoprice = double.Parse(BruttoPriceTbe.Text);
            h.buildingYear = Int32.Parse(BuildingYearTbe.Text);
            h.cashPrice = double.Parse(CashPriceTbe.Text);
            h.city = CityTbe.Text;
            h.distToSchool = double.Parse(DistToSchoolTbe.Text);
            h.distToShopping = double.Parse(DistToShppingTbe.Text);
            h.energyMark = EnergyMarkTbe.Text;
            h.floorLevels = Int32.Parse(FloorLevelsTbe.Text);
            h.garageKvm = double.Parse(GarageArealTbe.Text);
            h.groundAreal = double.Parse(GroundArealTbe.Text);
            h.kvmPrice = double.Parse(KvmPriceTbe.Text);
            h.livingAreal = double.Parse(LivingArealTbe.Text);
            h.nettoPrice = double.Parse(NettoPriceTbe.Text);
            h.rooms = Int32.Parse(RoomsTbe.Text);
            h.toilets = Int32.Parse(ToiletsTbe.Text);
            h.webLink = WebLinkTbe.Text;
            h.zipCode = Int32.Parse(ZipcodeTbe.Text);

            hC.editHouse(h);

        }

        protected void DropDownListEdit_SelectedIndexChanged(object sender, EventArgs e)
        {
            House H = hC.getHouseAddress(DropDownListEdit.SelectedItem.Text)[0];

            AddressTbe.Text = H.address;
            BasementArealTbe.Text = H.basementAreal.ToString();
            BruttoPriceTbe.Text = H.bruttoprice.ToString();
            BuildingYearTbe.Text = H.buildingYear.ToString();
            CashPriceTbe.Text = H.cashPrice.ToString();
            CityTbe.Text = H.city;
            DistToSchoolTbe.Text = H.distToSchool.ToString();
            DistToShppingTbe.Text = H.distToSchool.ToString();
            EnergyMarkTbe.Text = H.energyMark;
            FloorLevelsTbe.Text = H.floorLevels.ToString();
            GarageArealTbe.Text = H.garageKvm.ToString();
            GroundArealTbe.Text = H.groundAreal.ToString();
            KvmPriceTbe.Text = H.kvmPrice.ToString();
            LivingArealTbe.Text = H.livingAreal.ToString();
            NettoPriceTbe.Text = H.nettoPrice.ToString();
            RoomsTbe.Text = H.rooms.ToString();
            ToiletsTbe.Text = H.toilets.ToString();
            WebLinkTbe.Text = H.webLink;
            ZipcodeTbe.Text = H.zipCode.ToString();
        }
    }
}