using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HusInfo.Pages
{
	public partial class search : System.Web.UI.Page
	{
		protected string searchStr;
		protected HusInfo.Controller.HouseCtr hCtr;
		protected List<HusInfo.Model.House> hList;

		protected void Page_Load(object sender, EventArgs e)
		{
			ContentMasterSite s = Page.Master as ContentMasterSite;
			s.SelectedMenu = "search";


			searchStr = Request.QueryString["search"];

			if (!string.IsNullOrEmpty(searchStr))
			{
				hCtr = new HusInfo.Controller.HouseCtr();
				hList = hCtr.getHouseAddress(searchStr);
			}
		}
	}
}