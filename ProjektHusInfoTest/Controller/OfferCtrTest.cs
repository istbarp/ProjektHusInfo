using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using HusInfo.Controller;
using HusInfo.Model;
using System.Collections.Generic;

namespace ProjektHusInfoTest.Controller
{
    [TestClass]
    public class OfferCtrTest
    {
        OfferCtr oCtr = new OfferCtr();
        [TestMethod]
        public void CheckOfferTest()
        {
            Offer o = new Offer();
            o.loginId = 5;
            o.classificationId = 2;
            o.price = 5000;
            o.comment = "Sikke noget lort";

            oCtr.addOffer(o);
            int id = 2;

            List<Offer> oNew = oCtr.getOffers(id);

            Assert.IsTrue(oNew.Count > 0);

            int offerId = oNew[oNew.Count - 1].id;

            oCtr.deleteOffer(offerId);

            Offer oDeleted = oCtr.getOffer(offerId);

            Assert.IsNull(oDeleted);

            
        }
    }
}
