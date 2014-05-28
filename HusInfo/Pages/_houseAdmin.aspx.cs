using HusInfo.Controller;
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
		HouseCtr hC = new HouseCtr();
		protected static Dictionary<string, string> createForm;

		protected void Page_Load(object sender, EventArgs e)
		{
			createForm = new Dictionary<string, string>()
			{
				{ "address", "Adresse" },
				{ "city", "By" },
				{ "zipcode", "Post nr." },
				{ "livingAreal", "Boligareal" },
				{ "groundAreal", "Grundareal" },
				{ "basementAreal", "Kælderareal" },
				{ "garageKvm", "Garageareal" },
				{ "rooms", "Antal rum" },
				{ "toilets", "Antal toiletter" },
				{ "floorLevels", "Etager" },
				{ "buildingYear", "Byggeår" },
				{ "distToSchool", "Afstand til skole" },
				{ "distToShopping", "Afstand til indkøb" },
				{ "energyMark", "Energimærke" },
				{ "kvmPrice", "Kvm pris" },
				{ "bruttoprice", "Brutto pris" },
				{ "nettoprice", "Netto pris" },
				{ "cashPrice", "Kontantpris" },
				{ "webLink", "Mægler link" }
			};

			//fill dropdownlist edit
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
			}


			//fill dropdownlist delete
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
				h.id = Int32.Parse(DropDownListEdit.SelectedValue);
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

				Response.Redirect(Request.RawUrl);
			}

			catch (Exception ex)
			{
				string strm = ex.Message.Replace('\'', ' ');
				string str = "<script language='javascript'>";
				str += "alert('" + strm + "')";
				str += "</script>";
				ClientScript.RegisterStartupScript(typeof(Page), "showmessage", str);
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


		protected void ButtonCreate_Click(object sender, EventArgs e)
		{
			try
			{
				House h = new House();
				/*h.address = AddressTb.Text;
				h.basementAreal = Double.Parse(BasementArealTb.Text);
				h.bruttoprice = double.Parse(BruttoPriceTb.Text);
				h.buildingYear = int.Parse(BuildingYearTb.Text);
				h.cashPrice = double.Parse(CashPriceTb.Text);
				h.city = CityTb.Text;
				h.distToSchool = double.Parse(DistToSchoolTb.Text);
				h.distToShopping = double.Parse(DistToShppingTb.Text);
				h.energyMark = EnergyMarkTb.Text;
				h.floorLevels = int.Parse(FloorLevelsTb.Text);
				h.garageKvm = double.Parse(GarageArealTb.Text);
				h.groundAreal = double.Parse(GroundArealTb.Text);
				h.kvmPrice = double.Parse(KvmPriceTb.Text);
				h.livingAreal = double.Parse(LivingArealTb.Text);
				h.nettoPrice = double.Parse(NettoPriceTb.Text);
				h.rooms = int.Parse(RoomsTb.Text);
				h.toilets = int.Parse(ToiletsTb.Text);
				h.webLink = WebLinkTb.Text;
				h.zipCode = int.Parse(ZipcodeTb.Text);*/

				hC.insertHouse(h);

				Response.Redirect(Request.RawUrl);
			}

			catch (Exception exc)
			{
				string strm = exc.Message.Replace('\'', ' ');
				string str = "<script language='javascript'>";
				str += "alert('" + strm + "')";
				str += "</script>";
				ClientScript.RegisterStartupScript(typeof(Page), "showmessage", str);
			}



		}

		protected void ButtonDelete_Click(object sender, EventArgs e)
		{
			int id = int.Parse(DropDownListDelete.SelectedValue);

			hC.deleteHouse(id);

			Response.Redirect(Request.RawUrl);
		}

		[WebMethod]
		public static string Create(string data)
		{
			List<Input> inputs = new JavaScriptSerializer().Deserialize<List<Input>>(data);

			var q = from f in inputs
					select f;

			var dic = q.ToDictionary(x => x.name, v => v.value);

			string errorField = null;

			try
			{
				House h = new House();
				h.address = dic["address"];
				h.city = dic["city"];
				errorField = createForm["zipcode"];
				h.zipCode = MyParse<int?>(dic["zipcode"]);
				errorField = createForm["livingAreal"];
				h.livingAreal = MyParse<double?>(dic["livingAreal"]);
				errorField = createForm["groundAreal"];
				h.groundAreal = MyParse<double?>(dic["groundAreal"]);
				errorField = createForm["basementAreal"];
				h.basementAreal = MyParse<double?>(dic["basementAreal"]);
				errorField = createForm["garageKvm"];
				h.garageKvm = MyParse<double?>(dic["garageKvm"]);
				errorField = createForm["rooms"];
				h.rooms = MyParse<int?>(dic["rooms"]);
				errorField = createForm["toilets"];
				h.toilets = MyParse<int?>(dic["toilets"]);
				errorField = createForm["floorLevels"];
				h.floorLevels = MyParse<int?>(dic["floorLevels"]);
				errorField = createForm["buildingYear"];
				h.buildingYear = MyParse<int?>(dic["buildingYear"]);
				errorField = createForm["distToSchool"];
				h.distToSchool = MyParse<double?>(dic["distToSchool"]);
				errorField = createForm["distToShopping"];
				h.distToShopping = MyParse<double?>(dic["distToShopping"]);
				h.energyMark = dic["energyMark"];
				errorField = createForm["kvmPrice"];
				h.kvmPrice = MyParse<double?>(dic["kvmPrice"]);
				errorField = createForm["bruttoprice"];
				h.bruttoprice = MyParse<double?>(dic["bruttoprice"]);
				errorField = createForm["nettoprice"];
				h.nettoPrice = MyParse<double?>(dic["nettoprice"]);
				errorField = createForm["cashPrice"];
				h.cashPrice = MyParse<double?>(dic["cashPrice"]);
				h.webLink = dic["webLink"];

				HouseCtr hC = new HouseCtr();
				errorField = null;
				hC.insertHouse(h);

				return null;
			}
			catch (Exception e)
			{
				if (errorField != null)
					return errorField + ": " + e.Message;
				else
					return e.Message;
			}
		}

		private static T MyParse<T>(string data)
		{
			if (string.IsNullOrEmpty(data))
			{
				return default(T);
			}
			else
			{
				if (typeof(int?) == typeof(T))
				{
					return (T)Convert.ChangeType(int.Parse(data), typeof(int));
				}
				else if (typeof(double?) == typeof(T))
				{
					return (T)Convert.ChangeType(double.Parse(data), typeof(double));
				}
				else
				{
					throw new Exception();
				}
			}
		}

		public class Input
		{

			public string name { get; set; }
			public string value { get; set; }
		}
	}
}