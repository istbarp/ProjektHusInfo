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
            //Int32 houseId = (int)Session["HouseId"];

			int id = int.Parse(Request.Form["houseSelect"]);

            House h = hCtr.GetHouse(id);

			addressLbl.Text = h.address + ", " + h.zipCode.ToString() + " " + h.city;
            CashPriceTB.Text = h.cashPrice.ToString();
            KvmPriceTB.Text = h.kvmPrice.ToString();
            BruttoNettoTB.Text = h.bruttoprice.ToString() + " / " + h.nettoPrice.ToString();

			Report r = h.Report.FirstOrDefault();
			if (r != null)
			{
				foreach (var c in r.Classification)
				{
					switch (c.type)
					{
						case "k0":
							k0.Text = c.problem;
							break;
						case "k1":
							k1.Text = c.problem;
							break;
						case "k2":
							k2.Text = c.problem;
							break;
						case "k3":
							k3.Text = c.problem;
							break;
						case "un":
							un.Text = c.problem;
							break;
					}
				}
			}
        }
    }
}