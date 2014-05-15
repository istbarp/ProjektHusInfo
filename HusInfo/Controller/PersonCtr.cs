using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HusInfo.Model;

namespace HusInfo.Controller
{
    public class PersonCtr
    {
        HouseInfoContext db = new HouseInfoContext();

        public Login getPerson()
        {
            return null;
        }

        public void addPerson(Login s)
        {
            db.Login.Add(s);
            db.SaveChanges();
        }

        public void deletePerson(Login s)
        {
            db.Login.Remove(s);
            db.SaveChanges();
        }

    }
}