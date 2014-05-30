using HusInfo.Controller;
using HusInfo.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HusInfo.Handlers
{
	/// <summary>
	/// Summary description for EstateHandler_EditEstate
	/// </summary>
	public class EstateHandler_EditEstate : IHttpHandler
	{

		public void ProcessRequest(HttpContext context)
		{
			try
			{
				LoginCtr LCtr = new LoginCtr();

				Login l = new Login();

				context.Response.ContentType = "text/plain";


				l.company = context.Request.Form["company"];
				l.cvrNumber = context.Request.Form["cvr"];
				l.lastname = context.Request.Form["lastname"];
				l.name = context.Request.Form["name"];
				l.password = context.Request.Form["password"];
				l.personType = "RealEstateAgent";
				l.verified = true;
				l.phoneNumber = int.Parse(context.Request.Form["phone"]);
				l.username = context.Request.Form["username"];

				LCtr.editLogin(l);

				var wrapper = new { succes = "succes", name = l.name, lastname = l.lastname };
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