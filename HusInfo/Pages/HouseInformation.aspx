<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HouseInformation.aspx.cs" Inherits="HusInfo.Pages.HouseInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Scripts/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="/Scripts/bootstrap/js/bootstrap.min.js"></script>

    <style>
        body {
            width: auto;
            background-color: #FF7400;
        }

        #back {
            margin: auto;
            width: 800px;
            min-width: 800px;
        }

        .carousel {
            width: 800px;
            min-width: 800px;
            height: 450px;
            margin: auto;
        }

        .carousel-inner > .item > img {
            margin: 10px auto;
        }


        .wrapper {
            width: 800px;
            min-width: 800px;
            height: 55px;
            min-height: 55px;
            margin: auto auto -2px auto;
            border: 2px solid black;
            overflow: hidden;
        }

        .leftBp, .rightBp {
            float: left;
            width: 398px;
            min-width: 398px;
            height: 100%;
            background-color: grey;
            text-align: center;
        }


            .leftBp b {
                text-shadow: 1px 1px 1px black;
                color: white;
                font-size: 40px;
                
            }

            .rightBp span
            {
                text-shadow: 1px 1px 1px black;
                color: white;
                font-size: 40px;
                padding-top: 6px;
                font-weight: bold;
            }

            .panel-group
            {
                margin-top: 10px;
            }

            .panel-group .panel
            {
                border-radius: 5px !important;
                border: solid 2px !important;
            }

            .panel-title b
            {
                font-size: 35px;
                color: black !important;
            }

            #gotBackBtn
            {
                padding-bottom: 10px;
            }
            #goToRealEstate
            {
                margin-top: -56px;
                float: right;
                padding-bottom: 10px;
            }

            .btn-default
            {
                font-size: 30px;
            }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="back">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="6"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="7"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="8"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="9"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="10"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="11"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="12"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <%
						int id = int.Parse(Request.Form["houseSelect"]); 
						HusInfo.Controller.HouseCtr hCtr = new HusInfo.Controller.HouseCtr();
                        HusInfo.Model.House h = hCtr.GetHouse(id);
                        int i = 0;
                        foreach (var item in h.HousePic)
                       {
                            %>
                           
                     
                    <div class="<% if (i == 0) Response.Write("item active"); else Response.Write("item"); %>">
                        <img src="<% Response.Write(item.pictureFilename); %>" alt="..." />
                        <div class="carousel-caption">
                            Ydunsvej 7, 9800 Hjørring
                        </div>
                    </div>
 <% i++;
                       } %>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
            <img id="TestBillede" runat="server" />
            <div id="boligPris">
                <b style="text-shadow: 1px 1px 1px black; color: white; font-size: 40px">Villa</b>
                <div class="wrapper">
                    <div class="leftBp">
                        <b>Kontantpris</b>
                    </div>
                    <div class="rightBp">
                        <asp:label ID="CashPriceTB" runat="server"></asp:label>
                    </div>
                </div>
                <div class="wrapper">
                    <div class="leftBp">
                        <b>Kvm. pris</b>
                    </div>
                    <div class="rightBp">
                        <asp:label ID="KvmPriceTB" runat="server"></asp:label>
                    </div>
                </div>
                <div class="wrapper">
                    <div class="leftBp">
                        <b>Brutto/Netto</b>
                    </div>
                    <div class="rightBp">
                        <asp:label ID="BruttoNettoTB" runat="server"></asp:label>
                    </div>
                </div>

            </div>

            <!--Her er der collapsables -->
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <b>+ K3</b>
                            
                        </h4>
                    </div>
                        </a>
                    <div id="collapseOne" class="panel-collapse collapse">
                        <div class="panel-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <b>+ K2</b>
                            
                        </h4>
                    </div>
                        </a>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                        <div class="panel-heading">
                        <h4 class="panel-title">
                            <b>+ K1</b>
                            
                        </h4>
                            
                    </div>
                        </a>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
                 <div class="panel panel-default">
                     <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <b>+ K0</b>
                            
                        </h4>
                    </div>
                         </a>
                    <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
                 <div class="panel panel-default">
                     <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <b>+ UN</b>
                            
                        </h4>
                    </div>
                         </a>
                    <div id="collapseFive" class="panel-collapse collapse">
                        <div class="panel-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
            </div>

            <!--Knapper i footeren-->
            <div id="goBackBtn">
            <a href="/default.aspx" class="btn btn-default">Tilbage</a>
                </div>
            <div id="goToRealEstate">
                <a href="<% Response.Write(h.webLink); %>" class="btn btn-default" target="_blank">Gå til mægler</a>
            </div>
        </div>
    </form>
</body>
</html>
