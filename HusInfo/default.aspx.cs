using HusInfo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HusInfo.Controller;

namespace HusInfo
{
    public partial class _default : System.Web.UI.Page
    {
        HouseCtr hCtr = new HouseCtr();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<House> listHouse = hCtr.GetAllHouses();
            lv.Visible = false;
        }

        public void getData(Object sender, EventArgs e)
        {
            //int zip = Int32.Parse(postnrTB.Text);
            string adress = adresseTB.Text;

            List<House> ha = hCtr.getHouseAddress(adress);

            lv.DataSource = ha;
            lv.DataBind();
            lv.Visible = true;
        }

        protected void lv_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}