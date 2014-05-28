using HusInfo.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HusInfo.Pages
{
	public partial class _estateAdmin : System.Web.UI.Page
	{
		LoginCtr LCtr = new LoginCtr();

		protected void Page_Load(object sender, EventArgs e)
		{
			
		}

		protected void ButtonCreate_Click(object sender, EventArgs e)
		{

			try
			{
				HusInfo.Model.Login l = new HusInfo.Model.Login();

				l.company = CompanyTb.Text;
				l.cvrNumber = CvrNumberTb.Text;
				l.lastname = LastnameTb.Text;
				l.name = NameTb.Text;
				l.password = PasswordTb.Text;
				l.personType = "RealEstateAgent";
				l.phoneNumber = int.Parse(PhonenumberTb.Text);
				l.username = UsernameTb.Text;

				LCtr.insertLogin(l);

				Response.Redirect(Request.RawUrl);
			}
			catch (Exception exc)
			{
				string strm = exc.Message.Replace('\'', ' ');
				string str = "<script language='javascript'>";
				str += "alert('" + strm + "')";
				str += "</script>";
				ClientScript.RegisterStartupScript(typeof(Page), "showmessage", str);
			}
		}


		protected void ButtonEdit_Click(object sender, EventArgs e)
		{
			try
			{
				HusInfo.Model.Login l = new HusInfo.Model.Login();

				l.company = CompanyTbe.Text;
				l.cvrNumber = CvrNumberTbe.Text;
				l.lastname = LastnameTbe.Text;
				l.name = NameTbe.Text;
				l.password = PasswordTbe.Text;
				l.phoneNumber = int.Parse(PhoneNumberTbe.Text);
				l.username = UsernameTbe.Text;

				LCtr.editLogin(l);
			}

			catch (Exception ex)
			{
				string strm = ex.Message.Replace('\'', ' ');
				string str = "<script language='javascript'>";
				str += "alert('" + strm + "')";
				str += "</script>";
				ClientScript.RegisterStartupScript(typeof(Page), "showmessage", str);
			}

			Response.Redirect(Request.RawUrl);
		}

		protected void ButtonGetUser_Click(object sender, EventArgs e)
		{

			int phoneNr = int.Parse(SearchTbe.Text);

			var lo = LCtr.GetLoginByPhoneNumber(phoneNr);

			CompanyTbe.Text = lo.company.ToString();
			CvrNumberTbe.Text = lo.cvrNumber.ToString();
			LastnameTbe.Text = lo.lastname.ToString();
			NameTbe.Text = lo.name.ToString();
			PasswordTbe.Text = lo.password.ToString();
			UsernameTbe.Text = lo.username.ToString();
			PhoneNumberTbe.Text = lo.phoneNumber.ToString();


		}


		protected void ButtonDelete_Click(object sender, EventArgs e)
		{


			int phoneNr = int.Parse(DeleteTbd.Text);

			LCtr.deleteLoginByPhoneNumber(phoneNr);


			Response.Redirect(Request.RawUrl);
		}


            
        
	}
}