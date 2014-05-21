using HusInfo.Model;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;

namespace HusInfo.Controller
{
    public class HouseCtr
    {
		HouseInfoContext db = new HouseInfoContext();

        public House GetHouse(int id)
        {
			var q = from h in db.House.Include("Report.Classification")
					where h.id == id
					select h;

            return q.FirstOrDefault();
        }

        public void insertHouse(House h)
        {
            validationOfHouse(h);

            db.House.Add(h);
            db.SaveChanges();
        }

        public void editHouse(House houseUpdate)
        {
            validationOfHouse(houseUpdate);

            House house = db.House.FirstOrDefault(h => h.id == houseUpdate.id);
            house.address = houseUpdate.address;
            house.basementAreal = houseUpdate.basementAreal;
            house.bruttoprice = houseUpdate.bruttoprice;
            house.buildingYear = houseUpdate.buildingYear;
            house.cashPrice = houseUpdate.cashPrice;
            house.city = houseUpdate.city;
            house.distToSchool = houseUpdate.distToSchool;
            house.distToShopping = houseUpdate.distToShopping;
            house.energyMark = houseUpdate.energyMark;
            house.floorLevels = houseUpdate.floorLevels;
            house.garageKvm = houseUpdate.garageKvm;
            house.groundAreal = houseUpdate.groundAreal;
            house.kvmPrice = houseUpdate.kvmPrice;
            house.livingAreal = houseUpdate.livingAreal;
            house.Login = houseUpdate.Login;
            house.loginId = houseUpdate.loginId;
            house.nettoPrice = houseUpdate.nettoPrice;
            house.Report = houseUpdate.Report;
            house.rooms = houseUpdate.rooms;
            house.toilets = houseUpdate.toilets;
            house.webLink = houseUpdate.webLink;
            house.zipCode = houseUpdate.zipCode;

            db.SaveChanges();
        }

        //Returns null if no houses found
		public List<House> getHouseAddress(string address)
		{      
                 try{
                    var houses =
                        (from h in db.House.Include("Report.Classification")
                        where h.address.Contains(address)
                        select h).Take(5).ToList();

                     return houses;
                 }
				 catch(Exception e)
                 {
                     Console.WriteLine("test");
                 }

                 return null;
		}

        public List<House> GetAllHouses()
        {
            try
            {
                var houses = from h in db.House
                              select h;

                return houses.ToList();
            }
            catch(Exception e)
            {

            }
            return null;
        }

        //public void AddHousePicture(House h, string filePath)
        //{
        //    FileStream fs = new FileStream(filePath, FileMode.Open, FileAccess.Read);
        //    byte[] bytes = new byte[fs.Length];
        //    fs.Read(bytes, 0, Convert.ToInt32(fs.Length));

        //    HousePic hPic = new HousePic() { houseId = h.id, picture = bytes };
        //    db.HousePic.Add(hPic);
        //    db.SaveChanges();
        //}

		public List<Picture> GetHousePictures(House house)
		{
            var q = from p in db.Picture
                    where p.houseId == house.id
                    select p;

			return q.ToList();
		}

		private Bitmap getBitmap(byte[] bytes)
		{
			ImageConverter ic = new ImageConverter();
			Image img = (Image)ic.ConvertFrom(bytes);
			Bitmap bmp = new Bitmap(img);

			return bmp;
		}

        public Object getReport(int houseId)
        {
            //var report = from r in db.Report
            //             join c in db.Classification on r.id equals c.id
            //             select new {id = r.id, classification = c};

            var report = (from r in db.Report
                          where r.houseId == houseId
                          select r);

            return report;

        }

        public List<Classification> getReportClassification(Report r)
        {
            var classification = (from c in db.Classification
                                 where c.id == r.id
                                 select c).ToList();

            return classification;                         
        }

        public void deleteHouse(int id)
        {
            House h = new House { id = id };
            db.House.Attach(h);
            db.House.Remove(h);
            db.SaveChanges();


        }

        private void validationOfHouse(House h)
        {

            Regex checkZipcode = new Regex("^[0-9]{4}$");
            Regex onlyDigits = new Regex("^[0-9]+$");
            Regex onlyLetters = new Regex(@"^[a-zA-Z]+$");
            Regex onlyLettersAndNumbers = new Regex(@"[a-zæøå 0-9]+");
            Regex onlyWebLink = new Regex(@"^(http|https|ftp|)\://|[a-zA-Z0-9\-\.]+\.[a-zA-Z](:[a-zA-Z0-9]*)?/?([a-zA-Z0-9\-\._\?\,\'/\\\+&amp;%\$#\=~])*[^\.\,\)\(\s]$");

            if (string.IsNullOrEmpty(h.address) || (!onlyLettersAndNumbers.IsMatch(h.address.ToLower())))
                throw new Exception("Addresen er ikke korrekt indtastet");

            if ((string.IsNullOrEmpty(h.energyMark)) || (!onlyLetters.IsMatch(h.energyMark)))
                throw new Exception("du har ikke indtastet et invalid energimærke");

            if (string.IsNullOrEmpty(h.webLink) || (!onlyWebLink.IsMatch(h.webLink)))
                throw new Exception("du har ikke indtastet et weblink");

            if (!checkZipcode.IsMatch(h.zipCode.ToString()))
                throw new Exception("indtast en korrekt postnr");

            if (!onlyDigits.IsMatch(h.basementAreal.ToString()))
                throw new Exception("indtast et korrekt kælderareal");

            if(!onlyDigits.IsMatch(h.bruttoprice.ToString()))
                throw new Exception("indtast en korrekt brutopris");

            if(!onlyDigits.IsMatch(h.buildingYear.ToString()))
                throw new Exception("indtast korrekt byggeår");

            if(!onlyDigits.IsMatch(h.cashPrice.ToString()))
                throw new Exception("indtast korrekt kontantpris");

            if(string.IsNullOrEmpty(h.city))
                throw new Exception("Indtast en by");

            if(!onlyDigits.IsMatch(h.distToSchool.ToString()))
                throw new Exception("indtast korrekt afstand til skole");

            if(!onlyDigits.IsMatch(h.distToShopping.ToString()))
                throw new Exception("indtast korrekt afstand til indkøb");

            if(!onlyDigits.IsMatch(h.floorLevels.ToString()))
               throw new Exception("indtast korrekt antal plan");

            if(!onlyDigits.IsMatch(h.garageKvm.ToString()))
                throw new Exception("indtast korrekt garage kvm");

            if(!onlyDigits.IsMatch(h.groundAreal.ToString()))
                throw new Exception("indtast korrekt grundareal");

            if(!onlyDigits.IsMatch(h.kvmPrice.ToString()))
                throw new Exception("indtast korrekt kvadretmeter for huset");

            if(!onlyDigits.IsMatch(h.livingAreal.ToString()))
                throw new Exception("indtast korrekt boligareal");

            if(!onlyDigits.IsMatch(h.nettoPrice.ToString()))
                throw new Exception("indtast korrekt nettopris");

            if(!onlyDigits.IsMatch(h.rooms.ToString()))
                throw new Exception("indtast korrekt antal rum");

            if(!onlyDigits.IsMatch(h.toilets.ToString()))
                throw new Exception("indtast korrekt antal toiletter");
        }

    }
}