<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1,
maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Insert title here</title>
<style type="text/css">
	#top{
		background-image: url(images/bg.jpg);
		
	}

	.navbar-brand{color: #fff;font-weight: bold}
	#main{
		margin-top: 10px
	}
	.nav.nav-tabs.nav-stacked>li>a{
		padding: 10px 8px;
		font-size: 12px;
		font-weight: 600;

		color: #4A515B;
		background: #E9E9E9;
		background: -moz-linear-gradient(top, #FAFAFA 0%, #E9E9E9 100%);
		 
		border: 1px solid #D5D5D5;
 		border-radius: 4px; 
	}
	.nav.nav-tabs.nav-stacked>li.active>a,.nav.nav-tabs.nav-stacked>li>a:hover{
		color: #FFF;
		background: #3C4049;
		background: -moz-linear-gradient(top, #4A515B 0%, #3C4049 100%); 
		border-color: #2B2E33;
	}
	.secondmenu a{
		font-size: 12px;
 		color: #4A515B;
		text-align: left;
	
	}
	
	.test{
		background-color: black
 	}
</style>
</head>
<body>
<%
  if(session.getAttribute("userName")==null){
	  
	  response.sendRedirect("login.jsp");
  }

%>
<div class="navbar container-fluid" id="top">
	<div class="navbar-header">
		<a class="navbar-brand" href="#">
			学生信息管理系统
		</a>
		
	</div>
	<ul class="nav navbar-nav navbar-right">
		<li><a href="#" style="color:#fff"><span class="glyphicon glyphicon-home"></span>欢迎<%=session.getAttribute("userName")%>登录</a></li>
		<li><a href="exit.do" style="color:#fff"><span class="glyphicon glyphicon-list"></span>安全退出</a></li>
	</ul>
	
</div>
<div id="main">
<div class="container-fluid" >
	<div class="row">
		<div class="col-md-2">
			<ul class="nav nav-tabs nav-stacked" style="margin-top: -10px">
				<li class="active">
					<a href="#">
						<span class="glyphicon glyphicon-th-large"></span>首页
					</a>
				</li>
				<li>
					<a href="#first" data-toggle="collapse" class="nav-header collapsed">
						<span class="glyphicon glyphicon-cog"></span>系统管理
						<span class="pull-right glyphicon glyphicon-chevron-down"></span> 
					</a>
					<ul class="nav nav-list collapse in secondmenu" id="first">
						<li><a href="inStock.jsp" class="getUrl" target="#info-container" ><span class="glyphicon glyphicon-user"></span>用户管理</a></li>
						<li><a href="#" class="getUrl" target="#info-container"><span class="glyphicon glyphicon-user"></span>修改密码</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-user"></span>安全退出</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#second" data-toggle="collapse" class="nav-header collapsed">
						<span class="glyphicon glyphicon-cog"></span>基础信息管理
						<span class="pull-right glyphicon glyphicon-chevron-down"></span>
					</a>
					<ul class="nav nav-list collapse out secondmenu" id="second">
						<li><a href="" target="#info-container"><span class="glyphicon glyphicon-user"></span>班级管理</a></li>
						<li><a href="list.do"  target="ifs" ><span class="glyphicon glyphicon-user"></span>学生管理</a></li>

					</ul>
				</li>
			</ul>
		</div>
		<div class="col-md-10" style="margin-top: -10px">
			<iframe name="ifs" width="100%" height="100%"></iframe>
		</div>
	</div>
</div>
</div>
<script type="text/javascript"  src="js/jquery-1.12.3.min.js"></script>
<script type="text/javascript"  src="js/bootstrap.min.js"></script>
<script type="text/javascript"  src="js/gly.js"></script>
<script type="text/javascript">
	var de=document.documentElement.clientHeight-$(".navbar").height()-$("#footer").height();
	$(".col-md-10").height(de-50);

	$(window).resize(function(){
		var de=document.documentElement.clientHeight-$(".navbar").height()-$("#footer").height();
		$(".col-md-10").height(de-50);
		
	});
	
</script>
</body>
</html>