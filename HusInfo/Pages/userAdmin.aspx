<%@ Page Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="userAdmin.aspx.cs" Inherits="HusInfo.Pages.userAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContainerPlaceHolder" runat="server">
	<style>
		.panel-group .panel-heading {
			background-color: #f5f5f5;
		}

		.panel-title {
			color: #999 !important;
			font-weight: bold;
		}

		a {
			color: none !important;
			text-decoration: none !important;
		}

		.a:hover {
			color: none !important;
			text-decoration: none !important;
		}

		#DivCreateHouse {
			margin: auto;
		}


		.input-group {
			margin: auto;
		}

		.jumbotron {
			padding-top: 15px !important;
			padding-bottom: 15px !important;
		}

		.form-label {
			float: left;
		}

		.form-control {
			margin-bottom: 16px;
		}

		th 
		{
			text-align: left;
			border-bottom: solid 1px grey;
		}
		
		td 
		{
			text-align: left;
			background-color: white;
		}

		td:nth-child(2)
		{
			border-left: 1px solid grey;
		}

		table{
			border: solid 1px grey;
			margin-bottom: 0px !important;
			border-collapse: inherit !important;
		}
	</style>
	<form id="form1" runat="server">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" "><div class="panel-heading">
                        <h4 class="panel-title">
                            Opret Mægler
                        </h4>
                    </div></a>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div id="DivCreateUser" class="jumbotron" title="Create User">						
                                        <span class="form-label">Brugernavn</span>
                                        <asp:TextBox ID="UsernameTb" runat="server" CssClass="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Kodeord</span>
                                        <asp:TextBox ID="PasswordTb" runat="server" CssClass="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Firma navn</span>
                                        <asp:TextBox ID="CompanyTb" runat="server" CssClass="form-control" ></asp:TextBox>

                                        <span class="form-label">Navn</span>
                                        <asp:TextBox ID="NameTb" runat="server" CssClass="form-control" ></asp:TextBox>

                                        <span class="form-label">Efternavn</span>
                                        <asp:TextBox ID="LastnameTb" runat="server" CssClass="form-control" ></asp:TextBox>

                                        <span class="form-label">Telefon nummer</span>
                                        <asp:TextBox ID="PhonenumberTb" runat="server" CssClass="form-control" ></asp:TextBox>

                                        <span class="form-label">Cvr nummer</span>
                                        <asp:TextBox ID="CvrNumberTb" runat="server" CssClass="form-control" ></asp:TextBox>

										<asp:Button CssClass="btn btn-success btn-lg" ID="ButtonCreate" runat="server" Text="Opret" OnClick="ButtonCreate_Click" />
                                    </div>
                                </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><div class="panel-heading">
                        <h4 class="panel-title">
                            Ret Mægler
                        </h4>
                    </div></a>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div id="DivEditUser" title="EditHouse">
                                
								<asp:ScriptManager ID="ScriptManager1" runat="server"/>
								<asp:UpdatePanel runat="server" ID="UpdatePanel1" UpdateMode="Conditional">
									<Triggers>
										<asp:AsyncPostBackTrigger ControlID="UpdateButton1" EventName="Click" />
									</Triggers>
									<ContentTemplate>
                                
										<div id="EditFields" class="jumbotron">

                                        <span class="form-label">Søg</span>
                                        <asp:TextBox ID="SearchTbe" runat="server" CssClass="form-control" ></asp:TextBox>
                                        <asp:Button ID="UpdateButton1" CssClass="btn btn-warning" runat="server" Text="Hent Bruger" OnClick="ButtonGetUser_Click" /><br />

                                        <span class="form-label">Brugernavn</span>
                                        <asp:TextBox ID="UsernameTbe" runat="server" CssClass="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Kodeord</span>
                                        <asp:TextBox ID="PasswordTbe" runat="server" CssClass="form-control" ></asp:TextBox>
								
                                        <span class="form-label">Firma navn</span>
                                        <asp:TextBox ID="CompanyTbe" runat="server" CssClass="form-control" ></asp:TextBox>

                                        <span class="form-label">Navn</span>
                                        <asp:TextBox ID="NameTbe" runat="server" CssClass="form-control" ></asp:TextBox>

                                        <span class="form-label">Efternavn</span>
                                        <asp:TextBox ID="LastnameTbe" runat="server" CssClass="form-control" ></asp:TextBox>

                                        <span class="form-label">Telefon nummer</span>
                                        <asp:TextBox ID="PhoneNumberTbe" runat="server" CssClass="form-control" ></asp:TextBox>

                                        <span class="form-label">Cvr nummer</span>
                                        <asp:TextBox ID="CvrNumberTbe" runat="server" CssClass="form-control" ></asp:TextBox>

										<asp:Button CssClass="btn btn-success btn-lg" ID="ButtonEdit" runat="server" Text="Redigere" OnClick="ButtonEdit_Click" />
                                    </div>
										</ContentTemplate>
									</asp:UpdatePanel>
                                
                            </div>
                        </div>
                    </div>
                </div>
				<div class="panel panel-default">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><div class="panel-heading">
                        <h4 class="panel-title">
                            Slet Mægler
                        </h4>
                    </div></a>
                    <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">
							<div id="DivDeleteUser" class="jumbotron">

                                    <span class="form-label">Telefon nr</span>
                                    <asp:TextBox ID="DeleteTbd" runat="server" CssClass="form-control" ></asp:TextBox>
                                    <asp:Button CssClass="btn btn-danger" ID="ButtonDeleteUser" runat="server" Text="Slet Bruger" OnClick="ButtonDelete_Click" />

								</div>
                    </div>
                </div>
				</div>
                
    </form>

</asp:Content>