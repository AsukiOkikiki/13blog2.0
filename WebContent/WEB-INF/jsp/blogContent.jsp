<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="top.blogs.po.*,java.util.LinkedList,java.util.List"%>
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
	Blog blog = (Blog) request.getAttribute("blog");
	Blog blog2 = (Blog) request.getAttribute("blog2");
	List<User> userList = (LinkedList) request.getAttribute("userList");
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
		<div class="text_content">
			<div class="text_title">
				<h1><%=blog.getTitle()%></h1>
			</div>
			<a
				href="<%=request.getContextPath()%>/blog/findBlogByDate.do?date=<%=blog.getDate()%>"><div
					style="padding: 0" class="blog_time"><%=blog.getDate()%></div></a>
			<div style="padding: 0" class="blog_secondTitle">
				<%=blog.getSecondTitle()%></div>
			<div class="text_main"><%=blog.getText()%></div>
			<a
				href="<%=request.getContextPath()%>/blog/findBlogByType.do?type=<%=blog.getType()%>"><div
					style="margin: 0" class="blog_type"><%=blog.getType()%></div></a>
		</div>
	</div>
	<div class="comment_title">一些评论</div>
	<div class="write_comment">
		<div class="please_write">说点什么吧</div>
		<textarea id="comment" name="comment" type="text" maxlength="300"
			placeholder="请输入文字..（限300字）"></textarea>
		<input type="hidden" id="comment_bid" value="<%=blog.getId()%>">
		<%
			if (user == null) {
		%>
		<input type="hidden" id="check" value="0">
		<%
			} else {
		%>
		<input type="hidden" id="check" value="1">
		<%
			}
		%>
		<div class="write_comment_bt">评论</div>
	</div>
	<%
		if (blog2 != null && blog2.getComment().size() > 0) {
	%>
	<%
		for (int i = blog2.getComment().size() - 1; i >= 0; i--) {
				User author = userList.get(i);
	%>
	<div class="comment">
		<div class="comment_text">
			<div class="comment_user">
				<a href="#"><%=author.getUname()%></a>
			</div>
			<div class="comment_time"><%=blog2.getComment().get(i).getCdate()%>
			</div>
			<div class="comment_content"><%=blog2.getComment().get(i).getCcontent()%></div>
		</div>
	</div>
	<%
		}
		}
	%>
	<div class="modal">
		<span class="close">×</span> <img class="modal-content">
	</div>
</body>
</html>