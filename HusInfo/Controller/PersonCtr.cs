using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using HusInfo.Model;

namespace HusInfo.Controller
{
    public class PersonCtr
    {
        HouseInfoContext db = new HouseInfoContext();

        public Login GetPerson(string username, string password)
        {
            //var person = from p in db.Login
            //    where p.username.Equals(username) && p.password.Equals(password)
            //    select p;

            var pers = db.Login.Single(p => p.username.Equals(username) && p.password.Equals(password));
              
            return pers;
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