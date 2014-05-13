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
        List<int> idList = new List<int>();
        HouseCtr hCtr = new HouseCtr();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<House> listHouse = hCtr.GetAllHouses();
            dropdownlistbox.Visible = false;
        }

        public void getData(Object sender, EventArgs e)
        {
            
            //int zip = Int32.Parse(postnrTB.Text);
            string adress = adresseTB.Text;

            List<House> ha = hCtr.getHouseAddress(adress);
            List<string> haddress = new List<string>();
            foreach (House h in ha)
            {
                haddress.Add(h.address + ", " + h.zipCode.ToString() + " " + h.city);
                idList.Add(h.id);
            }
            dropdownlistbox.DataSource = haddress;
            dropdownlistbox.DataBind();
            dropdownlistbox.Visible = true;
        }

        protected void lv_SelectedIndexChanged(object sender, EventArgs e)
        {
            postnrTB.Text = idList[dropdownlistbox.SelectedIndex].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //postnrTB.Text = idList[dropdownlistbox.SelectedIndex].ToString();
            //postnrTB.Text = dropdownlistbox.SelectedIndex.ToString();
        }
    }
}