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
    }
}
