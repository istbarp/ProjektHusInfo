using HusInfo.Controller;
using HusInfo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HusInfo.Pages
{
	public partial class admin : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			ContentMasterSite s = Page.Master as ContentMasterSite;
			s.SelectedMenu = "admin";
		}
	}
}