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
            Int32 houseId = (int)Session["HouseId"];

            House h = hCtr.GetHouse(houseId);

            CashPriceTB.Text = h.cashPrice.ToString();
            KvmPriceTB.Text = h.kvmPrice.ToString();
            BruttoNettoTB.Text = h.bruttoprice.ToString() + " / " + h.nettoPrice.ToString();


        }
    }
}