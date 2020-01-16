<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1,
maximum-scale=1, user-scalable=no">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
 body{margin: 0}
 #top{background-image: url(images/bg.jpg);text-align: center;color: #fff}
 #footer{
 text-align: center;
 background-color: #eee;
 padding: 20px
 	
 }
</style>
</head>
<body>
<div id="top">
	<div class="container">
		<h1>学生信息管理系统</h1>
	</div>
</div>
<div id="form-info">
  
  
	<form action="login.do" class="form-horizontal" method="post" style="width: 400px;margin: 0 auto;padding-top: 15%">
		<div class="form-group has-feedback">
			<label class="control-label col-md-3">用户名：</label>
			<div class="col-md-9">
				<input type="text" name="userName" class="form-control "/>
				<span class="glyphicon glyphicon-user form-control-feedback"></span>
				
			</div>
		</div>
		<div class="form-group has-feedback">
			<label class="control-label col-md-3">密码：</label>
			<div class="col-md-9">
				<input type="password" name="userPwd" class="form-control"/>
				<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				
			</div>
		</div>
			<div class="form-group has-feedback">
			<label class="control-label col-md-3"></label>
			<div class="col-md-9">
				<label class="control-label col-md-2">
				
				</label>
				<button type="submit" class="btn btn-info col-md-4">登录</button>
				<label class="control-label col-md-2"></label>
				<button type="reset" class="btn btn-info col-md-4">取消</button>
			</div>
		</div>
	</form>
</div>
<div id="footer" class="text-muted">
	<p>企业培训 | 合作事宜 | 版权投诉</p>
		<p> ICP 备 12345678. © 2015-2010 蜗牛学院. Powered by
		Bootstrap.</p>
</div>

<script type="text/javascript"  src="js/jquery-1.12.3.min.js"></script>
<script type="text/javascript"  src="js/bootstrap.min.js"></script>
<script type="text/javascript">
		var de=document.documentElement.clientHeight-$("#top").height()-$("#footer").height();
		$("#form-info").height(de-40);
	
		$(window).resize(function(){
			
			var de=document.documentElement.clientHeight-$("#top").height()-$("#footer").height();
			$("#form-info").height(de-40);
		});
</script>
</body>
</html>