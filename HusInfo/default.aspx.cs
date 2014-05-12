using HusInfo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HusInfo.Controller;

namespace HusInfo
{
    public partial class _default : System.Web.UI.Page
    {
        HouseCtr hCtr = new HouseCtr();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<House> listHouse = hCtr.GetAllHouses();
            dropDownListBox.DataSource = listHouse;
            dropDownListBox.DataBind();
        }

    }
}