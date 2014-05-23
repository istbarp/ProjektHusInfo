using HusInfo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace HusInfo.Pages
{
	public partial class SearchTest : System.Web.UI.Page
	{
		protected string searchStr;
		protected HusInfo.Controller.HouseCtr hCtr;
		protected List<HusInfo.Model.House> hList;
		protected void Page_Load(object sender, EventArgs e)
		{
			searchStr = Request.QueryString["search"];

			if (!string.IsNullOrEmpty(searchStr))
			{
				hCtr = new HusInfo.Controller.HouseCtr();
				hList = hCtr.GetAllHouses();
			}
		}

		protected void Unnamed_TextChanged(object sender, EventArgs e)
		{
			searchStr = searchBox.Text;
			var blabla = from ere in hList
						 where ere.address.Contains(searchStr)
						 select ere;

			blabla.ToList();

			foreach(House h in blabla)
			{
				HtmlGenericControl div = new HtmlGenericControl("p");
				div.ID ="p";
				div.TagName = "p";
				div.InnerText = h.address.ToString() + h.zipCode.ToString() + h.city.ToString();

				searchResults.Controls.Add(div);
			}
		}


	}
}