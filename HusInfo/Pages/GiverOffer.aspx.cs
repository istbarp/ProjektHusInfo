using HusInfo.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HusInfo.Pages
{
    public partial class GiverOffer : System.Web.UI.Page
    {
		int id;
		int loginId;
		OfferCtr oCtr = new OfferCtr();
        protected void Page_Load(object sender, EventArgs e)
        {
			//var test = (Model.Login)Session["Login"];
			//loginId = test.id;
			id = int.Parse(Request.QueryString["id"].ToString());
        }

        protected void giveOffer_Click(object sender, EventArgs e)
        {
			HusInfo.Model.Offer o = new HusInfo.Model.Offer();
			o.classificationId = id;
			o.loginId = 5;
			o.comment = comment.Text.ToString();
			o.price = double.Parse(price.Text.ToString());
			oCtr.addOffer(o);
        }
    }
}