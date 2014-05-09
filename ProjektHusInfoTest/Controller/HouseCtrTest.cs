using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using HusInfo.Controller;
using HusInfo.Database;

namespace ProjektHusInfoTest
{
    [TestClass]
    public class HouseCtrTest
    {
        [TestMethod]
        public void GetHouseTest()
        {
            HouseCtr hCtr = new HouseCtr();

            House h = hCtr.GetHouse(3);

			Assert.IsNotNull(h);
        }
    }
}
