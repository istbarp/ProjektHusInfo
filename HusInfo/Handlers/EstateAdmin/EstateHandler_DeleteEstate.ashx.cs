using HusInfo.Controller;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HusInfo.Handlers
{
	/// <summary>
	/// Summary description for EstateHandler_DeleteEstate
	/// </summary>
	public class EstateHandler_DeleteEstate : IHttpHandler
	{

		public void ProcessRequest(HttpContext context)
		{
			try
			{
				LoginCtr LCtr = new LoginCtr();

				context.Response.ContentType = "text/plain";

				int phoneNr = int.Parse(context.Request.Form["tlf"]);

				LCtr.deleteLoginByPhoneNumber(phoneNr);

				var wrapper = new { succes = "succes" };
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