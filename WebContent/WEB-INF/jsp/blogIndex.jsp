<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="top.blogs.po.*,java.util.List,java.util.ArrayList"%>
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
	User user = (User) session.getAttribute("user");
	List<Blog> blogList = (ArrayList) request.getAttribute("blogList");
	List<String> typeList = (ArrayList) request.getAttribute("typeList");
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
			<form id="register_form" method="post"
				action="<%=request.getContextPath()%>/nav/toRegister.do">
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
			<div class="content_header">
				<div class="top"></div>
				<div class="title">
					<h1>不容易</h1>
				</div>
				<div class="header_heart"></div>
			</div>
			<div class="content_left">
				<%
					for (int i = blogList.size() - 1; i >= 0; i--) {
				%>
				<div class="blog">
					<div class="blog_title">
						<h1>
							<a
								href="<%=request.getContextPath()%>/blog/text.do?id=<%=blogList.get(i).getId()%>"><%=blogList.get(i).getTitle()%></a>
						</h1>
					</div>
					<div class="blog_time">
						<a id="blog-timecolor"
							href="<%=request.getContextPath()%>/blog/findBlogByDate.do?date=<%=blogList.get(i).getDate()%>"><%=blogList.get(i).getDate()%></a>
					</div>
					<div class="blog_secondTitle">
						<p><%=blogList.get(i).getSecondTitle()%></p>
					</div>
					<div class="blog_photo">
						<img class="the_photo" src="<%=blogList.get(i).getShowPhoto()%>">
					</div>
					<div class="blog_bottom">
						<a
							href="<%=request.getContextPath()%>/blog/findBlogByType.do?type=<%=blogList.get(i).getType()%>">
							<div class="blog_type">
								<p><%=blogList.get(i).getType()%></p>
							</div>
							<div class="blog_goon">
								<a
									href="<%=request.getContextPath()%>/blog/text.do?id=<%=blogList.get(i).getId()%>"
									class="btn">继续阅读</a>
							</div>
						</a>
					</div>
				</div>
				<%
					}
				%>
			</div>
			<div class="content_right">
				<div class="right_logo">
					<div class="logo_img"></div>
				</div>
				<div class="in_area">
					<form id="form1"
						action="<%=request.getContextPath()%>/blog/search.do" method="get">
						<input class="text_area" name="search" type="text"
							placeholder="你想要啥..">
						<div class="text_send">
							<img class="search_img"
								src="<%=request.getContextPath()%>/resource/photo/search87.png"
								height="80%">
						</div>
					</form>
				</div>
				<div class="tag_demo">
					<div class="taglist" id="tags">
						<%
							for (int i = 0; i < typeList.size(); i++) {
						%>
						<a
							href="<%=request.getContextPath()%>/blog/findBlogByType.do?type=<%=typeList.get(i)%>"><%=typeList.get(i)%></a>
						<%
							}
							int k = 0;
							for (int i = 0; i < blogList.size(); i++) {
								k++;
								if (k > 10) {
									break;
								}
								if (blogList.get(i).getTitle().length() > 10) {
									continue;
								}
						%>
						<a
							href="<%=request.getContextPath()%>/blog/text.do?id=<%=blogList.get(i).getId()%>"><%=blogList.get(i).getTitle()%></a>
						<%
							}
						%>
					</div>
				</div>
				<div class="blog_recent">
					<div class="blog_recent_inner">
						<h1 class="recent_title">近期</h1>
						<ul>
							<%
								if (blogList.size() > 3) {
									for (int i = blogList.size() - 1; i >= blogList.size() - 3; i--) {
							%>
							<a
								href="<%=request.getContextPath()%>/blog/text.do?id=<%=blogList.get(i).getId()%>"><li><%=blogList.get(i).getTitle()%></li></a>
							<%
								}
								} else {
									for (int i = blogList.size() - 1; i >= 0; i--) {
							%>
							<a
								href="<%=request.getContextPath()%>/blog/text.do?id=<%=blogList.get(i).getId()%>"><li><%=blogList.get(i).getTitle()%></li></a>
							<%
								}
								}
							%>
						</ul>
					</div>
				</div>
				<div class="blog_right_type">
					<div class="blog_type_inner">
						<h1 class="type_title">分类</h1>
						<ul>
							<%
								for (int i = 0; i < typeList.size(); i++) {
							%>
							<a
								href="<%=request.getContextPath()%>/blog/findBlogByType.do?type=<%=typeList.get(i)%>"><li><%=typeList.get(i)%></li></a>
							<%
								}
							%>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal">
		<span class="close">×</span> <img class="modal-content">
	</div>
</body>
</html>
