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

		public List<Login> GetWorkmen()
		{
			var q = from v in db.Login
					where v.personType == "Entreprenur"
					orderby v.verified ascending
					select v;

			return q.ToList();
		}

		public void VerifyLogin(int verifyId)
		{
			Login l = (from v in db.Login
					   where v.id == verifyId
					   select v).FirstOrDefault();

			l.verified = true;

			db.SaveChanges();
		}
	}
}