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
	public partial class brunoSearch : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		[WebMethod]
		[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
		public static List<lol> FindHouse(string pre)
		{
			List<lol> l = new List<lol>()
			{
				new lol() { Id = 0, S = "hej" },
				new lol() { Id = 1, S = "med" },
				new lol() { Id = 2, S = "dig" }
			};

			var q = from v in l
					where v.S.Contains(pre)
					select v;

			return q.ToList();
		}

		public class lol
		{
			public int Id { get; set; }
			public string S { get; set; }
		}
	}
}