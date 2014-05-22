using HusInfo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HusInfo.Controller
{
	public class ReportCtr
	{
		HouseInfoContext db = new HouseInfoContext();

		public Report GetReport(int id)
		{
			return (from r in db.Report
					where r.id == id
					select r).FirstOrDefault();
		}

		public void deleteReport(int id)
		{
			Report r = (from v in db.Report
						where v.id == id
						select v).FirstOrDefault();

			db.Report.Remove(r);

			db.SaveChanges();
		}
	}
}