using HusInfo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HusInfo.Controller
{
	public class ClassificationCtr
	{
		HouseInfoContext db = new HouseInfoContext();

		public Classification getClassification(int id)
		{
			var q = from c in db.Classification
					where c.id == id
					select c;

			return q.FirstOrDefault();
		}
	}
}