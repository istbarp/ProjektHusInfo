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
		ClassificationCtr cCtr = new ClassificationCtr();
		ReportCtr rCtr = new ReportCtr();
		HouseCtr hCtr = new HouseCtr();
		LoginCtr lCtr = new LoginCtr();

		Login l;
		House h;
		Report r;
		Classification c;
		Offer o;

		[TestInitialize]
		public void Initialize()
		{
			l = new Login()
			{
				company = "Estate agent A/S",
				cvrNumber = "1234",
				lastname = "and",
				name = "anders",
				password = "1234",
				personType = "RealEstateAgent",
				phoneNumber = 12345678,
				username = "anders"
			};

			h = new House()
			{
				address = "houseTestAddress",
				basementAreal = 100,
				bruttoprice = 500000,
				buildingYear = 1970,
				cashPrice = 400000,
				city = "Aalborg",
				distToSchool = 500,
				distToShopping = 250,
				energyMark = "A",
				floorLevels = 2,
				garageKvm = 25,
				groundAreal = 125,
				kvmPrice = 4000,
				livingAreal = 30,
				Login = l,
				nettoPrice = 475000,
				rooms = 3,
				toilets = 1,
				webLink = "http://home.dk/boligkatalog/holbaek/4340/huse-villaer/frihedshaabsvej_8_undloese_201-01176.aspx"
			};

			r = new Report()
			{
				House = h,
			};

			c = new Classification()
			{
				problem = "Fugt skade",
				Report = r,
				type = "K3"
			};

			o = new Offer()
			{
				Classification = c,
				comment = "Det ser dyrt ud at lave.",
				Login = l,
				price = 150000
			};

			oCtr.addOffer(o);
		}

        [TestMethod]
        public void CheckOfferTest()
        {
			Assert.IsNotNull(lCtr.GetLogin(l.id));
			Assert.IsNotNull(hCtr.GetHouse(h.id));
			Assert.IsNotNull(rCtr.GetReport(r.id));
			Assert.IsNotNull(cCtr.getClassification(c.id));
			Assert.IsNotNull(oCtr.getOffer(o.id));
        }

		[TestCleanup]
		public void Cleanup()
		{
			oCtr.deleteOffer(o.id);
			cCtr.deleteClassification(c.id);
			rCtr.deleteReport(r.id);
			hCtr.deleteHouse(h.id);
			lCtr.deleteLogin(l.id);
		}
    }
}
