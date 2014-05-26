using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
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
				hList = hCtr.FindHouse(searchStr);
			}
		}

		[WebMethod]
		[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
		public static List<HouseBasic> FindHouse(string pre)
		{
			HusInfo.Controller.HouseCtr hCtr = new Controller.HouseCtr();

			var q = from v in hCtr.FindHouse(pre)
					select new HouseBasic()
					{
						Id = v.id,
						S = v.address + ", " + v.zipCode + " " + v.city
					};

			return q.ToList();
		}

		public class HouseBasic
		{
			public int Id { get; set; }
			public string S { get; set; }
		}
	}
}