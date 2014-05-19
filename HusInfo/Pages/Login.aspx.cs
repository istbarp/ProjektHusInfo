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
            

            //if (IsPostBack)
            //{
            //    Model.Login l = pCtr.GetPerson(UsernameTbe.Text, PasswordTbe.Text);
            //    Session["Login"] = l;

            //    Model.Login test = (Model.Login) Session["Login"];

            //    Lebeltest.Text = test.name;
            //}
           
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            Model.Login l = pCtr.GetPerson(UsernameTbe.Text, PasswordTbe.Text);

            if(l != null)
            {  
                Session["Login"] = l;
                var test = (Model.Login)Session["Login"];
                Lebeltest.Text = test.name;
                //Response.Redirect("/default.aspx");
            }
            else
            {
                Lebeltest.Text = "fail";
            }
        }


    }
}