using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HusInfo.Controller;
using HusInfo.Model;

namespace HusInfo.Pages
{
    public partial class AddUser : System.Web.UI.Page
    {

        PersonCtr pCtr = new PersonCtr();

        protected void Page_Load(object sender, EventArgs e)
        {
            List<String> personTyper = new List<String>();
            personTyper.Add("Entreprenur");
            personTyper.Add("RealEstateAgent");

            DropDownListType.DataSource = personTyper;
            DropDownListType.DataBind();
        }

        protected void DropDownListType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonAddUser_Click(object sender, EventArgs e)
        {
            HusInfo.Model.Login person = new HusInfo.Model.Login();

            person.company = ELabelCompany.Text;
            person.password = ELabelPassword.Text;
            person.name = ELabelName.Text;
            person.lastname = ELabelLastname.Text;
            person.username = ELabelUserName.Text;
            person.phoneNumber = Convert.ToInt32(ELabelPhone.Text);
            person.personType = DropDownListType.Text;
            person.cvrNumber = Convert.ToInt32(ELabelCVR.Text);

            pCtr.addPerson(person);           
        }
    }
}