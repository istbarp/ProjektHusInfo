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
            foreach (House h in ha)
            {
                ha.Add(h);
            }
            DropDownListEdit.DataSource = ha;
            DropDownListEdit.DataBind();
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            House h = new House();
            h.address = AddressTbe.Text;
            h.basementAreal = Int32.Parse(BasementArealTbe.Text);
            h.bruttoprice = Int32.Parse(BruttoPriceTbe.Text);
            h.buildingYear = Int32.Parse(BuildingYearTbe.Text);
            h.cashPrice = Int32.Parse(CashPriceTbe.Text);
            h.city = CityTbe.Text;
            h.distToSchool = Int32.Parse(DistToSchoolTbe.Text);
            h.distToShopping = Int32.Parse(DistToShppingTbe.Text);
            h.energyMark = EnergyMarkTbe.Text;
            h.floorLevels = Int32.Parse(FloorLevelsTbe.Text);
            h.garageKvm = Int32.Parse(GarageArealTbe.Text);
            h.groundAreal = Int32.Parse(GroundArealTbe.Text);
            h.kvmPrice = Int32.Parse(KvmPriceTbe.Text);
            h.livingAreal = Int32.Parse(LivingArealTbe.Text);
            h.nettoPrice = Int32.Parse(NettoPriceTbe.Text);
            h.rooms = Int32.Parse(RoomsTbe.Text);
            h.toilets = Int32.Parse(ToiletsTbe.Text);
            h.webLink = WebLinkTbe.Text;
            h.zipCode = Int32.Parse(ZipcodeTbe.Text);

            hC.editHouse(h);

        }

        protected void DropDownListEdit_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}