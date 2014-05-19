using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HusInfo.Pages
{
    public partial class testHp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var test = (Model.Login)Session["Login"];

            if (Session["Login"] != null)
            {
                LabelTest.Text = Session["Login"].ToString();
            }

        }
    }
}