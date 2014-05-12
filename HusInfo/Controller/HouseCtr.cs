﻿using HusInfo.Model;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;

namespace HusInfo.Controller
{
    public class HouseCtr
    {
		HouseInfoContext db = new HouseInfoContext();

        public House GetHouse(int id)
        {
			var q = from h in db.House
					where h.id == id
					select h;

            return q.FirstOrDefault();
        }

        //Returns null if no houses found
		public List<House> getHouseAddress(string address)
		{
                 try{
                    var houses =
                        (from h in db.House
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

		public void AddHousePicture(House h, string filePath)
		{
			FileStream fs = new FileStream(filePath, FileMode.Open, FileAccess.Read);
			byte[] bytes = new byte[fs.Length];
			fs.Read(bytes, 0, Convert.ToInt32(fs.Length));

			HousePic hPic = new HousePic() { houseId = h.id, picture = bytes };
			db.HousePic.Add(hPic);
			db.SaveChanges();
		}

		public List<Bitmap> GetHousePictures(House house)
		{
			var q = from p in db.HousePic
					where p.houseId == house.id
					select getBitmap(p.picture.ToArray());

			return q.ToList();
		}

		private Bitmap getBitmap(byte[] bytes)
		{
			ImageConverter ic = new ImageConverter();
			Image img = (Image)ic.ConvertFrom(bytes);
			Bitmap bmp = new Bitmap(img);

			return bmp;
		}

        public IQueryable getReport(int houseId)
        {
            var db = new houseDatabaseDataContext();

            var report = from r in db.Reports
                         join c in db.Classifications on r.id equals c.id
                         select new {id = r.id, classification = c};

            //var report = (from r in db.Reports
            //              where r.houseId == houseId
            //              select r);

            return report;

        }

        public List<Classification> getReportClassification(Report r)
        {
            var db = new houseDatabaseDataContext();

            var classification = (from c in db.Classifications
                                 where c.id == r.id
                                 select c).ToList();

            return classification;
                                 
        }
    }
}