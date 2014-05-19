using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HusInfo.Controller;
using HusInfo;

namespace HusInfo.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        PersonCtr pCtr = new PersonCtr();

        protected void Page_Load(object sender, EventArgs e)
        {
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

            if(l != null)
            {  
                Session["Login"] = l;
                Response.Redirect("/default.aspx");
            }
            else
            {
                Lebeltest.Text = "fail";
            }
        }
    }
}