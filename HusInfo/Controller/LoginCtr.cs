using HusInfo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HusInfo.Controller
{
	public class LoginCtr
	{
		HouseInfoContext db = new HouseInfoContext();

		public Login GetLogin(int id)
		{
			return (from l in db.Login
					where l.id == id
					select l).FirstOrDefault();
		}

		public void deleteLogin(int id)
		{
			Login l = (from v in db.Login
					   where v.id == id
					   select v).FirstOrDefault();

			db.Login.Remove(l);

			db.SaveChanges();
		}
	}
}