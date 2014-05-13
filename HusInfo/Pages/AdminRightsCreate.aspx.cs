using HusInfo.Controller;
using HusInfo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HusInfo.Pages
{
    public partial class AdminRightsCreate : System.Web.UI.Page
    {
        HouseCtr hCtr = new HouseCtr();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCreate_Click(object sender, EventArgs e)
        {
            House h = new House();
            h.address = AddressTb.Text;
            h.basementAreal = Double.Parse(BasementArealTb.Text);
            h.bruttoprice = double.Parse(BruttoPriceTb.Text);
            h.buildingYear = Int32.Parse(BuildingYearTb.Text);
            h.cashPrice = double.Parse(CashPriceTb.Text);
            h.city = CityTb.Text;
            h.distToSchool = double.Parse(DistToSchoolTb.Text);
            h.distToShopping = double.Parse(DistToShppingTb.Text);
            h.energyMark = EnergyMarkTb.Text;
            h.floorLevels = Int32.Parse(FloorLevelsTb.Text);
            h.garageKvm = double.Parse(GarageArealTb.Text);
            h.groundAreal = double.Parse(GroundArealTb.Text);
            h.kvmPrice = double.Parse(KvmPriceTb.Text);
            h.livingAreal = double.Parse(LivingArealTb.Text);
            h.nettoPrice = double.Parse(NettoPriceTb.Text);
            h.rooms = Int32.Parse(RoomsTb.Text);
            h.toilets = Int32.Parse(ToiletsTb.Text);
            h.webLink = WebLinkTb.Text;
            h.zipCode = Int32.Parse(ZipcodeTb.Text);

            hCtr.insertHouse(h);

        }
    }
}