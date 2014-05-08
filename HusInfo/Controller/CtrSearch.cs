using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HusInfo.Controller
{
    public class CtrSearch
    {
        public CtrSearch()
        {
           
        }

        public List<House> SrcHouse(string address)
        {
            var db = new houseDatabaseDataContext();

            var houses =
                (from h in db.Houses
                where h.address.Contains(address)
                select h).Take(5).ToList();

            return houses;

        }
    }

    
}
