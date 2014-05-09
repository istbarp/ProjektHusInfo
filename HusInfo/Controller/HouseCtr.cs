using HusInfo.Database;
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
		houseDatabaseDataContext db = new houseDatabaseDataContext();

        public House GetHouse(int id)
        {
			var q = from h in db.Houses
					where h.id == id
					select h;

            return q.FirstOrDefault();
        }

        //Returns null if no houses found
		public List<House> HouseSearch(string address)
		{
			var db = new houseDatabaseDataContext();

                 try{
                    var houses =
                        (from h in db.Houses
                        where h.address.Contains(address)
                        select h).Take(5).ToList();

                     return houses;
                 }
				 catch(Exception e)
                 {

                 }

                 return null;
		}

		public List<Bitmap> getHousePictures(House house)
		{
			var q = from p in db.HousePics
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
    }
}