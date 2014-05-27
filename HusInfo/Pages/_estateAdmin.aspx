<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_estateAdmin.aspx.cs" Inherits="HusInfo.Pages._estateAdmin" %>


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

	th {
		text-align: left;
		border-bottom: solid 1px grey;
	}

	td {
		text-align: left;
		background-color: white;
	}

		td:nth-child(2) {
			border-left: 1px solid grey;
		}

	table {
		border: solid 1px grey;
		margin-bottom: 0px !important;
		border-collapse: inherit !important;
	}
</style>
<form id="form1" runat="server">
	<div class="panel-group" id="accordion2">
		<div class="panel panel-default">
			<a data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo2">
				<div class="panel-heading">
					<h4 class="panel-title">Opret Mægler
					</h4>
				</div>
			</a>
			<div id="collapseTwo2" class="panel-collapse collapse">
				<div class="panel-body">
						<span class="form-label">Brugernavn</span>
						<asp:textbox id="UsernameTb" runat="server" cssclass="form-control"></asp:textbox>

						<span class="form-label">Kodeord</span>
						<asp:textbox id="PasswordTb" runat="server" cssclass="form-control"></asp:textbox>

						<span class="form-label">Firma navn</span>
						<asp:textbox id="CompanyTb" runat="server" cssclass="form-control"></asp:textbox>

						<span class="form-label">Navn</span>
						<asp:textbox id="NameTb" runat="server" cssclass="form-control"></asp:textbox>

						<span class="form-label">Efternavn</span>
						<asp:textbox id="LastnameTb" runat="server" cssclass="form-control"></asp:textbox>

						<span class="form-label">Telefon nummer</span>
						<asp:textbox id="PhonenumberTb" runat="server" cssclass="form-control"></asp:textbox>

						<span class="form-label">Cvr nummer</span>
						<asp:textbox id="CvrNumberTb" runat="server" cssclass="form-control"></asp:textbox>

						<asp:button cssclass="btn btn-success btn-lg" id="ButtonCreate" runat="server" text="Opret" onclick="ButtonCreate_Click" />
					
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<a data-toggle="collapse" data-parent="#accordion2" href="#collapseThree2">
				<div class="panel-heading">
					<h4 class="panel-title">Ret Mægler
					</h4>
				</div>
			</a>
			<div id="collapseThree2" class="panel-collapse collapse">
				<div class="panel-body">
					<div id="DivEditUser" title="EditHouse">

						<asp:scriptmanager id="ScriptManager1" runat="server" />
						<asp:updatepanel runat="server" id="UpdatePanel1" updatemode="Conditional">
									<Triggers>
										<asp:AsyncPostBackTrigger ControlID="UpdateButton1" EventName="Click" />
									</Triggers>
									<ContentTemplate>
                                

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
                                   
										</ContentTemplate>
									</asp:updatepanel>

					</div>
				</div>
			</div>
		</div>
		<div class="panel panel-default">
			<a data-toggle="collapse" data-parent="#accordion2" href="#collapseFour2">
				<div class="panel-heading">
					<h4 class="panel-title">Slet Mægler
					</h4>
				</div>
			</a>
			<div id="collapseFour2" class="panel-collapse collapse">
				<div class="panel-body">

						<span class="form-label">Telefon nr</span>
						<asp:textbox id="DeleteTbd" runat="server" cssclass="form-control"></asp:textbox>
						<asp:button cssclass="btn btn-danger" id="ButtonDeleteUser" runat="server" text="Slet Bruger" onclick="ButtonDelete_Click" />

				</div>
			</div>
		</div>
</form>
