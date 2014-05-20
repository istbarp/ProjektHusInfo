using HusInfo.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HusInfo.Pages
{
	public partial class login : System.Web.UI.Page
	{
		PersonCtr pCtr = new PersonCtr();

		protected void Page_Load(object sender, EventArgs e)
		{
			ContentMasterSite s = Page.Master as ContentMasterSite;
			s.SelectedMenu = "login";


			string logout = Request.QueryString["Logout"] ?? "false";
			if (logout == "true")
			{
				Session.Clear();
				Response.Redirect("/default.aspx");
			}
		}

		protected void ButtonLogin_Click(object sender, EventArgs e)
		{
			Model.Login l = pCtr.GetPerson(UsernameTbe.Text, PasswordTbe.Text);

			if (l != null)
			{
				Session["Login"] = l;
				Response.Redirect("/default.aspx");

			}
			else
			{
				//Lebeltest.Text = "fail";
			}
		}
	}
}