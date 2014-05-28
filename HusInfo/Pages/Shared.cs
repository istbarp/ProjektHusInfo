using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace HusInfo.Pages
{
	public class Shared
	{
		/// <summary>
		/// Calls reloadCurrentTab javascript function in admin.aspx.
		/// </summary>
		/// <param name="p"></param>
		internal static void reloadCurrentTab(Page p)
		{
			ScriptManager.RegisterClientScriptBlock(p, p.GetType(), "AlertBox", "reloadCurrentTab();", true);
		}

		internal static void alert(string msg, Page p)
		{
			ScriptManager.RegisterClientScriptBlock(p, p.GetType(), "AlertBox", "alert('" + msg + "');", true);
		}
	}
}