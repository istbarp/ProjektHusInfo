using HusInfo.Controller;
using HusInfo.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HusInfo.Handlers.HouseAdmin
{
	/// <summary>
	/// Summary description for HouseHandler_CreateHouse
	/// </summary>
	public class HouseHandler_CreateHouse : IHttpHandler
	{

		public void ProcessRequest(HttpContext context)
		{
			try
			{

				context.Response.ContentType = "text/plain";

				HouseCtr HCtr = new HouseCtr();
				House h = new House();
				h.address = context.Request.Form["address"];
				h.basementAreal = Double.Parse(context.Request.Form["basementAreal"]);
				h.bruttoprice = double.Parse(context.Request.Form["bruttoPrice"]);
				h.buildingYear = int.Parse(context.Request.Form["buildingYear"]);
				h.cashPrice = double.Parse(context.Request.Form["cashPrice"]);
				h.city = context.Request.Form["city"];
				h.distToSchool = double.Parse(context.Request.Form["distToSchool"]);
				h.distToShopping = double.Parse(context.Request.Form["distToShop"]);
				h.energyMark = context.Request.Form["energyMark"];
				h.floorLevels = int.Parse(context.Request.Form["floorLevels"]);
				h.garageKvm = double.Parse(context.Request.Form["garageAreal"]);
				h.groundAreal = double.Parse(context.Request.Form["groundAreal"]);
				h.kvmPrice = double.Parse(context.Request.Form["kvmPrice"]);
				h.livingAreal = double.Parse(context.Request.Form["livingAreal"]);
				h.nettoPrice = double.Parse(context.Request.Form["nettoPrice"]);
				h.rooms = int.Parse(context.Request.Form["rooms"]);
				h.toilets = int.Parse(context.Request.Form["toilets"]);
				h.webLink = context.Request.Form["weblink"];
				h.zipCode = int.Parse(context.Request.Form["zip"]);

				HCtr.insertHouse(h);

				var wrapper = new { succes = "succes", address = h.address, zip = h.zipCode, city = h.city };
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