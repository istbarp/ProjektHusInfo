<%@ Page Title="" Language="C#" MasterPageFile="~/Content.Master" AutoEventWireup="true" CodeBehind="giveOffer.aspx.cs" Inherits="HusInfo.Pages.giveOffer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContainerPlaceHolder" runat="server">

	<h3><%=c.problem %></h3>

	<form id="form1" runat="server">
    <div id="back">
    <asp:TextBox ID="price" placeholder="Indtast pris" runat="server"></asp:TextBox><br /><br />
        <asp:TextBox ID="comment" CssClass="kommentarTxt" placeholder="Indtast kommentar" runat="server" TextMode="MultiLine"></asp:TextBox><br />
        <asp:Button runat="server" OnClick="giveOffer_Click" Text="Giv tilbud!"/>
    </div>
    </form>

</asp:Content>
