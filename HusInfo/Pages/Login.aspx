<%@ Page Title="" Language="C#" MasterPageFile="~/content.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HusInfo.Pages.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContainerPlaceHolder" runat="server">

      <div class="jumbotron">
		  <form class="form-signin" role="form" runat="server">
			  <h2 class="form-signin-heading">Log ind</h2>
			  <asp:TextBox ID="UsernameTbe" class="form-control" placeholder="Indtast brugernavn" runat="server" required autofocus/>
			  <asp:TextBox ID="PasswordTbe" type="password" class="form-control" placeholder="Password" runat="server" required/>
			  <label class="checkbox">
				  <input type="checkbox" value="remember-me">
				  Husk mig
			  </label>
			  <asp:button OnClick="ButtonLogin_Click" runat="server" Text="Login" class="btn btn-lg btn-primary btn-block" type="submit" />
		  </form>
      </div>

      <div class="footer">
        <p>&copy; Husinfo 2014</p>
      </div>

</asp:Content>