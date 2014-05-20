<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GiverOffer.aspx.cs" Inherits="HusInfo.Pages.GiverOffer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width; initial-scale=1.2; maximum-scale=1.0; user-scalable=no;" />
<meta name="MobileOptimized" content="width" />
<meta name="HandheldFriendly" content="true" />
    <link href="/Scripts/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="/Scripts/bootstrap/js/bootstrap.min.js"></script>

    <style>
        #back
        {
            width: 200px;
            margin: auto;
        }
        
        .kommentarTxt
        {
            resize: none;
            height: 200px;
            width: 200px;
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
    <div id="back">
    <asp:TextBox ID="price" placeholder="Indtast pris" runat="server"></asp:TextBox><br /><br />
        <asp:TextBox ID="comment" CssClass="kommentarTxt" placeholder="Indtast kommentar" runat="server" TextMode="MultiLine"></asp:TextBox><br />
        <asp:Button ID="giveOffer" runat="server" OnClick="giveOffer_Click" Text="Giv tilbud!"/>
    </div>
    </form>
</body>
</html>
