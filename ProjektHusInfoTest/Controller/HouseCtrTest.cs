using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using HusInfo.Controller;
using HusInfo.Database;
using System.Collections.Generic;
using System.Drawing;
using System.IO;

namespace ProjektHusInfoTest
{
    [TestClass]
    public class HouseCtrTest
	{
		HouseCtr hCtr = new HouseCtr();

        [TestMethod]
        public void GetHouseTest()
        {
            House h = hCtr.GetHouse(3);

			Assert.IsNotNull(h);
        }

		[TestMethod]
		public void AddHousePictureTest()
		{
			House h = hCtr.GetHouse(3);
			Assert.IsNotNull(h);

			String picPath = @"C:\Users\Bruno\Documents\GitHub\ProjektHusInfo\HusInfo\Images\Ydunsvej7_1.png";

			hCtr.AddHousePicture(h, picPath);
			
			List<Bitmap> bmps = hCtr.GetHousePictures(h);

		}

        [TestMethod]
        public void getHouseListAddress()
        {
            HouseCtr hCtr = new HouseCtr();

            string s = "vejl";

            List<House> H = hCtr.getHouseAddress(s);

            Console.WriteLine(H.Count.ToString());

            foreach (var house in H)
            {
                Console.WriteLine(house.address);
            }

            Assert.IsNotNull(H);
        }

        [TestMethod]
        public void getTilstandsRapport()
        {
            HouseCtr houseCtr = new HouseCtr();
            List<House> house = houseCtr.getHouseAddress("vej");

            Report report = (Report)houseCtr.getReport(house[0].id);

   
            Console.WriteLine("{0}", report);

            Assert.IsNotNull(report);
        }
    }
}
