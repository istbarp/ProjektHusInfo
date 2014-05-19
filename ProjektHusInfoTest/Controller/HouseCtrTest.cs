﻿using System;
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
            House h = hCtr.GetHouse(4);

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

            foreach (var house in H)
            {
                Console.WriteLine(house.address);
            }
                
            Assert.IsNotNull(H);
        }

        [TestMethod]
        public void insertHouse()
        {
            HouseCtr hCtr = new HouseCtr();

            House h = new House();
            h.address = "Testvej 1";
            h.basementAreal = 1234;
            h.bruttoprice = 1234;
            h.buildingYear = 1990;
            h.cashPrice = 1234567;
            h.city = "testByen";
            h.distToSchool = 123;
            h.distToShopping = 234;
            h.energyMark = "A";
            h.floorLevels = 2;
            h.garageKvm = 20;
            h.groundAreal = 2500;
            h.kvmPrice = 9000;
            h.livingAreal = 10;

            hCtr.insertHouse(h);

            Assert.AreEqual(hCtr.getHouseAddress("Testvej")[0].address, h.address);
        }

        [TestMethod]
        public void getTilstandsRapport()
        {
            List<House> H = hCtr.getHouseAddress("vej");
            //Report report = hCtr.getReport(house[0].id);

            List<Report> rep = new List<Report>();
            List<Classification> cla = new List<Classification>();

            foreach (var house in H)
            {
                Console.WriteLine(house.address);

                foreach (var repo in house.Report)
                {
                    rep.Add(repo);
                    Console.WriteLine("id: {0}", repo.id);

                    foreach (var clas in repo.Classification)
                    {
                        cla.Add(clas);
                        Console.WriteLine("problem: {0} og type {1}", clas.problem, clas.type);
                    }
                }
                Console.WriteLine("-----------------------");
            }
            //Console.WriteLine("{0}", report);

            //Assert.IsNotNull(report);
        }

        [TestMethod]
        public void deleteHouse()
        {
            HouseCtr hCtr = new HouseCtr();

            House h = new House();

            h.address = "TestvejDelete";
            h.basementAreal = 1234;
            h.bruttoprice = 1234;
            h.buildingYear = 1990;
            h.cashPrice = 1234567;
            h.city = "testByen";
            h.distToSchool = 123;
            h.distToShopping = 234;
            h.energyMark = "A";
            h.floorLevels = 2;
            h.garageKvm = 20;
            h.groundAreal = 2500;
            h.kvmPrice = 9000;
            h.livingAreal = 10;

            hCtr.insertHouse(h);

            hCtr.deleteHouse(15);
        }
    }
}
