﻿using HusInfo.Controller;
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
            SearchTbe.MaxLength = 8;
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
                l.verified = true;
				l.phoneNumber = int.Parse(PhonenumberTb.Text);
				l.username = UsernameTb.Text;

				LCtr.insertLogin(l);

				Shared.alert("Mægler oprettet.", this);
				Shared.reloadCurrentTab(this);
			}
			catch (Exception ex)
			{
				Shared.alert(ex.Message, this);
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
                l.verified = true;

				LCtr.editLogin(l);

				Shared.alert("Mægler rettet.", this);
			}

			catch (Exception ex)
			{
				Shared.alert(ex.Message, this);
			}
		}

		protected void ButtonGetUser_Click(object sender, EventArgs e)
		{
			int phoneNr = int.Parse(SearchTbe.Text);

			var lo = LCtr.GetLoginByPhoneNumber(phoneNr);
            if (lo != null)
            {
                CompanyTbe.Text = lo.company.ToString();
                CvrNumberTbe.Text = lo.cvrNumber.ToString();
                LastnameTbe.Text = lo.lastname.ToString();
                NameTbe.Text = lo.name.ToString();
                PasswordTbe.Text = lo.password.ToString();
                UsernameTbe.Text = lo.username.ToString();
                PhoneNumberTbe.Text = lo.phoneNumber.ToString();
            }
            else
            {
				Shared.alert("Telefon nummeret ekisistere ikke", this);
            }
		}

		protected void ButtonDelete_Click(object sender, EventArgs e)
		{
			int phoneNr = int.Parse(DeleteTbd.Text);

			LCtr.deleteLoginByPhoneNumber(phoneNr);

			Shared.alert("Mægler slettet.", this);
			Shared.reloadCurrentTab(this);
		}
	}
}