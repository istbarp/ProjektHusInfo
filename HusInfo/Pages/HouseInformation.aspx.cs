using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using HusInfo.Controller;
using HusInfo.Model;

namespace HusInfo.Pages
{
    public partial class HouseInformation : System.Web.UI.Page
    {
        HouseCtr hCtr = new HouseCtr();
        protected void Page_Load(object sender, EventArgs e)
        {
			if (!Page.IsPostBack)
			{
				int id = int.Parse(Request.Form["houseSelect"]);

				House h = hCtr.GetHouse(id);

				AddressTB.Text = h.address;
				CityTB.Text = h.city;
				ZipCodeTB.Text = h.zipCode.ToString();
				CashPriceTB.Text = h.cashPrice.ToString();
				KvmPriceTB.Text = h.kvmPrice.ToString();
				BuildingYearTB.Text = h.buildingYear.ToString();
				BruttoNettoTB.Text = h.bruttoprice.ToString() + " / " + h.nettoPrice.ToString();
				GroundArealTB.Text = h.groundAreal.ToString();
				BasementArealTB.Text = h.basementAreal.ToString();
				GarageArealTB.Text = h.groundAreal.ToString();
				LivingArealTB.Text = h.livingAreal.ToString();
				RoomsTB.Text = h.rooms.ToString();
				ToiletTB.Text = h.toilets.ToString();
				FloorLevelsTB.Text = h.floorLevels.ToString();
				DistToSchoolTB.Text = h.distToSchool.ToString();
				DistToShoppingTB.Text = h.distToShopping.ToString();
				EnergyMarkTB.Text = h.energyMark;
			}
        }

		
    }
}