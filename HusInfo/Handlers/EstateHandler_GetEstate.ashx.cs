using HusInfo.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace HusInfo.Handlers
{
	/// <summary>
	/// Summary description for EstateHandler_GetEstate
	/// </summary>
	public class EstateHandler_GetEstate : IHttpHandler
	{

		public void ProcessRequest(HttpContext context)
		{
			try
			{
				LoginCtr LCtr = new LoginCtr();


				context.Response.ContentType = "text/plain";
				string s = context.Request.Form["firstName"];
				int tlf = int.Parse(s);
				var lo = LCtr.GetLoginByPhoneNumber(tlf);



				// simulate Microsoft XSS protection
				var wrapper = new { username = lo.username, password = lo.password, company = lo.company, name = lo.name, lastname = lo.lastname, phone = lo.phoneNumber, cvr = lo.cvrNumber };
				context.Response.Write(JsonConvert.SerializeObject(wrapper));
			}
			catch (Exception)
			{
				var failwrapper = new { fejl = "Fejl" };
				context.Response.Write(JsonConvert.SerializeObject(failwrapper));
			}
		}

		public bool IsReusable
		{
			get
			{
				return false;
			}
		}
	}
}