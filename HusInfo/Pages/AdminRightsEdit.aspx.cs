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
            //List<House> ha = hC.GetAllHouses();
            //List<string> haddress = new List<string>(); 
            //foreach (House h in ha)
            //{
            //    haddress.Add(h.address);
            //}
            //DropDownListEdit.DataSource = haddress;
            //DropDownListEdit.DataBind();
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
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            House h = new House();
            h.id = Int32.Parse(DropDownListEdit.SelectedValue);
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
            Response.Redirect(Request.RawUrl);

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

            hC.insertHouse(h);

        }

    }
}