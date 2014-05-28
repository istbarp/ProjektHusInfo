using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HusInfo
{
	public partial class ContentMasterSite : System.Web.UI.MasterPage
	{
		private string page = "frontpage";
		
		public string SelectedMenu
		{
			get { return page; }
			set { page = value; }
		}

		protected void Page_Load(object sender, EventArgs e)
		{
		}
	}
}