<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="top.blogs.po.*,java.util.List,java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>十三</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resource/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resource/js/jq.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resource/css/style.css"
	type="text/css">
</head>
<%
	User user = (User) session.getAttribute("user");
	List<Photo> photoList = (ArrayList) request.getAttribute("photoList");
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
			<%
				if (user == null) {
			%>
			<form id="login_form" method="post"
				action="<%=request.getContextPath()%>/nav/toLogin.do">
				<input type="hidden" id="sava_last_url" name="url" value="">
				<a id="user_login">登录</a>
			</form>
			&nbsp;&nbsp;
			<form id="register_form" method="post" action="<%=request.getContextPath()%>/nav/toRegister.do">
				<input type="hidden" id="sava_last_url" name="url" value="">
				<a id="user_register">注册</a>
			</form>
			<%
				} else {
			%>
			<form action="">
				<a><%=user.getUname()%></a>, 欢迎您
			</form>
			&nbsp;&nbsp;
			<form id="user_logout_form"
				action="<%=request.getContextPath()%>/nav/logout.do">
				<a id="user_logout_bt">注销</a> <input type="hidden"
					id="logout_last_url" name="url" value="">
			</form>
			<%
				}
			%>
		</div>
	</div>
	<div class="content">
		<div class="inner_content">
			<%
				for (int i = 0; i < photoList.size(); i++) {
			%>
			<div class="photo_list">
				<img class="photo_list_src" src="<%=photoList.get(i).getUrl()%>"
					width="100%" height="100%">
			</div>
			<%
				}
			%>
		</div>
	</div>
	<div class="modal">
		<span class="close">×</span> <img class="modal-content">
	</div>
</body>
</html>