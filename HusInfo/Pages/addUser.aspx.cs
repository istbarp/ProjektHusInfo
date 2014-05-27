using HusInfo.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HusInfo.Pages
{
	public partial class addUser : System.Web.UI.Page
	{
		PersonCtr pCtr = new PersonCtr();

		protected void Page_Load(object sender, EventArgs e)
		{
			ContentMasterSite s = Page.Master as ContentMasterSite;
			s.SelectedMenu = "addUser";
		}

		protected void ButtonAddUser_Click(object sender, EventArgs e)
		{
			HusInfo.Model.Login person = new HusInfo.Model.Login();

			person.company = CompanyTbe.Text;
			person.password = PasswordTbe.Text;
			person.name = NameTbe.Text;
			person.lastname = LastNameTbe.Text;
			person.username = UsernameTbe.Text;
			person.phoneNumber = int.Parse(PhoneTbe.Text);
			person.personType = "Entreprenur";
			person.cvrNumber = CVRTbe.Text;

			pCtr.addPerson(person);

			CompanyTbe.Text = "";
			PasswordTbe.Text = "";
			NameTbe.Text = "";
			LastNameTbe.Text = "";
			UsernameTbe.Text = "";
			PhoneTbe.Text = "";
			CVRTbe.Text = "";
		}
	}
}