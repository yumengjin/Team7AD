﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PreviousRequisition.aspx.cs" Inherits="LogicUniv1._1.webpage.deptEmp.PreviousRequisition" %>

<!DOCTYPE html>

<html>
<head>
	
	<title>Logic Unviersity Stationery Inventory System</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="../css/templatemo_style.css" rel="stylesheet" type="text/css">	

    <!-- bootstrap -->
    <link href="../css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="../css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />
    <!-- libraries -->
    <link href="../css/lib/jquery-ui-1.10.2.custom.css" rel="stylesheet" type="text/css" />
    <link href="../css/lib/font-awesome.css" type="text/css" rel="stylesheet" />
    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="../css/compiled/layout.css">
    <link rel="stylesheet" type="text/css" href="../css/compiled/elements.css">
    <link rel="stylesheet" type="text/css" href="../css/compiled/icons.css">

    <!-- this page specific styles -->
    <link rel="stylesheet" href="../css/compiled/index.css" type="text/css" media="screen" />
    	<!-- scripts -->
    <script src="../js/jquery-1.11.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-ui-1.10.2.custom.min.js"></script>
    <!-- knob -->
    <script src="../js/jquery.knob.js"></script>
    <!-- flot charts -->
    <script src="../js/jquery.flot.js"></script>
    <script src="../js/jquery.flot.stack.js"></script>
    <script src="../js/jquery.flot.resize.js"></script>
    <script src="../js/theme.js"></script>
    <script>
        $(function () {
            var roleId = "<%= Session["userRole"]%>";

            if (roleId == 1) {
                document.getElementById("1").setAttribute("href", "../DeptHead/HeadHome.aspx");
            }
            if (roleId == 3) {
                document.getElementById("1").setAttribute("href", "../deptEmpRep/DepRepHome.aspx");
            }
            else {
                $("#1").remove();
            }
        });
    </script>

</head>
<body>
    <header class="navbar navbar-inverse" role="banner">
        <ul class="nav navbar-nav pull-right hidden-xs">
            <li class="hidden-xs hidden-sm">
                <input class="search" type="text" />
            </li>
            <li class="notification-dropdown hidden-xs hidden-sm">
                <a href="#" class="trigger">
                    <i class="icon-warning-sign"></i>
                    <span class="count">8</span>
                </a>
                <div class="pop-dialog">
                    <div class="pointer right">
                        <div class="arrow"></div>
                        <div class="arrow_border"></div>
                    </div>
                    <div class="body">
                        <a href="#" class="close-icon"><i class="icon-remove-sign"></i></a>
                        <div class="notifications">
                            <h3>你有6条信息</h3>
                            <a href="#" class="item">
                                <i class="icon-signin"></i> 新用户注册
                                <span class="time"><i class="icon-time"></i> 13分钟前.</span>
                            </a>
                            <a href="#" class="item">
                                <i class="icon-signin"></i> 新用户注册
                                <span class="time"><i class="icon-time"></i> 18分钟前.</span>
                            </a>
                            <a href="#" class="item">
                                <i class="icon-envelope-alt"></i> 新消息来自Alejandra
                                <span class="time"><i class="icon-time"></i> 28分钟前.</span>
                            </a>
                            <a href="#" class="item">
                                <i class="icon-signin"></i> 新用户注册
                                <span class="time"><i class="icon-time"></i> 49分钟前.</span>
                            </a>
                            <a href="#" class="item">
                                <i class="icon-download-alt"></i> 新订单
                                <span class="time"><i class="icon-time"></i> 1天前.</span>
                            </a>
                            <div class="footer">
                                <a href="#" class="logout">查看所有消息</a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="notification-dropdown hidden-xs hidden-sm">
                <a href="#" class="trigger">
                    <i class="icon-envelope"></i>
                </a>
                <div class="pop-dialog">
                    <div class="pointer right">
                        <div class="arrow"></div>
                        <div class="arrow_border"></div>
                    </div>
                    <div class="body">
                        <a href="#" class="close-icon"><i class="icon-remove-sign"></i></a>
                        <div class="messages">
                            <a href="#" class="item">
                                <img src="../img/contact-img.png" class="display" />
                                <div class="name">DEMO</div>
                                <div class="msg">
                                    回家来吃饭了.
                                </div>
                                <span class="time"><i class="icon-time"></i> 13分钟前.</span>
                            </a>
                            <a href="#" class="item">
                                <img src="../img/contact-img2.png" class="display" />
                                <div class="name">Galván</div>
                                <div class="msg">
                                    照片很不错哦.
                                </div>
                                <span class="time"><i class="icon-time"></i> 26分钟前.</span>
                            </a>
                            <a href="#" class="item last">
                                <img src="../img/contact-img.png" class="display" />
                                <div class="name">后台</div>
                                <div class="msg">
                                   模版很不错赶紧下载.
                                </div>
                                <span class="time"><i class="icon-time"></i> 48分钟前.</span>
                            </a>
                            <div class="footer">
                                <a href="#" class="logout">查看所有消息</a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle hidden-xs hidden-sm" data-toggle="dropdown">
                    你的账号
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="personal-info.html">个人信息</a></li>
                    <li><a href="#">账号设置</a></li>
                    <li><a href="#">账单</a></li>
                    <li><a href="#">导出数据</a></li>
                    <li><a href="#">发送反馈</a></li>
                </ul>
            </li>
            <li class="settings hidden-xs hidden-sm">
                <a href="personal-info.html" role="button">
                    <i class="icon-cog"></i>
                </a>
            </li>
            <li class="settings hidden-xs hidden-sm">
<a href="../LogoutPage.aspx" role="button">
                    <i class="icon-share-alt"></i>
                </a>
            </li>
        </ul>
    </header>

    
	<form id="form1" runat="server">
        
	<div class="templatemo-container">
<div class="col-lg-3 col-md-3 col-sm-3  black-bg left-container" id="leftlayer">
			<h1 class="logo-left hidden-xs margin-bottom-60" style="color:white">Logic</h1>			
			<div class="tm-left-inner-container">
				<ul class="nav nav-stacked templatemo-nav">
				  <li><a href="EmpHome.aspx"><i class="fa fa-home fa-medium"></i>Homepage</a></li>
				  <li><a href="PreviousRequisition.aspx" class="active"><i class="fa fa-shopping-cart fa-medium"></i>Previous Requisition</a></li>
				  <li><a href="CurrentRequisition.aspx"><i class="fa fa-send-o fa-medium"></i>Current Requisition</a></li>
				 <li><a id="1"><i class="fa fa-home fa-medium"></i>Back To WorkStation</a></li>
				</ul>
			</div>

		</div> <!-- left section -->
        <div class="copyrights">Collect from <a href="http://www.mycodes.net/" ></a></div>
  		<div class="col-lg-9 col-md-9 col-sm-9  white-bg right-container" id="rightlayer">

			<h1 class="logo-right hidden-xs margin-bottom-60">University</h1>
            
          
			<div class="tm-right-inner-container" style="padding-left:80px" >
                <div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                      <ContentTemplate>
                         <asp:ScriptManager ID="ScriptManager1" runat="server">
                          </asp:ScriptManager> 
                    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="762px" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" CssClass="table table-striped table-bordered table-condensed">
                        <Columns>
                            <asp:BoundField DataField="requisitionId" HeaderText="Requisition ID" />
                            <asp:BoundField DataField="requestDate" HeaderText="Requisition Date" />
                            <asp:BoundField DataField="status_dept" HeaderText="Status" />
                            <asp:CommandField HeaderText="Details" SelectText="Details" ShowSelectButton="True" />
                        </Columns>
                        <EditRowStyle Height="35px" />
                        <EmptyDataTemplate>
                           <asp:Button ID="Button1" runat="server" Text="Detail" />
                        </EmptyDataTemplate>
                        <HeaderStyle Height="35px" />
                   </asp:GridView>
                  </ContentTemplate>
            </asp:UpdatePanel>
				
                </div>
            </div>

				<footer>
					<p class="col-lg-3 col-md-3  templatemo-copyright">Copyright &copy; 2015 Logic University designed by NUS ISS SA 40 Team 7 </p>
					<p class="col-lg-9 col-md-9  templatemo-social">
						<a href="#"><i class="fa fa-facebook fa-medium"></i></a>
						<a href="#"><i class="fa fa-twitter fa-medium"></i></a>
						<a href="#"><i class="fa fa-google-plus fa-medium"></i></a>
						<a href="#"><i class="fa fa-youtube fa-medium"></i></a>
						<a href="#"><i class="fa fa-linkedin fa-medium"></i></a>
					</p>
				</footer>
			</div>
        </div>	
		<!-- right section -->
    </form>


<script>
    $(function () {
        console.log(window.innerHeight);
        var height = (window.innerHeight);
                console.log(height);
                document.getElementById("leftlayer").setAttribute("style", "height:" + height + "px");
                document.getElementById("rightlayer").setAttribute("style", "height:" + height + "px");
            });
</script>

</body>
    </html>
