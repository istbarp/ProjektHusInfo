using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class SearchCtr
{

    public SearchCtr()
	{
        List<House> houses = dbH.getAllHouses();
	}

    public List<House> SrcHouse(string address)
    {
        DBHouse dbH = new DBHouse();

        List<House> houseResult = new List<House>();

        foreach (House h in houses)
        {
            if (h.Address.Contains(address))
            {
                houseResult.Add(h);
            }
        }

        return houseResult; 
    }
}