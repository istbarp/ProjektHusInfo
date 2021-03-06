﻿using HusInfo.Controller;
using HusInfo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HusInfo.Pages
{
	public partial class _houseAdmin : System.Web.UI.Page
	{
		protected HouseCtr hC = new HouseCtr();

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!Page.IsPostBack)
			{
				List<House> ha = hC.GetAllHouses();
				var datasource = from h in ha
								 select new
								 {
									 h.id,
									 h.address,
									 h.zipCode,
									 DisplayField = String.Format("{0} ({1})", h.address, h.zipCode)
								 };

				DropDownListEdit.DataSource = datasource;
				DropDownListEdit.DataValueField = "id";
				DropDownListEdit.DataTextField = "DisplayField";
				DropDownListEdit.DataBind();


				DropDownListDelete.DataSource = datasource;
				DropDownListDelete.DataValueField = "id";
				DropDownListDelete.DataTextField = "DisplayField";
				DropDownListDelete.DataBind();
			}
		}

		protected void ButtonEdit_Click(object sender, EventArgs e)
		{
			try
			{
				House h = new House();
				h.id = int.Parse(DropDownListEdit.SelectedValue);
				h.address = AddressTbe.Text;
				h.basementAreal = double.Parse(BasementArealTbe.Text);
				h.bruttoprice = double.Parse(BruttoPriceTbe.Text);
				h.buildingYear = int.Parse(BuildingYearTbe.Text);
				h.cashPrice = double.Parse(CashPriceTbe.Text);
				h.city = CityTbe.Text;
				h.distToSchool = double.Parse(DistToSchoolTbe.Text);
				h.distToShopping = double.Parse(DistToShoppingTbe.Text);
				h.energyMark = EnergyMarkTbe.Text;
				h.floorLevels = int.Parse(FloorLevelsTbe.Text);
				h.garageKvm = double.Parse(GarageArealTbe.Text);
				h.groundAreal = double.Parse(GroundArealTbe.Text);
				h.kvmPrice = double.Parse(KvmPriceTbe.Text);
				h.livingAreal = double.Parse(LivingArealTbe.Text);
				h.nettoPrice = double.Parse(NettoPriceTbe.Text);
				h.rooms = int.Parse(RoomsTbe.Text);
				h.toilets = int.Parse(ToiletsTbe.Text);
				h.webLink = WeblinkTbe.Text;
				h.zipCode = int.Parse(ZipcodeTbe.Text);
				
				hC.editHouse(h);

				Shared.alert("Hus rettet.", this);
			}

			catch (Exception ex)
			{
				Shared.alert(ex.Message, this);
			}
		}

		protected void ButtonGetHouse_Click(object sender, EventArgs e)
		{
			int id = int.Parse(DropDownListEdit.SelectedValue);

			var H = hC.GetHouse(id);

			AddressTbe.Text = H.address.ToString();
			BasementArealTbe.Text = H.basementAreal.ToString();
			BruttoPriceTbe.Text = H.bruttoprice.ToString();
			BuildingYearTbe.Text = H.buildingYear.ToString();
			CashPriceTbe.Text = H.cashPrice.ToString();
			CityTbe.Text = H.city;
			DistToSchoolTbe.Text = H.distToSchool.ToString();
			DistToShoppingTbe.Text = H.distToSchool.ToString();
			EnergyMarkTbe.Text = H.energyMark;
			FloorLevelsTbe.Text = H.floorLevels.ToString();
			GarageArealTbe.Text = H.garageKvm.ToString();
			GroundArealTbe.Text = H.groundAreal.ToString();
			KvmPriceTbe.Text = H.kvmPrice.ToString();
			LivingArealTbe.Text = H.livingAreal.ToString();
			NettoPriceTbe.Text = H.nettoPrice.ToString();
			RoomsTbe.Text = H.rooms.ToString();
			ToiletsTbe.Text = H.toilets.ToString();
			WeblinkTbe.Text = H.webLink;
			ZipcodeTbe.Text = H.zipCode.ToString();
		}


		

		protected void ButtonDelete_Click(object sender, EventArgs e)
		{
			int id = int.Parse(DropDownListDelete.SelectedValue);

			hC.deleteHouse(id);

			Shared.reloadCurrentTab(this);
		}
	}
}