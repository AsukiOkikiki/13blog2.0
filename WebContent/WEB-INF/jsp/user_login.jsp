<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="top.blogs.po.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>十三</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resource/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resource/js/jq.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resource/css/style.css"
	type="text/css">
</head>
<%
	String url = (String) request.getAttribute("url");
%>
<body>
	<div class="header">
		<div class="header_banner">
			<a class="header_a" href="<%=request.getContextPath()%>/index.jsp">
				<div class="header_link">
					<div class="header_link_index">HELLO</div>
				</div>
			</a> <a class="header_a"
				href="<%=request.getContextPath()%>/nav/index.do">
				<div class="header_link">
					<div class="header_link_index">BLOG</div>
				</div>
			</a> <a class="header_a"
				href="<%=request.getContextPath()%>/nav/photo.do">
				<div class="header_link">
					<div class="header_link_index">PHOTO</div>
				</div>
			</a>


			<!-- blog/other.do -->
			<a class="header_a" href="#">
				<div class="header_link">
					<div class="header_link_index">OTHER</div>
				</div>
			</a>


			<!-- blog/about.do -->
			<a class="header_a" href="#">
				<div class="header_link">
					<div class="header_link_index">ABOUT</div>
				</div>
			</a>
		</div>
		<div class="user_manage">
			<form id="login_form" method="post"
				action="<%=request.getContextPath()%>/nav/toLogin.do">
				<input type="hidden" method="post" id="sava_last_url" name="url" value="">
				<a id="user_login">登录</a>
			</form>
			&nbsp;&nbsp;
			<form id="register_form" method="post" action="<%=request.getContextPath()%>/nav/toRegister.do">
				<input type="hidden" id="sava_last_url" name="url" value="">
				<a id="user_register">注册</a>
			</form>
		</div>
	</div>
	<div class="user_login_menu">
		<form id="user_login_form"
			action="<%=request.getContextPath()%>/user/login.do" method="post">
			<div id="user_login_username">
				账号:&nbsp;&nbsp;<input id="username" name="username"
					class="user_input" type="text">
			</div>
			<div id="user_login_password">
				密码:&nbsp;&nbsp;<input id="password" name="password"
					class="user_input" type="password">&nbsp;&nbsp;&nbsp;&nbsp;<a
					class="forget_psw" href="#">忘记密码？</a>
			</div>
			<input type="hidden" id="last_url" name="url" value="<%=url%>">
			<div id="user_bt">
				<button id="user_login_bt">登录</button>
				<button id="user_register_bt">注册</button>
			</div>
		</form>
	</div>
</body>
</html>