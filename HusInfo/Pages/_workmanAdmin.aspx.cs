using HusInfo.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HusInfo.Pages
{
	public partial class _workmanAdmin : System.Web.UI.Page
	{
		protected LoginCtr lCtr = new LoginCtr();

		protected void Page_Load(object sender, EventArgs e)
		{
			
		}

		[WebMethod]
		public static void delete(string id)
		{
			int deleteId;
			if (int.TryParse(id, out deleteId))
			{
				(new LoginCtr()).deleteLogin(deleteId);
			}
		}

		[WebMethod]
		public static void verify(string id)
		{
			int verifyId;
			if (int.TryParse(id, out verifyId))
			{
				(new LoginCtr()).VerifyLogin(verifyId);
			}
		}
	}
}