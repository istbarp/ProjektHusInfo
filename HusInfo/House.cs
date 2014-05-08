using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace HusInfo
{
    public class House
    {
        private double cashPrice;
        private double kvmPrice;
        private double bruttoPrice;
        private double nettoPrice;
        private double livingAreal;
        private double groundAreal;
        private int buildingYear;
        private double basementAreal;
        private int floorLevels;
        private int rooms;
        /// <summary>
        /// ca
        /// </summary>
        private double garageKvm;
        private double distToSchool;
        private double distToShopping;
        private int toilets;
        private string energyMark;
        private int id;
        private string address;
        private int zipCode;
        private string city;
        private string webLink;
        private int realEstateAgentId;
        private byte housePicture;

        public Report Report
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }
    }
}
