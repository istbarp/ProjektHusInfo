using HusInfo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HusInfo.Controller
{
    public class OfferCtr
    {
        HouseInfoContext db = new HouseInfoContext();


        public void addOffer(Offer o)
        {
            db.Offer.Add(o);
            db.SaveChanges();
        }

        public Offer getOffer(int id)
        {
            Offer q = (from o in db.Offer
                    where o.id == id
                    select o).FirstOrDefault();
            return q;
        }
        public List<Offer> getOffers(int classificationId)
        {
            var q = from o in db.Offer
                    where o.classificationId == classificationId
                    select o;
            return q.ToList();
        }

        public void deleteOffer(int id)
        {
            var q = (from o in db.Offer
                     where o.id == id
                     select o).FirstOrDefault();

            db.Offer.Remove(q);

            db.SaveChanges();
        }
    }
}