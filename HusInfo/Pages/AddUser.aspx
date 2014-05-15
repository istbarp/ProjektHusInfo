<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="HusInfo.Pages.AddUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
        </div>

        <div id="dropdownEdit">
            <asp:Label ID="ELabelPersonType" runat="server" Text="PersonType"></asp:Label>
            &nbsp;&nbsp;
            <br />
            <asp:DropDownList ID="DropDownListType" runat="server" OnSelectedIndexChanged="DropDownListType_SelectedIndexChanged"></asp:DropDownList>
            <br />
        </div>

        <div id="NameDiv">
        <asp:Label ID="ELabelName" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="AddressTbe" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="LastnameDiv">
        <asp:Label ID="ELabelLastname" runat="server" Text="Lastname"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="UserNameDiv">
        <asp:Label ID="ELabelUserName" runat="server" Text="UserName"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="PasswordDiv">
        <asp:Label ID="ELabelPassword" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="CompanyDiv">
        <asp:Label ID="ELabelCompany" runat="server" Text="Company"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="PhoneDiv">
        <asp:Label ID="ELabelPhone" runat="server" Text="PhoneNumber"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="CVRDiv">
        <asp:Label ID="ELabelCVR" runat="server" Text="CVR"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </div>

        <div id="buttonAddUser">
        <asp:Button ID="ButtonAddUser" runat="server" Text="Tilføj Bruger" OnClick="ButtonAddUser_Click" />
        </div>

        </form>
</body>
</html>
