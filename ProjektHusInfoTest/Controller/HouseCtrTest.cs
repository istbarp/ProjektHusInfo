using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using HusInfo.Controller;
using HusInfo.Model;
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

        //[TestMethod]
        //public void AddHousePictureTest()
        //{
        //    House h = hCtr.GetHouse(3);
        //    Assert.IsNotNull(h);

        //    String picPath = @"C:\Users\Bruno\Documents\GitHub\ProjektHusInfo\HusInfo\Images\Ydunsvej7_1.png";

        //    hCtr.AddHousePicture(h, picPath);
			
        //    List<Bitmap> bmps = hCtr.GetHousePictures(h);
        //}

        [TestMethod]
        public void getHouseListAddress()
        {
            HouseCtr hCtr = new HouseCtr();

            string s = "vej";

            List<House> H = hCtr.getHouseAddress(s);

            Console.WriteLine("Count of houses");
            Console.WriteLine(H.Count.ToString());
            Console.WriteLine("-----------------------");

            List<Report> rep = new List<Report>();
            List<Classification> cla = new List<Classification>();

            foreach (var house in H)
            {
                Console.WriteLine(house.address);

                foreach(var repo in house.Report)
                {
                    rep.Add(repo);

                    foreach(var clas in repo.Classification)
                    {
                        cla.Add(clas);
                        Console.WriteLine(clas.problem);
                    }
                }
                Console.WriteLine("-----------------------");
            }

            Assert.IsNotNull(H);
        }

        [TestMethod]
        public void getTilstandsRapport()
        {
            //List<House> house = hCtr.getHouseAddress("vej");


            //Report report = hCtr.getReport(house[0].id);


   
            //Console.WriteLine("{0}", report);

            //Assert.IsNotNull(report);
        }
    }
}
