<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="addUser.aspx.cs" Inherits="HusInfo.Pages.addUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContainerPlaceHolder" runat="server">

	<div class="jumbotron">
		<h2>Kun for håndværkere</h2>
		<p class="lead">Dette er kun beregnet til håndværkere der ønsker at give vurderinger til udbedring af skader på boliger.</p>
		<p class="lead">Efter oprettelsen skal din konto verificeres.</p>
	</div>

	<form id="form1" runat="server">

        <div id="NameDiv">
        <asp:Label ID="ELabelName" runat="server" Text="Navn"></asp:Label>
        <asp:TextBox ID="NameTbe" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="LastnameDiv">
        <asp:Label ID="ELabelLastname" runat="server" Text="Efternavn"></asp:Label>
        <asp:TextBox ID="LastNameTbe" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="UserNameDiv">
        <asp:Label ID="ELabelUserName" runat="server" Text="Brugernavn"></asp:Label>
        <asp:TextBox ID="UsernameTbe" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="PasswordDiv">
        <asp:Label ID="ELabelPassword" runat="server" Text="Adgangskode"></asp:Label>
        <asp:TextBox ID="PasswordTbe" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="CompanyDiv">
        <asp:Label ID="ELabelCompany" runat="server" Text="Firma"></asp:Label>
        <asp:TextBox ID="CompanyTbe" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="PhoneDiv">
        <asp:Label ID="ELabelPhone" runat="server" Text="Telefon nr."></asp:Label>
        <asp:TextBox ID="PhoneTbe" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="CVRDiv">
        <asp:Label ID="ELabelCVR" runat="server" Text="CVR nr."></asp:Label>
        <asp:TextBox ID="CVRTbe" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div id="buttonAddUser">
        <asp:Button ID="ButtonAddUser" CssClass="btn btn-lg btn-primary btn-block" runat="server" Text="Tilføj Bruger" OnClick="ButtonAddUser_Click" />
        </div>

        </form>

</asp:Content>
