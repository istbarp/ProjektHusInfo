using System;
using System.Collections.Generic;
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

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
           Model.Login l = pCtr.GetPerson(UsernameTbe.Text, PasswordTbe.Text);

            if(l != null)
            {
                Response.Redirect("/default.aspx");
            }
            else
            {
                Lebeltest.Text = "fail";
            }
        }


    }
}