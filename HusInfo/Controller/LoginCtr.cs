using HusInfo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
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

        public Login GetLoginByPhoneNumber(int phoneNr)
        {
            return (from l in db.Login
                    where l.phoneNumber == phoneNr
                    select l).FirstOrDefault();
        }

        public void deleteLoginByPhoneNumber(int phoneNr)
        {
            Login log = (from v in db.Login
                       where v.phoneNumber == phoneNr
                       select v).FirstOrDefault();

            db.Login.Remove(log);

            db.SaveChanges();
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
		
        public void insertLogin(Login u)
        {
            validationOfLogin(u);

            db.Login.Add(u);
            db.SaveChanges();
        }

        public void editLogin(Login lo)
        {
            validationOfLogin(lo);

            Login login = db.Login.FirstOrDefault(l => l.phoneNumber == lo.phoneNumber);
            login.company = lo.company;
            login.cvrNumber = lo.cvrNumber;
            login.lastname = lo.lastname;
            login.name = lo.name;
            login.password = lo.password;
            login.username = lo.username;
            login.phoneNumber = lo.phoneNumber;

            db.SaveChanges();
        }


        private void validationOfLogin(Login l)
        {

            Regex onlyDigits = new Regex("^[0-9]+$");
            Regex onlyLetters = new Regex(@"^[a-zA-Z]+$");
            Regex onlyLettersAndNumbers = new Regex(@"[a-zæøå 0-9]+");

            if (string.IsNullOrEmpty(l.lastname) || (!onlyLetters.IsMatch(l.lastname)))
                throw new Exception("Efternavn er ikke korrekt kun bogstaver tilladt");

            if ((string.IsNullOrEmpty(l.name)) || (!onlyLetters.IsMatch(l.name)))
                throw new Exception("Navn er ikke korrekt kun bogstaver tilladt");

            if (!onlyDigits.IsMatch(l.phoneNumber.ToString()))
                throw new Exception("indtast et korrekt telefon nummer");

            if (!onlyDigits.IsMatch(l.cvrNumber.ToString()))
                throw new Exception("indtast et korrekt cvr nummer");

            if (string.IsNullOrEmpty(l.company))
                throw new Exception("Indtast et firma navn");

            if (string.IsNullOrEmpty(l.username))
                throw new Exception("Indtast et brugernavn");

            if (string.IsNullOrEmpty(l.password))
                throw new Exception("Indtast et kodeord");
        }
	}
}