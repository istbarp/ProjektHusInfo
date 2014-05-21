using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HusInfo.Pages
{
	public partial class houseInfo : System.Web.UI.Page
	{
		protected HusInfo.Controller.HouseCtr hCtr;
		protected HusInfo.Model.House house;
		protected int i;
		protected string[,] rows;
		protected string[] typesOfK;
		

		protected void Page_Load(object sender, EventArgs e)
		{
			ContentMasterSite s = Page.Master as ContentMasterSite;
			s.SelectedMenu = "search";


			int id = int.Parse(Request.QueryString["id"]);
			hCtr = new HusInfo.Controller.HouseCtr();
			house = hCtr.GetHouse(id);

			rows = new string[,]
			{
				{ "Adresse", house.address.ToString() },
				{ "By", house.city.ToString() },
				{ "Post nr", house.zipCode.ToString() },
				{ "Kontantpris", house.cashPrice.ToString() },
				{ "Kvm pris", house.kvmPrice.ToString() },
				{ "Bygge år", house.buildingYear.ToString() },
				{ "Brutto", house.bruttoprice.ToString() },
				{ "Grundareal", house.groundAreal.ToString() },
				{ "Garageareal" , house.garageKvm.ToString() },
				{ "Kælderareal", house.basementAreal.ToString() },
				{ "Stueareal", house.livingAreal.ToString() },
				{ "Antal rum", house.floorLevels.ToString() },
				{ "Toileter", house.toilets.ToString() },
				{ "Etager", house.floorLevels.ToString() },
				{ "Afstand til skole", house.distToSchool.ToString()},
				{ "Afstand til indkøb", house.distToShopping.ToString()},
				{ "Energimærke", house.energyMark.ToString()}
			};

			typesOfK = new string[] { "k3", "k2", "k1", "k0", "un" };
		}
	}
}