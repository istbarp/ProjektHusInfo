<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="HusInfo._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HusInfo</title>
    <meta name="viewport" content="width=device-width; initial-scale=1.2; maximum-scale=1.0; user-scalable=no;" />
<meta name="MobileOptimized" content="width" />
<meta name="HandheldFriendly" content="true" />
    <link href="/Scripts/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="/Scripts/bootstrap/js/bootstrap.min.js"></script>

    <style>
        body {
            width: 400px;
            margin: 50px auto;
            
        }

        #back {
            margin: auto;
            width: 100%;
            background-color: #FF7400;
        }
        
        #holder
        {
            width: 100%;
        }

        #adresseDiv
        {
            width: 90%;
            margin: auto;
            padding-top: 5%;
            padding-bottom: 0.5%;
        }
        #postnrDiv
        {   width: 90%;
            margin:auto;
            padding-bottom: 2%;
        }

        #hentData {
            width: 25%;
            margin: auto;
            padding-bottom: 5%;
        }

    </style>

    
</head>
<body>
    <form id="form1" runat="server">
        <div id="back">
            <div id="holder">
            <div id="adresseDiv">
                <asp:DropDownList ID="dropDownListBox" runat="server"></asp:DropDownList>
            <asp:TextBox ID="adresseTB" runat="server" Width="100%" placeholder="Indtast Adresse idiot"></asp:TextBox>
                </div>
            <div id="postnrDiv">
                <asp:TextBox ID="postnrTB" runat="server" Width="100%" placeholder="Indtast Post Nummer"></asp:TextBox>
                </div>
            <div id="hentData">
                <a class="btn btn-default" href="/Pages/HouseInformation.aspx">Hent Data</a>
            </div>
                </div>
        </div>
    </form>
</body>

</html>
