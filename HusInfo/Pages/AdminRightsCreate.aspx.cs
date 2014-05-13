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
            h.basementAreal = Int32.Parse(BasementArealTb.Text);
            h.bruttoprice = Int32.Parse(BruttoPriceTb.Text);
            h.buildingYear = Int32.Parse(BuildingYearTb.Text);
            h.cashPrice = Int32.Parse(CashPriceTb.Text);
            h.city = CityTb.Text;
            h.distToSchool = Int32.Parse(DistToSchoolTb.Text);
            h.distToShopping = Int32.Parse(DistToShppingTb.Text);
            h.energyMark = EnergyMarkTb.Text;
            h.floorLevels = Int32.Parse(FloorLevelsTb.Text);
            h.garageKvm = Int32.Parse(GarageArealTb.Text);
            h.groundAreal = Int32.Parse(GroundArealTb.Text);
            h.kvmPrice = Int32.Parse(KvmPriceTb.Text);
            h.livingAreal = Int32.Parse(LivingArealTb.Text);
            h.nettoPrice = Int32.Parse(NettoPriceTb.Text);
            h.rooms = Int32.Parse(RoomsTb.Text);
            h.toilets = Int32.Parse(ToiletsTb.Text);
            h.webLink = WebLinkTb.Text;
            h.zipCode = Int32.Parse(ZipcodeTb.Text);

            hCtr.insertHouse(h);

        }
    }
}