using HusInfo.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HusInfo.Pages
{
	public partial class giveOffer : System.Web.UI.Page
	{
		int classificationId;
		int loginId;
		OfferCtr oCtr = new OfferCtr();

		protected void Page_Load(object sender, EventArgs e)
		{
			ContentMasterSite s = Page.Master as ContentMasterSite;
			s.SelectedMenu = "";


			Model.Login l = (Model.Login)Session["Login"];
			if (l != null)
			{
				loginId = l.id;

				classificationId = int.Parse(Request.QueryString["id"].ToString());
			}
		}

		protected void giveOffer_Click(object sender, EventArgs e)
		{
			if (loginId == 0)
				return;

			HusInfo.Model.Offer o = new HusInfo.Model.Offer();
			o.classificationId = classificationId;
			o.loginId = loginId;
			o.comment = comment.Text.ToString();
			o.price = double.Parse(price.Text.ToString());
			oCtr.addOffer(o);
		}
	}
}