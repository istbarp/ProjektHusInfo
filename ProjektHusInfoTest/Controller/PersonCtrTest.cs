using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using HusInfo.Controller;
using HusInfo.Model;
using System.Collections.Generic;
using System.Drawing;
using System.IO;

namespace ProjektHusInfoTest.Controller
{
    [TestClass]
    public class PersonCtrTest
    {
        [TestMethod]
        public void addPerson()
        {
            PersonCtr pCtr = new PersonCtr();

            Login l = new Login();
            l.name = "Jan";
            l.lastname = "Larsen";
            l.username = "JonLarsen";
            l.password = "1234";
            l.phoneNumber = 12345678;
            l.company = "håndværk A/S";
            l.cvrNumber = 12345678;
            l.personType ="Entreprenur";

            pCtr.addPerson(l);

            Assert.IsNotNull(l);
        }
    }
}
