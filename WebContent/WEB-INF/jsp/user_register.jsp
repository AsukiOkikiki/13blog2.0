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
				<input type="hidden" id="sava_last_url" name="url" value="">
				<a id="user_login">登录</a>
			</form>
			&nbsp;&nbsp;
			<form id="register_form" method="post"
				action="<%=request.getContextPath()%>/nav/toRegister.do">
				<input type="hidden" id="sava_last_url" name="url" value="">
				<a id="user_register">注册</a>
			</form>
		</div>
	</div>
	<div class="user_login_register">
		<div class="register_menu">
			<h2>
				&nbsp;&nbsp;标注有<span class="register_point">&nbsp;*&nbsp;</span>为必填项
			</h2>
			<div class="input_list">
				<span class="register_list_name"><span class="register_point">*&nbsp;</span>账号：</span><input
					id="username" maxlength="16" class="register_input" type="text" name="username"><span
					id="username_right" class="register_input_right"></span>
			</div>
			<div class="input_list">
				<span class="register_list_name"><span class="register_point">*&nbsp;</span>密码：</span><input
					id="password" maxlength="16" class="register_input" type="password"
					name="password"><span
					id="password_right" class="register_input_right"></span>
			</div>
			<div class="input_list">
				<span class="register_list_name"><span class="register_point">*&nbsp;</span>确认密码
					：</span><input maxlength="16" id="checkPassword" class="register_input" type="password"
					name="checkPassword"><span
					id="checkPassword_right" class="register_input_right"></span>
			</div>
			<div class="input_list">
				<span class="register_list_name"><span class="register_point">*&nbsp;</span>昵称：</span><input
					id="uname" maxlength="16" class="register_input" type="text" name="uname"><span
					id="uname_right" class="register_input_right"></span>
			</div>
			<div class="input_list">
				<span class="register_list_name"><span class="register_point">*&nbsp;</span>QQ：</span><input
					id="qq" maxlength="16" class="register_input" type="text" name="qq"><span
					id="qq_right" class="register_input_right"></span>
			</div>
			<div class="input_list">
				<span class="register_list_name"><span class="register_point">*&nbsp;</span>E-mail：</span><input
					id="email" maxlength="16" class="register_input" type="text" name="email"><span
					id="email_right" class="register_input_right"></span>
			</div>
			<div class="input_list">
				<span class="register_list_name">&nbsp;&nbsp;性别：</span><select
					id="sex">
					<option value="男">男</option>
					<option value="女">女</option>
				</select>

			</div>
			<div class="input_list">
				<span class="register_list_name">&nbsp;&nbsp;电话号码：</span><input
					id="phone" maxlength="16" class="register_input" type="text" name="phone">
			</div>
			<div class="input_list">
				<span class="register_list_name"><span class="register_point">*&nbsp;</span>邀请码：</span><input
					id="invite" maxlength="9" class="register_input" type="text" name="invite">
					<span id="invite_right" class="register_input_right"></span>
			</div>
			<div id="register_submit">注册</div>
		</div>
	</div>
</body>
<script>
	
</script>
</html>